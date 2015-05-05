----------------------------------------
-- IBranch Predictor Module - Testbench : IITB-RISC-Superscalar
-- Author : Titto Thomas
-- Date : 4/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
  
end testbench;

architecture behave of testbench is

component BranchPredictor is
  port (
  	reset		: in std_logic;					-- Reset tables
	Instruction	: in std_logic_vector(15 downto 0); 		-- Instruction for predicting
	PC		: in std_logic_vector(15 downto 0); 		-- Program Counter
	PredictedResult	: out std_logic;		-- Decides to take or do not take the branch
	Address		: in std_logic_vector(15 downto 0);		-- AddressValid
	ActualResult	: in std_logic;
	AddressValid	: in std_logic
    );
end component BranchPredictor;

signal reset		: std_logic;					-- Reset tables
signal Instruction, PC	: std_logic_vector(15 downto 0);	
signal PredictedResult	: std_logic;		-- Decides to take or do not take the branch
signal Address		: std_logic_vector(15 downto 0);		-- AddressValid
signal ActualResult, AddressValid	: std_logic;

begin  -- behave

  DUT : BranchPredictor port map ( reset, Instruction, PC, PredictedResult, Address, ActualResult, AddressValid );		-- Connect the memory for testing

  RST : process -- reset signal
  begin
  reset <= '0';	
  wait for 1 ns;
  reset <= '1';	
  wait for 9 ns;
  reset <= '0';
  wait ;
  end process RST;


  Main : process	-- Main testbench process
  begin
	Instruction <= x"0000";
	PC <= x"0000";
	Address <= x"0000";
	ActualResult <= '0';
	AddressValid <= '0';
	wait for 20 ns;
	Instruction <= x"C02A";
	PC <= x"0005";
	wait for 10 ns;
	Instruction <= x"C00F";
	PC <= x"0008";
	wait for 10 ns;
	Instruction <= x"C032";
	PC <= x"0012";
	wait for 10 ns;
	Instruction <= x"B032";
	PC <= x"0013";
	Address <= x"0005";
	ActualResult <= '1';
	AddressValid <= '1';
	wait for 10 ns;
	Instruction <= x"C015";
	PC <= x"0022";
	Address <= x"0012";
	ActualResult <= '0';
	AddressValid <= '1';
	wait for 10 ns;
	Address <= x"0008";
	ActualResult <= '0';
	AddressValid <= '1';
	wait for 10 ns;
	Address <= x"0022";
	ActualResult <= '1';
	AddressValid <= '1';
	wait for 10 ns;
	AddressValid <= '0';
	wait;
  end process Main;

end behave;

