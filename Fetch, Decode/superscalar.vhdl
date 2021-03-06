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
	decoder_output 	: out std_logic_vector(93 downto 0)		-- Decoded output				-- 
    );
end superscalar;

architecture processor of superscalar is

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
