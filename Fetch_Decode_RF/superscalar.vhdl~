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
	instr_data	: in std_logic_vector(15 downto 0)
			-- Decoded output				-- 
    );
end superscalar;

architecture processor of superscalar is

component regfile is 
port (
 clock  : in std_logic;
   reset  : in std_logic;
   InA1    : in std_logic_vector(2 downto 0); 		--address for selecting A 
   InB1    : in std_logic_vector(2 downto 0); 		--address for selecting B 
   outA1  : out std_logic_vector(19 downto 0); 		--read the data , 1st operand
   outB1  : out std_logic_vector(19 downto 0);		--read the data , 2nd operand
   

   InA2    : in std_logic_vector(2 downto 0); 		--address for selecting A 
   InB2    : in std_logic_vector(2 downto 0); 		--address for selecting B 
   outA2  : out std_logic_vector(19 downto 0); 		--read the data , 1st operand
   outB2  : out std_logic_vector(19 downto 0);		--read the data , 2nd operand
   

   data_out_RRF  : in std_logic_vector(15 downto 0); 	--result from RRF-to update the RRF at the retire stage
   tag_field_RRF  : in std_logic_vector(2 downto 0); 	--serve as the write address identification
   WritEn_ROB : in std_logic; 				---enable for writing controlled by ROB
 
   -----tag update section----
   tag_in1 : in std_logic_vector(2 downto 0);
   tag_in2 : in std_logic_vector(2 downto 0);
   

   dest_addr1 : in std_logic_vector(2 downto 0);
   dest_addr2 : in std_logic_vector(2 downto 0);
   tag_en1 : in std_logic; 				---tag_en1 or tag_en2 ----
   tag_en2 : in std_logic 				----tag_enable 2 
 							----tag_enable 2 
);
   -----busy update section---
end component regfile;

component RRF is 
generic (
		  ADDR_WIDTH :integer := 8;
        DATA_WIDTH :integer := 16;
        TAG_WIDTH  :integer := 3
    );

    port (
        clk      	 :in  std_logic; 														-- Clock input
        rst      	 :in  std_logic; 														-- Active high reset
        tag_A1     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A1 input
        tag_B1     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B1 input
	tag_A2     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A2 input
        tag_B2     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B2 input
        data_RRFA1 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A1
        data_RRFB1 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B1
	data_RRFA2 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A2
        data_RRFB2 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B2
        tag_ROB    :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG from ROB input
        data_RRF   :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- corrusponding data 
        tag_in1    :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en1	 :in  std_logic; 														-- enable to assign new tag
	tag_in2    :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en2	 :in  std_logic; 														-- enable to assign new tag
	tag_data_in: in std_logic_vector (TAG_WIDTH+DATA_WIDTH-1 downto 0);-- new tag to be assigned
	tag_data_en: in std_logic;
	validA1 : out std_logic;
	validB1 : out std_logic;
	validA2 : out std_logic;
	validB2 : out std_logic 														-- enable to assign new data
    );
end component RRF;

component Renamer is 
port (
	clock : in std_logic;
	reset : in std_logic;				-- Reset the status
	dest_address1 : in std_logic_vector(2 downto 0);		-- Destination address from the instruction
	tag_out1 : out std_logic_vector(2 downto 0);		-- Tag that goes to ARF
	tag_out_en1 : out std_logic;				-- Write the tag to ARF
	dest_address2 : in std_logic_vector(2 downto 0);		-- Destination address from the instruction
	tag_out2 : out std_logic_vector(2 downto 0);		-- Tag that goes to ARF
	tag_out_en2 : out std_logic;				-- Write the tag to ARF
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

signal InA1, InB1, InA2, InB2 : std_logic_vector(2 downto 0);
signal outA1, outB1, outA2, outB2 : std_logic_vector(19 downto 0);
signal data_out_RRF : std_logic_vector(15 downto 0);
signal tag_field_RRF : std_logic_vector(2 downto 0);
signal WritEnROB : std_logic;
signal tag_in1, tag_in2 : std_logic_vector(2 downto 0);
signal dest_addr1, dest_addr2 : std_logic_vector(2 downto 0);
signal tag_en1, tag_en2 : std_logic;
signal tagA1, tagB1, tagA2, tagB2 : std_logic_vector(15 downto 0);
signal tag_A1, tag_B1, tag_A2, tag_B2 : std_logic_vector(2 downto 0);
signal busyA1, busyB1, busyA2, busyB2 : std_logic;
signal data_ARFA1, data_ARFB1, data_ARFA2, data_ARFB2 : std_logic_vector(15 downto 0);
signal muxvalA1_out, muxvalB1_out, muxvalA2_out, muxvalB2_out : std_logic_vector(15 downto 0);
signal muxARFA1_out, muxARFB1_out, muxARFA2_out, muxARFB2_out : std_logic_vector(15 downto 0);
signal tag_out1, tag_out2 : std_logic_vector(2 downto 0);
signal tag_out_en1, tag_out_en2 : std_logic;

signal  tag_rob_in, tag_rob : std_logic_vector(2 downto 0);
signal  rob_finish, no_tag_left, tag_data_en, validA1, validB1, validA2, validB2, writen_rob: std_logic;
signal data_RRFA1, data_RRFB1, data_RRFA2, data_RRFB2, tag_data_in, data_RRF: std_logic_vector(15 downto 0);


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




ARF : regfile port map(clock, reset, InA1, InB1, outA1, outB1, InA2, InB2, outA2, outB2, data_out_RRF, tag_field_RRF, WritEn_ROB, tag_in1, tag_in2, dest_addr1, dest_addr2, tag_en1, tag_en2);


tagA1 <= X"000" & '0' & outA1(19 downto 17);
tagB1 <= X"000" & '0' & outB1(19 downto 17);
tagA2 <= X"000" & '0' & outA2(19 downto 17);
tagB2 <= X"000" & '0' & outB2(19 downto 17);
tag_A1 <= outA1(19 downto 17);
tag_B1 <= outB1(19 downto 17);
tag_A2 <= outA2(19 downto 17);
tag_B2 <= outB2(19 downto 17);

busyA1 <= outA1(16);
busyB1 <= outB1(16);
busyA2 <= outA2(16);
busyB2 <= outB2(16);

data_ARFA1 <= outA1(15 downto 0);
data_ARFB1 <= outB1(15 downto 0);
data_ARFA2 <= outA2(15 downto 0);
data_ARFB2 <= outB2(15 downto 0);

muxvalA1 : mux2to1 generic map(16) port map(tagA1, data_RRFA1, muxvalA1_out, validA1);
muxvalB1 : mux2to1 generic map(16) port map(tagB1, data_RRFB1, muxvalB1_out, validB1);
muxvalA2 : mux2to1 generic map(16) port map(tagA2, data_RRFA2, muxvalA2_out, validA2);
muxvalB2 : mux2to1 generic map(16) port map(tagB2, data_RRFB2, muxvalB2_out, validB2);


muxARFA1 : mux2to1 generic map(16) port map(data_ARFA1, muxvalA1_out, muxARFA1_out, busyA1);
muxARFB1 : mux2to1 generic map(16) port map(data_ARFB1, muxvalB1_out, muxARFB1_out, busyB1);
muxARFA2 : mux2to1 generic map(16) port map(data_ARFA2, muxvalA2_out, muxARFA2_out, busyA2);
muxARFB2 : mux2to1 generic map(16) port map(data_ARFB2, muxvalB2_out, muxARFB2_out, busyB2);

tag_in1 <= tag_out1;
tag_in2 <= tag_out2;
tag_en1 <= tag_out_en1;
tag_en2 <= tag_out_en2;




DUT : Renamer port map ( clock, reset, dest_addr1, tag_out1, tag_out_en1, dest_addr2, tag_out2, tag_out_en2, tag_rob_in, rob_finish, no_tag_left);		-- Connect the memory for testing

data_out_RRF <= data_RRF;

RRF1: RRF generic map(8, 16, 3) port map(clock, reset, tag_A1, tag_B1, tag_A2, tag_B2, data_RRFA1, data_RRFB1, data_RRFA2, data_RRFB2, 
										 tag_ROB, data_RRF, tag_in1, tag_en1, tag_in2, tag_en2, tag_data_in, tag_data_en, validA1, validB1, validA2, validB2);
InA1 <= decode_regout (85 downto 83);
InB1 <= decode_regout(81 downto 79);
dest_addr1 <= decode_regout(89 downto 87);
InA2 <= decode_regout (38 downto 36);
InB2 <= decode_regout(34 downto 32);
dest_addr2 <= decode_regout(42 downto 40);

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

					 
					
					
				
	

end architecture processor;
