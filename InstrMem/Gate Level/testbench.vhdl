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

component InstrMem is		-- Instruction memory as a component
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

signal clock, write, read  : std_logic;
signal address, data_in  : std_logic_vector(15 downto 0);
signal data_out_1, data_out_2	: std_logic_vector(15 downto 0);

begin  -- behave

  DUT : InstrMem port map ( clock, write, read, address, data_in, data_out_1, data_out_2 );		-- Connect the memory for testing

  CLK : process -- clock signal
  begin
  clock <= '0';	
  wait for 5 ns;
  clock <= '1';
  wait for 5 ns;
  end process CLK;


  Main : process	-- Main testbench process
  begin
	address <= x"0000";
	data_in <= x"0000";
	write <= '0';
	read <= '0';
	wait for 10 ns;
	address <= x"8F14";
	data_in <= x"0100";
	write <= '1';
	wait for 10 ns;
	address <= x"8F15";
	data_in <= x"0101";
	wait for 10 ns;
	address <= x"690A";
	data_in <= x"ABCD";
	wait for 10 ns;
	address <= x"690B";
	data_in <= x"1234";
	wait for 10 ns;
	address <= x"0000";
	data_in <= x"1010";
	wait for 10 ns;
	address <= x"0001";
	data_in <= x"EF00";
	wait for 10 ns;
	write <= '0';
	wait for 20 ns;
	address <= x"0000";
	read <= '1';
	wait for 10 ns;
	address <= x"8F14";
	wait for 10 ns;
	address <= x"690A";
	wait for 10 ns;
	read <= '0';
	wait for 10 ns;
  end process Main;

end behave;

