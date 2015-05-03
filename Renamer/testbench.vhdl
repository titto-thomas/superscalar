----------------------------------------
-- Register renamer Module - Testbench : IITB-RISC-Superscalar
-- Author : Titto Thomas, Anakha VB
-- Date : 30/4/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
  
end testbench;

architecture behave of testbench is

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

signal clock, reset, tag_out_en1, tag_out_en2, rob_finish, no_tag_left : std_logic;
signal dest_address1, tag_out1, dest_address2, tag_out2, tag_rob_in : std_logic_vector(2 downto 0);

begin  -- behave

  DUT : Renamer port map ( clock, reset, dest_address1, tag_out1, tag_out_en1, dest_address2, tag_out2, tag_out_en2, tag_rob_in, rob_finish, no_tag_left);		-- Connect the memory for testing

  CLK : process -- clock signal
  begin
  clock <= '0';	
  wait for 5 ns;
  clock <= '1';
  wait for 5 ns;
  end process CLK;

  Main : process	-- Main testbench process
  begin
	reset <= '1';
	dest_address1 <= "000";
	dest_address2 <= "000";
	tag_rob_in <= "000";
	rob_finish <= '0';
	wait for 10 ns;
	reset <= '0';
	dest_address1 <= "000";
	dest_address2 <= "111";
	wait for 10 ns;
	dest_address1 <= "010";
	dest_address2 <= "010";
	wait for 10 ns;
	dest_address1 <= "110";
	dest_address2 <= "001";
	wait for 10 ns;
	dest_address1 <= "001";
	dest_address2 <= "110";
	wait for 10 ns;
	dest_address1 <= "111";
	dest_address2 <= "000";
	wait for 10 ns;
	dest_address1 <= "100";
	wait for 10 ns;
	dest_address2 <= "011";
	wait for 10 ns;
	dest_address1 <= "101";
	wait for 10 ns;
	dest_address2 <= "110";
	wait for 10 ns;
	dest_address1 <= "010";
	dest_address2 <= "010";
	tag_rob_in <= "111";
	rob_finish <= '1';
	wait for 10 ns;
	dest_address2 <= "010";
	rob_finish <= '0';
	wait for 10 ns;
	dest_address1 <= "010";
	tag_rob_in <= "111";
	rob_finish <= '1';
	wait for 60 ns;
  end process Main;

end behave;

