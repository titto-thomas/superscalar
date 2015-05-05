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
  	clock		: in std_logic;	
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

signal write_table : std_logic_vector(17 downto 0);
signal write_table_en : std_logic;
signal write_loc : integer range 0 to 15;
begin

	Predictor : process(reset, Instruction, PC)
	variable success : std_logic := '0';
	variable count : Counter;
	variable lowest,free_loc : integer range 0 to 15;
	begin
		if reset = '1' then
			PredictedResult <= '0';
			TableBusy <= x"0000";
			count  := (others => 0);
		elsif Instruction(15 downto 12) = x"C" then			
			if ( BranchTable(0)(15 downto 0) = PC ) and ( TableBusy(0) = '1' ) then
				PredictedResult <=  BranchTable(0)(15);
				count (0) := count (0) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(1)(15 downto 0) = PC ) and ( TableBusy(1) = '1' ) then
				PredictedResult <=  BranchTable(1)(15);
				count (1) := count (1) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(2)(15 downto 0) = PC ) and ( TableBusy(2) = '1' ) then
				PredictedResult <=  BranchTable(2)(15);
				count (2) := count (2) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(3)(15 downto 0) = PC ) and ( TableBusy(3) = '1' ) then
				PredictedResult <=  BranchTable(3)(15);
				count (3) := count (3) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(4)(15 downto 0) = PC ) and ( TableBusy(4) = '1' ) then
				PredictedResult <=  BranchTable(4)(15);
				count (4) := count (4) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(5)(15 downto 0) = PC ) and ( TableBusy(5) = '1' ) then
				PredictedResult <=  BranchTable(5)(15);
				count (5) := count (5) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(6)(15 downto 0) = PC ) and ( TableBusy(6) = '1' ) then
				PredictedResult <=  BranchTable(6)(15);
				count (6) := count (6) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(7)(15 downto 0) = PC ) and ( TableBusy(7) = '1' ) then
				PredictedResult <=  BranchTable(7)(15);
				count (7) := count (7) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(8)(15 downto 0) = PC ) and ( TableBusy(8) = '1' ) then
				PredictedResult <=  BranchTable(8)(15);
				count (8) := count (8) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(9)(15 downto 0) = PC ) and ( TableBusy(9) = '1' ) then
				PredictedResult <=  BranchTable(9)(15);
				count (9) := count (9) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(10)(15 downto 0) = PC ) and ( TableBusy(10) = '1' ) then
				PredictedResult <=  BranchTable(10)(15);
				count (10) := count (10) + 1;
				write_table_en <= '0';
			elsif ( BranchTable(11)(15 downto 0) = PC ) and ( TableBusy(11) = '1' ) then
				PredictedResult <=  BranchTable(11)(15);
				count (11) := count (11) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(12)(15 downto 0) = PC ) and ( TableBusy(12) = '1' ) then
				PredictedResult <=  BranchTable(12)(15);
				count (12) := count (12) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(13)(15 downto 0) = PC ) and ( TableBusy(13) = '1' ) then
				PredictedResult <=  BranchTable(13)(15);
				count (13) := count (13) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(14)(15 downto 0) = PC ) and ( TableBusy(14) = '1' ) then
				PredictedResult <=  BranchTable(14)(15);
				count (14) := count (14) + 1;
				write_table_en <= '0';	
			elsif ( BranchTable(15)(15 downto 0) = PC ) and ( TableBusy(15) = '1' ) then
				PredictedResult <=  BranchTable(15)(15);
				count (15) := count (15) + 1;
				write_table_en <= '0';	
			else	
				write_table_en <= '1';
				if TableBusy /= x"F" then
					free_loc := 0;
					if TableBusy(0) = '0' then
						free_loc := 0;
					elsif TableBusy(1) = '0' then
						free_loc := 1;
					elsif TableBusy(2) = '0' then
						free_loc := 2;
					elsif TableBusy(3) = '0' then
						free_loc := 3;
					elsif TableBusy(4) = '0' then
						free_loc := 4;
					elsif TableBusy(5) = '0' then
						free_loc := 5;
					elsif TableBusy(6) = '0' then
						free_loc := 6;
					elsif TableBusy(7) = '0' then
						free_loc := 7;
					elsif TableBusy(8) = '0' then
						free_loc := 8;
					elsif TableBusy(9) = '0' then
						free_loc := 9;
					elsif TableBusy(10) = '0' then
						free_loc := 10;
					elsif TableBusy(11) = '0' then
						free_loc := 11;
					elsif TableBusy(12) = '0' then
						free_loc := 12;
					elsif TableBusy(13) = '0' then
						free_loc := 13;
					elsif TableBusy(14) = '0' then
						free_loc := 14;
					elsif TableBusy(15) = '0' then
						free_loc := 15;
					end if;
					
					TableBusy(free_loc) <= '1';
					count (free_loc) := 1;
					if ( Instruction(5) = '1') then
						write_table <= "01" & PC;
						PredictedResult <=  '1';
					else
						write_table <= "10" & PC;
						PredictedResult <=  '0';
					end if;
					write_loc <= free_loc;
					
				else
					lowest := 0;
					if TableBusy(0) = '1' then
						count(0) := count(0)-1;
					end if;
					if TableBusy(1) = '1' then
						count(1) := count(1)-1;
						if (BranchTable(1) <= BranchTable(lowest)) or (TableBusy(0) = '0') then
							lowest := 1;
						end if;
					end if;
					if TableBusy(2) = '1' then
						count(2) := count(2)-1;
						if (BranchTable(2) <= BranchTable(lowest)) or (TableBusy(1 downto 0) = "00") then
							lowest := 2;
						end if;
					end if;
					if TableBusy(3) = '1' then
						count(3) := count(3)-1;
						if (BranchTable(3) <= BranchTable(lowest)) or (TableBusy(2 downto 0) = "000") then
							lowest := 3;
						end if;
					end if;
					if TableBusy(4) = '1' then
						count(4) := count(4)-1;
						if (BranchTable(4) <= BranchTable(lowest)) or (TableBusy(3 downto 0) = "0000") then
							lowest := 4;
						end if;
					end if;
					if TableBusy(5) = '1' then
						count(5) := count(5)-1;
						if (BranchTable(5) <= BranchTable(lowest)) or (TableBusy(4 downto 0) = "00000") then
							lowest := 5;
						end if;
					end if;
					if TableBusy(6) = '1' then
						count(6) := count(6)-1;
						if (BranchTable(6) <= BranchTable(lowest)) or (TableBusy(5 downto 0) = "000000") then
							lowest := 6;
						end if;
					end if;
					if TableBusy(7) = '1' then
						count(7) := count(7)-1;
						if (BranchTable(7) <= BranchTable(lowest)) or (TableBusy(6 downto 0) = "0000000") then
							lowest := 7;
						end if;
					end if;
					if TableBusy(8) = '1' then
						count(8) := count(8)-1;
						if (BranchTable(8) <= BranchTable(lowest)) or (TableBusy(7 downto 0) = "00000000") then
							lowest := 8;
						end if;
					end if;
					if TableBusy(9) = '1' then
						count(9) := count(9)-1;
						if (BranchTable(9) <= BranchTable(lowest)) or (TableBusy(8 downto 0) = "000000000") then
							lowest := 9;
						end if;
					end if;
					if TableBusy(10) = '1' then
						count(10) := count(10)-1;
						if (BranchTable(10) <= BranchTable(lowest)) or (TableBusy(9 downto 0) = "000000000") then
							lowest := 10;
						end if;
					end if;
					if TableBusy(11) = '1' then
						count(11) := count(11)-1;
						if (BranchTable(11) <= BranchTable(lowest)) or (TableBusy(10 downto 0) = "0000000000") then
							lowest := 11;
						end if;
					end if;
					if TableBusy(12) = '1' then
						count(12) := count(12)-1;
						if (BranchTable(12) <= BranchTable(lowest)) or (TableBusy(11 downto 0) = "00000000000") then
							lowest := 12;
						end if;
					end if;
					if TableBusy(13) = '1' then
						count(13) := count(13)-1;
						if (BranchTable(13) <= BranchTable(lowest)) or (TableBusy(12 downto 0) = "000000000000") then
							lowest := 13;
						end if;
					end if;
					if TableBusy(14) = '1' then
						count(14) := count(14)-1;
						if (BranchTable(14) <= BranchTable(lowest)) or (TableBusy(13 downto 0) = "0000000000000") then
							lowest := 14;
						end if;
					end if;
					if TableBusy(15) = '1' then
						count(15) := count(15)-1;
						if (BranchTable(15) <= BranchTable(lowest)) or (TableBusy(14 downto 0) = "00000000000000") then
							lowest := 15;
						end if;
					end if;
					
					TableBusy(lowest) <= '1';
					count (lowest) := 1;
					if ( Instruction(5) = '1') then
						write_table <= "01" & PC;
						PredictedResult <=  '1';
					else
						write_table <= "10" & PC;
						PredictedResult <=  '0';
					end if;
					write_loc <= lowest;
					
				end if;
			end if;
								
			
		else
			PredictedResult <=  '0';
			write_table_en <= '0';
		end if;
	end process Predictor;
	
	Updater : process(clock, reset, Address, ActualResult, AddressValid)
	variable update_loc : integer range 0 to 15;
	begin
		if clock'event and clock = '1' then
			if reset = '1' then
				BranchTable <= ( others => "00" & x"0000");
			else
				if write_table_en = '1' then
					BranchTable(write_loc) <= write_table;
				end if;
				if AddressValid = '1' then					
					update_loc := 0;
					if ( Address = BranchTable(1)(15 downto 0) ) and ( TableBusy(1) = '1' ) then
						update_loc := 1;
					elsif ( Address = BranchTable(2)(15 downto 0) ) and ( TableBusy(2) = '1' ) then
						update_loc := 2;
					elsif ( Address = BranchTable(3)(15 downto 0) ) and ( TableBusy(3) = '1' ) then
						update_loc := 3;
					elsif ( Address = BranchTable(4)(15 downto 0) ) and ( TableBusy(4) = '1' ) then
						update_loc := 4;
					elsif ( Address = BranchTable(5)(15 downto 0) ) and ( TableBusy(5) = '1' ) then
						update_loc := 5;
					elsif ( Address = BranchTable(6)(15 downto 0) ) and ( TableBusy(6) = '1' ) then
						update_loc := 6;	
					elsif ( Address = BranchTable(7)(15 downto 0) ) and ( TableBusy(7) = '1' ) then
						update_loc := 7;	
					elsif ( Address = BranchTable(8)(15 downto 0) ) and ( TableBusy(8) = '1' ) then
						update_loc := 8;	
					elsif ( Address = BranchTable(9)(15 downto 0) ) and ( TableBusy(9) = '1' ) then
						update_loc := 9;
					elsif ( Address = BranchTable(10)(15 downto 0) ) and ( TableBusy(10) = '1' ) then
						update_loc := 10;
					elsif ( Address = BranchTable(11)(15 downto 0) ) and ( TableBusy(11) = '1' ) then
						update_loc := 11;
					elsif ( Address = BranchTable(12)(15 downto 0) ) and ( TableBusy(12) = '1' ) then
						update_loc := 12;
					elsif ( Address = BranchTable(13)(15 downto 0) ) and ( TableBusy(13) = '1' ) then
						update_loc := 13;
					elsif ( Address = BranchTable(14)(15 downto 0) ) and ( TableBusy(14) = '1' ) then
						update_loc := 14;
					elsif ( Address = BranchTable(15)(15 downto 0) ) and ( TableBusy(15) = '1' ) then
						update_loc := 15;
					end if;
					
					if (not (update_loc = write_loc and write_table_en = '1')) then	
						if BranchTable(update_loc)(17 downto 16) = "00" then
							if ActualResult = '1' then
								BranchTable(update_loc)(17 downto 16) <= "01";
							else
								BranchTable(update_loc)(17 downto 16) <= "00";
							end if;
						elsif BranchTable(update_loc)(17 downto 16) = "01" then
							if ActualResult = '1' then
								BranchTable(update_loc)(17 downto 16) <= "11";
							else
								BranchTable(update_loc)(17 downto 16) <= "00";
							end if;
						elsif BranchTable(update_loc)(17 downto 16) = "10" then
							if ActualResult = '1' then
								BranchTable(update_loc)(17 downto 16) <= "11";
							else
								BranchTable(update_loc)(17 downto 16) <= "00";
							end if;
						else
							if ActualResult = '1' then
								BranchTable(update_loc)(17 downto 16) <= "11";
							else
								BranchTable(update_loc)(17 downto 16) <= "10";
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process Updater;
end architecture Predict;
