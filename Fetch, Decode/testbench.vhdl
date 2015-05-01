----------------------------------------
-- Instruction Memory Module - Testbench : IITB-RISC-Superscalar
-- Author : Titto Thomas, Anakha VB
-- Date : 30/4/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
  
end testbench;

architecture behave of testbench is

component superscalar is
  port (
	clock		: in std_logic;                      		-- clock
	reset		: in std_logic;					-- reset signal
	program		: in std_logic;					-- to program the memory
	instr_address	: in std_logic_vector(15 downto 0);
	instr_data	: in std_logic_vector(15 downto 0);
	decoder_output 	: out std_logic_vector(93 downto 0)		-- Decoded output				-- 
    );
end component superscalar;

signal clock, reset, program : std_logic;
signal instr_address, instr_data : std_logic_vector(15 downto 0);
signal decoder_output 	: std_logic_vector(93 downto 0);

begin  -- behave

  DUT : superscalar port map ( clock, reset, program, instr_address, instr_data,  decoder_output);		-- Connect the processor for testing

  CLK : process -- clock signal
  begin
  clock <= '0';	
  wait for 10 ns;
  clock <= '1';
  wait for 10 ns;
  end process CLK;


  Main : process	-- Main testbench process
  begin
	reset <= '1';
	program <= '1';
	instr_address <= x"0000";
	instr_data <= x"0460";
	wait for 20 ns;
	instr_address <= x"0001";
	instr_data <= x"0462";
	wait for 20 ns;
	instr_address <= x"0002";
	instr_data <= x"0461";
	wait for 20 ns;
	instr_address <= x"0003";
	instr_data <= x"1447";
	wait for 20 ns;
	instr_address <= x"0004";
	instr_data <= x"2460";
	wait for 20 ns;
	instr_address <= x"0005";
	instr_data <= x"2462";
	wait for 20 ns;
	instr_address <= x"0006";
	instr_data <= x"2461";
	wait for 20 ns;
	instr_address <= x"0007";
	instr_data <= x"341F";
	wait for 20 ns;
	instr_address <= x"0008";
	instr_data <= x"4447";
	wait for 20 ns;
	instr_address <= x"0009";
	instr_data <= x"5447";
	wait for 20 ns;
	instr_address <= x"000A";
	instr_data <= x"64FF";
	wait for 20 ns;
	instr_address <= x"000B";
	instr_data <= x"74FF";
	wait for 20 ns;
	instr_address <= x"000C";
	instr_data <= x"C447";
	wait for 20 ns;
	instr_address <= x"000D";
	instr_data <= x"84FF";
	wait for 20 ns;
	instr_address <= x"000E";
	instr_data <= x"9440";
	wait for 20 ns;
	reset <= '0';
	program <= '0';
	wait;
  end process Main;

end behave;

