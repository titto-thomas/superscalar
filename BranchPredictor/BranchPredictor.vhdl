----------------------------------------
-- Branch Predictor Module : IITB-RISC-Superscalar
-- Author : Titto Thomas
-- Date : 4/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BranchPredictor is
  port (
  	reset		: in std_logic;					-- Reset tables
	Instruction	: in std_logic_vector(15 downto 0); 		-- Instruction for predicting
	PC		: in std_logic_vector(15 downto 0); 		-- Program Counter
	PredictedResult	: out std_logic;		-- Decides to take or do not take the branch
	Address		: in std_logic_vector(15 downto 0);		-- AddressValid
	ActualResult	: in std_logic;
	AddressValid	: in std_logic
    );
end BranchPredictor;

architecture Predict of BranchPredictor is

Type Table is array (15 downto 0) of std_logic_vector(17 downto 0);	-- History bits & PC
signal BranchTable : Table; 
signal TableBusy : std_logic_vector(15 downto 0);

Type Counter is array (15 downto 0) of integer range 0 to 16;	-- For LRU

begin

	Predictor : process(reset, Instruction, PC)
	variable success : std_logic := '0';
	variable count : Counter;
	variable lowest : integer range 0 to 15;
	begin
		if reset = '1' then
			PredictedResult <= '0';
			TableBusy <= x"0000";
			for i in 0 to 15 loop
				BranchTable(i) <= "00" & x"0000";
				count (i) := 0;
			end loop;
		elsif Instruction(15 downto 12) = x"C" then
			success := '0';
			for i in 0 to 15 loop
				if ( BranchTable(i)(15 downto 0) = PC ) and ( TableBusy(i) = '1' ) then
					PredictedResult <=  BranchTable(i)(15);
					success := '1';
					count (i) := count (i) + 1;
				end if;				
			end loop;
			if success = '0' then
				for i in 0 to 15 loop
					if ( TableBusy(i) = '0' ) then
						TableBusy(i) <= '1';
						count (i) := 1;
						if ( Instruction(5) = '1') then
							BranchTable(i) <= "01" & PC;
							PredictedResult <=  '1';
						else
							BranchTable(i) <= "10" & PC;
							PredictedResult <=  '0';
						end if;
						exit;
					elsif (i = 15 and TableBusy(i) = '1') then
						lowest := 0;
						for i in 0 to 15 loop
							if ( count(i) <= count(lowest) ) then
								lowest := i;
							end if;		
							count (i) := count (i) - 1;		
						end loop;
						TableBusy(lowest) <= '1';
						count (lowest) := 1;
						if ( Instruction(5) = '1') then
							BranchTable(lowest) <= "01" & PC;
							PredictedResult <=  '1';
						else
							BranchTable(lowest) <= "10" & PC;
							PredictedResult <=  '0';
						end if;
					end if;				
				end loop;
			end if;
		end if;
	end process Predictor;
	
	Updater : process(reset, Address, ActualResult, AddressValid)
	begin
		if reset = '0' then
			if AddressValid = '1' then
				for i in 0 to 15 loop
					if ( Address = BranchTable(i)(15 downto 0) ) and ( TableBusy(i) = '1' ) then
						if BranchTable(i)(17 downto 16) = "00" then
							if ActualResult = '1' then
								BranchTable(i)(17 downto 16) <= "01";
							else
								BranchTable(i)(17 downto 16) <= "00";
							end if;
						elsif BranchTable(i)(17 downto 16) = "01" then
							if ActualResult = '1' then
								BranchTable(i)(17 downto 16) <= "11";
							else
								BranchTable(i)(17 downto 16) <= "00";
							end if;
						elsif BranchTable(i)(17 downto 16) = "10" then
							if ActualResult = '1' then
								BranchTable(i)(17 downto 16) <= "11";
							else
								BranchTable(i)(17 downto 16) <= "00";
							end if;
						else
							if ActualResult = '1' then
								BranchTable(i)(17 downto 16) <= "11";
							else
								BranchTable(i)(17 downto 16) <= "10";
							end if;
						end if;
					end if;				
				end loop;
			end if;
		end if;
	end process Updater;
end architecture Predict;
