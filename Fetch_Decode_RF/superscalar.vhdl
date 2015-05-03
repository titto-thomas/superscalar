----------------------------------------
-- Superscalar (Fetch, Decode) : IITB-RISC-Superscalar
-- Author : Titto Thomas, Anakha VB
-- Date : 1/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity superscalar is
  port (
	clock		: in std_logic;                      		-- clock
	reset		: in std_logic;					-- reset signal
	program		: in std_logic;					-- to program the memory
	instr_address	: in std_logic_vector(15 downto 0);
	instr_data	: in std_logic_vector(15 downto 0);
	--decoder_output 	: out std_logic_vector(93 downto 0)		-- Decoded output				-- 
    );
end superscalar;

architecture processor of superscalar is

component regfile is 

port (
   clock  : in std_logic;
   reset  : in std_logic;
   InA    : in std_logic_vector(2 downto 0); --address for selecting A 
   InB    : in std_logic_vector(2 downto 0); --address for selecting B 
   outA  : out std_logic_vector(19 downto 0); --read the data , 1st operand
   outB  : out std_logic_vector(19 downto 0);--read the data , 2nd operand
   
   

   data_out_RRF  : in std_logic_vector(15 downto 0); --result from RRF-to update the RRF at the retire stage
   tag_field_RRF  : in std_logic_vector(2 downto 0); --serve as the write address identification
   WritEn_ROB : in std_logic; ---enable for writing controlled by ROB
 
   -----tag update section----
   tag_in : in std_logic_vector(2 downto 0);
   dest_addr : in std_logic_vector(2 downto 0);
   tag_en : in std_logic;
   -----busy update section---
   busy_renamer : in std_logic --given by renamer logic
);

end component regfile;

component RRF is 
generic (
		  ADDR_WIDTH :integer := 8;
        DATA_WIDTH :integer := 16;
        TAG_WIDTH  :integer := 3
    );
    port (
        clock      :in  std_logic; -- Clock input
        reset      :in  std_logic; -- Active high reset

        tag_A    :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG_A input
        tag_B    :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG_A input
        data_RRFA:out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output for TAG_A
        data_RRFB:out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output for TAG_B

        tag_ROB  :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG from ROB input
        data_RRF :out std_logic_vector (DATA_WIDTH-1 downto 0); -- corrusponding data 

        tag_in   :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- new tag to be assigned
        tag_en	 :in  std_logic; -- enable to assign new tag
	
	tag_data_in: in std_logic_vector (TAG_WIDTH+DATA_WIDTH-1 downto 0); -- new tag to be assigned
	tag_data_en:in  std_logic -- enable to assign new data
    );
end component RRF;

component Renamer is 
port (
	clock : in std_logic;
	reset : in std_logic;					-- Reset the status
	dest_address : in std_logic_vector(2 downto 0);		-- Destination address from the instruction
	tag_out : out std_logic_vector(2 downto 0);		-- Tag that goes to ARF
	tag_out_en : out std_logic;				-- Write the tag to ARF
	tag_rob_in : in std_logic_vector(2 downto 0);		-- Tag from the ROB when it finishes
	rob_finish : in std_logic;				-- ROB is done with a particular tag
	no_tag_left : out std_logic				-- No free tags left
    );
end component Renamer;

component mux2to1 is
  generic (
    nbits : integer);

  port (
    input0 : in  std_logic_vector(nbits-1 downto 0);
    input1 : in  std_logic_vector(nbits-1 downto 0);
    output : out std_logic_vector(nbits-1 downto 0);
    sel    : in  std_logic);

end component mux2to1;

component InstrMem is			-- Instruction Memory module
  port (
	clock		: in  std_logic;                      		-- clock
	write		: in  std_logic;				-- write to the memory
	read		: in  std_logic;				-- read from the memory
	address		: in  std_logic_vector(15 downto 0);		-- address of the memory being read
	data_in		: in  std_logic_vector(15 downto 0);  		-- data input
	data_out_1	: out  std_logic_vector(15 downto 0); 		-- data output 1
	data_out_2	: out  std_logic_vector(15 downto 0)  		-- data output 2
    );
end component InstrMem;

component reg is			-- General sized register
	generic (
		size : integer
	);
	port (
	    reg_in	: in  std_logic_vector(size-1 downto 0);	-- register input
	    reg_out	: out std_logic_vector(size-1 downto 0);	-- register output
	    clock	: in  std_logic;			-- clock signal
	    write	: in  std_logic;			-- write enable signal
	    reset	: in  std_logic				-- reset signal
	);
end component reg;

component Decoder is			-- Decoder module
  port (
	Instruction	: in std_logic_vector(15 downto 0); 		-- Instruction for decoding
	PC		: in std_logic_vector(15 downto 0); 		-- Program Counter
	Decode_out	: out std_logic_vector(46 downto 0)		-- Decoder output
    );
end component Decoder;

signal PC, PCP1, PC_out, PCP1_out : std_logic_vector(15 downto 0);
signal add_mux_out : std_logic_vector(15 downto 0);
signal instr_out_1, instr_out_2 : std_logic_vector(15 downto 0);
signal fetch_in, fetch_out : std_logic_vector(63 downto 0);
signal decoder1_out, decoder2_out : std_logic_vector(46 downto 0);
signal not_program : std_logic;
signal decode_regout, decoder_output : std_logic_vector(93 downto 0);
begin

not_program <= (not program);
Programming_Mux : mux2to1 generic map (16) port map(PC, instr_address, add_mux_out, program );
Instruction_Memory : InstrMem port map(clock, program, not_program , add_mux_out, instr_data, instr_out_1, instr_out_2);

PCreg : reg generic map(16) port map (PC, PC_out, clock, '1', reset);
PCPreg : reg generic map(16) port map (PCP1, PCP1_out, clock, '1', reset);

fetch_in <= (instr_out_1 & PC_out & instr_out_2 & PCP1_out);
Fetch_pipeline_reg : reg generic map(64) port map (fetch_in, fetch_out, clock, '1', reset);

Decoder_module1 : Decoder port map(fetch_out(63 downto 48), fetch_out(47 downto 32), decoder1_out );
Decoder_module2 : Decoder port map(fetch_out(31 downto 16), fetch_out(15 downto 0), decoder2_out );

decoder_output <= decoder1_out & decoder2_out;
decode_reg: reg generic map(94) port map(decoder_output, decode_regout, clock, '1', reset);




ARF : regfile port map(clock, reset, InA, InB, outA, outB, data_out_RRF, tag_field_RRF, WritEn_ROB, tag_in, dest_addr, tag_en, busy_renamer);
tag_A <= outA(19 downto 17);
tag_B <= outB(19 downto 17);
data_out_RRF<= data_RRF ;
tag_field_RRF <= tag_ROB;
dest_address <= dest_addr;
tag_in <= tag_out;
tag_en <= tag_out_en;
----busy renamer should come from renamer block and is not mapped still-----
RRF1: RRF generic map(8, 16, 3) port map(clock, reset, tag_A, tag_B, data_RRFA, data_RRFB, tag_ROB, 						 data_RRF, tag_in, tag_en, tag_data_in, tag_data_en);
renamer1 : Renamer port map ( clock, reset, dest_address, tag_out, tag_out_en, tag_rob_in, rob_finish, no_tag_left); 
	update_pc : process (clock, reset)
	begin
		if clock'event and clock = '1' then
			if reset = '1' then
				PC <= x"0000";
				PCP1 <= x"0001";
			else
				PC <= std_logic_vector(unsigned(PC)+2);
				PCP1 <= std_logic_vector(unsigned(PCP1)+2);
			end if;
		end if;
	end process;
	
	dispatch: process(clock, reset)
	begin
		if clock'event and clock = '1' then
			if reset='1' then 
				decode_regout => (others=>'0');
			else 		
				for i in 0 to 1 loop 
					if (i =0 ) then 
					 InA <= decode_regout (85 downto 83);
					 InB <= decode_regout(81 downto 79);
					 dest_addr <= decode_regout(89 downto 87);
					elsif(i=1) then
					 InA <= decode_regout (38 downto 36);
					 InB <= decode_regout(34 downto 32);
					 dest_addr <= decode_regout(42 downto 40);
					end if;
				end loop;
			end if;
		end if;
	end process;
	

end architecture processor;
