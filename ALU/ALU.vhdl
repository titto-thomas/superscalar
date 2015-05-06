----------------------------------------
-- ALU Module : IITB-RISC-Superscalar
-- Author : Titto Thomas
-- Date : 5/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (
    	Input	: in std_logic_vector(80 downto 0);		-- Input from the buffer
    	Output	: out std_logic_vector(85 downto 0);		-- Output to ROB
    	Out_en	: out std_logic;				-- Output enable to ROB
    	Tag_out	: out std_logic_vector(2 downto 0);		-- Tag bus
    	Tag_data: out std_logic_vector(15 downto 0);		-- Tag bus data
    	Tag_en	: out std_logic					-- Tag bus en
	);
end ALU;

--------------------------------Architecture-----------------------------------------------

architecture behave of ALU is


begin  -- behave 
	  
          main : process(Input)
          variable sum : std_logic_vector(16 downto 0) := '0' & x"0000";
          variable se6 : std_logic_vector(15 downto 0) := x"0000";
          begin
          	if Input(59 downto 56) = x"0" then
          		sum := std_logic_vector(signed('0' & Input(52 downto 37)) + signed('0' & Input(35 downto 20)));
          		Tag_en <= '1';
          		Tag_data <= sum(15 downto 0);
          		Tag_out <= Input(55 downto 53);
          		Out_en <= '1';
          		Output(85 downto 84) <= Input(14 downto 13);	-- Condition bits
          		Output(83 downto 82) <= Input(17 downto 16);	-- C & Z
          		if sum(15 downto 0) = x"0000" then		
          			Output(81) <= '1';			-- Zero bit	
          		else
          			Output(81) <= '0';
          		end if;
          		Output(80) <= sum(16);				-- Carry bit
          		Output(79 downto 64) <= Input(76 downto 61);	-- PC
          		Output(63) <= '0';				-- PC write en
          		Output(62 downto 60) <= Input(55 downto 53);	-- PC
          		Output(59) <= '1';				-- RFWrite
          		Output(58 downto 43) <= x"0000";		-- MemAddress
          		Output(42 downto 27) <= x"0000";		-- MemData
          		Output(26) <= '0';				-- MemWrite valid
          		Output(25) <= '0';				-- MemWrite valid
          		if sum(15 downto 0) = x"0000" then		
          			Output(24) <= '1';			-- Zero bit	
          		else
          			Output(24) <= '0';
          		end if;
          		Output(23) <= sum(16);				-- Carry bit
          		Output(22 downto 21) <= Input(17 downto 16);	-- C & Z
          		Output(20 downto 5) <= x"0000";			-- PC+Imm
          		Output(4 downto 1) <= Input(3 downto 0);	-- Speculative
          		Output(0) <= '0';				-- Dummy
          		
          	elsif Input(59 downto 56) = x"1" then
          		if Input(9) = '1' then
          			se6 := x"00" & "00" & Input(9 downto 4);
          		else
          			se6 := x"FF" & "11" & Input(9 downto 4);
          		end if;
          		sum := std_logic_vector(unsigned('0' & Input(52 downto 37))+unsigned('0' & se6));
          		Tag_en <= '1';
          		Tag_data <= sum(15 downto 0);
          		Tag_out <= Input(55 downto 53);
          		Out_en <= '1';
          		Output(85 downto 84) <= Input(14 downto 13);	-- Condition bits
          		Output(83 downto 82) <= Input(17 downto 16);	-- C & Z
          		if sum(15 downto 0) = x"0000" then		
          			Output(81) <= '1';			-- Zero bit	
          		else
          			Output(81) <= '0';
          		end if;
          		Output(80) <= sum(16);				-- Carry bit
          		Output(79 downto 64) <= Input(76 downto 61);	-- PC
          		Output(63) <= '0';				-- PC write en
          		Output(62 downto 60) <= Input(55 downto 53);	-- PC
          		Output(59) <= '1';				-- RFWrite
          		Output(58 downto 43) <= x"0000";		-- MemAddress
          		Output(42 downto 27) <= x"0000";		-- MemData
          		Output(26) <= '0';				-- MemWrite valid
          		Output(25) <= '0';				-- Branch T/NT
          		if sum(15 downto 0) = x"0000" then		
          			Output(24) <= '1';			-- Zero bit	
          		else
          			Output(24) <= '0';
          		end if;
          		Output(23) <= sum(16);				-- Carry bit
          		Output(22 downto 21) <= Input(17 downto 16);	-- C & Z
          		Output(20 downto 5) <= x"0000";			-- PC+Imm
          		Output(4 downto 1) <= Input(3 downto 0);	-- Speculative
          		Output(0) <= '0';				-- Dummy
          	elsif Input(59 downto 56) = x"2" then
          		sum(15) := Input(52) nand Input(35);
          		sum(14) := Input(51) nand Input(34);
          		sum(13) := Input(50) nand Input(33);
          		sum(12) := Input(49) nand Input(32);
          		sum(11) := Input(48) nand Input(31);
          		sum(10) := Input(47) nand Input(30);
          		sum(9) := Input(46) nand Input(29);
          		sum(8) := Input(45) nand Input(28);
          		sum(7) := Input(44) nand Input(27);
          		sum(6) := Input(43) nand Input(26);
          		sum(5) := Input(42) nand Input(25);
          		sum(4) := Input(41) nand Input(24);
          		sum(3) := Input(40) nand Input(23);
          		sum(2) := Input(39) nand Input(22);
          		sum(1) := Input(38) nand Input(21);
          		sum(0) := Input(37) nand Input(20);
          		
          		Tag_en <= '1';
          		Tag_data <= sum(15 downto 0);
          		Tag_out <= Input(55 downto 53);
          		Out_en <= '1';
          		Output(85 downto 84) <= Input(14 downto 13);	-- Condition bits
          		Output(83 downto 82) <= Input(17 downto 16);	-- C & Z
          		if sum(15 downto 0) = x"0000" then		
          			Output(81) <= '1';			-- Zero bit	
          		else
          			Output(81) <= '0';
          		end if;
          		Output(80) <= sum(16);				-- Carry bit
          		Output(79 downto 64) <= Input(76 downto 61);	-- PC
          		Output(63) <= '0';				-- PC write en
          		Output(62 downto 60) <= Input(55 downto 53);	-- PC
          		Output(59) <= '1';				-- RFWrite
          		Output(58 downto 43) <= x"0000";		-- MemAddress
          		Output(42 downto 27) <= x"0000";		-- MemData
          		Output(26) <= '0';				-- MemWrite valid
          		Output(25) <= '0';				-- Branch T/NT
          		if sum(15 downto 0) = x"0000" then		
          			Output(24) <= '1';			-- Zero bit	
          		else
          			Output(24) <= '0';
          		end if;
          		Output(23) <= sum(16);				-- Carry bit
          		Output(22 downto 21) <= Input(17 downto 16);	-- C & Z
          		Output(20 downto 5) <= x"0000";			-- PC+Imm
          		Output(4 downto 1) <= Input(3 downto 0);	-- Speculative
          		Output(0) <= '0';				-- Dummy
          	else
          		Tag_en <= '0';
          		Tag_data <= x"0000";
          		Tag_out <= "000";
          		Out_en <= '0';
          		Output <= (others => '0');
          	end if;          
          end process main;
          
end behave;

----------------------------------------------------------------------------------------------
