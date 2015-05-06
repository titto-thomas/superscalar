----------------------------------------
-- ALU Module - Testbench : IITB-RISC-Superscalar
-- Author : Titto Thomas
-- Date : 5/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
  
end testbench;

architecture behave of testbench is

component ALU is
  port (
    	Input	: in std_logic_vector(80 downto 0);		-- Input from the buffer
    	Output	: out std_logic_vector(85 downto 0);		-- Output to ROB
    	Out_en	: out std_logic;				-- Output enable to ROB
    	Tag_out	: out std_logic_vector(2 downto 0);		-- Tag bus
    	Tag_data: out std_logic_vector(15 downto 0);		-- Tag bus data
    	Tag_en	: out std_logic					-- Tag bus en
	);
end component ALU;

signal Input	: std_logic_vector(80 downto 0);		-- Input from the buffer
signal Output	: std_logic_vector(85 downto 0);		-- Output to ROB
signal Out_en	: std_logic;				-- Output enable to ROB
signal Tag_out	: std_logic_vector(2 downto 0);		-- Tag bus
signal Tag_data	: std_logic_vector(15 downto 0);		-- Tag bus data
signal Tag_en	: std_logic;					-- Tag bus en

begin  -- behave

  DUT : ALU port map ( Input, Output, Out_en, Tag_out, Tag_data, Tag_en );		-- Connect the memory for testing

  Main : process	-- Main testbench process
  begin
  	Input <= x"1" & x"ABCD" & '1' & x"F" & "010" & x"1265" & '1' & x"3490" & '1' & '1' & '1' & '1' & '0' & "00" & "000000000" & x"1";
	wait for 20 ns;
	Input <= x"1" & x"ABCD" & '1' & x"0" & "010" & x"1265" & '1' & x"3490" & '1' & '1' & '1' & '1' & '0' & "00" & "000000000" & x"1";
	wait for 20 ns;
	Input <= x"1" & x"0976" & '1' & x"2" & "110" & x"37EF" & '1' & x"5678" & '1' & '1' & '1' & '1' & '0' & "00" & "000001000" & x"1";
	wait for 20 ns;
	Input <= x"1" & x"A456" & '1' & x"1" & "101" & x"1000" & '1' & x"0000" & '0' & '1' & '1' & '1' & '0' & "00" & "000000011" & x"1";
	wait for 20 ns;
	wait;
  end process Main;

end behave;

