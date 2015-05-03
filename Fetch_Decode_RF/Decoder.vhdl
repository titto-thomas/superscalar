----------------------------------------
-- Decoder Module : IITB-RISC-Superscalar
-- Author : Titto Thomas, Anakha VB
-- Date : 1/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port (
	Instruction	: in std_logic_vector(15 downto 0); 		-- Instruction for decoding
	PC		: in std_logic_vector(15 downto 0); 		-- Program Counter
	Decode_out	: out std_logic_vector(46 downto 0)		-- Decoder output
    );
end Decoder;

architecture Decode_Instr of Decoder is
signal opcode : std_logic_vector(3 downto 0);		-- Op Id
signal RFWrite : std_logic;		 		-- Register File write
signal carry, zero : std_logic;				-- Flag register update signals
signal ALUop : std_logic;				-- ALU operation code
signal Cond_bits : std_logic_vector(1 downto 0);	-- Indicates conditinal execution
signal dest, src1, src2 : std_logic_vector(2 downto 0);	-- Register sources and destination
signal dest_valid, src1_valid, src2_valid : std_logic;	-- Valid bits
signal Imm_field : std_logic_vector(8 downto 0);	-- Immediete
begin

Decode_out <= opcode & dest & dest_valid & src1 & src1_valid & src2 & src2_valid & RFWrite & carry & zero & ALUop & Cond_bits & Imm_field & PC;

------------------- Send out the control bits ------------------------------------
Dc : process (Instruction, PC)
begin
	opcode <= Instruction(15 downto 12);

	if ( Instruction (15 downto 12) = X"0" ) then		-- ADD, ADC, ADZ
		RFWrite <= '1';
		carry <= '1';
		zero <= '1';
		ALUop <= '1';
		Cond_bits <= Instruction(1 downto 0);
		dest <= Instruction(11 downto 9);
		src1 <= Instruction(8 downto 6);
		src2 <= Instruction(5 downto 3);
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & x"00";

	elsif ( Instruction (15 downto 12) = X"1" ) then	-- ADI
		RFWrite <= '1';
		carry <= '1';
		zero <= '1';
		ALUop <= '1';
		Cond_bits <= "00";
		dest <= Instruction(11 downto 9);
		src1 <= Instruction(8 downto 6);
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		if (Instruction(5) = '1') then
			Imm_field <= "111" & Instruction(5 downto 0);
		else
			Imm_field <= "000" & Instruction(5 downto 0);
		end if;

	elsif ( Instruction (15 downto 12) = X"2" ) then	-- NDU, NDC, NDZ
		RFWrite <= '1';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= Instruction(1 downto 0);
		dest <= Instruction(11 downto 9);
		src1 <= Instruction(8 downto 6);
		src2 <= Instruction(5 downto 3);
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & x"00";

	elsif ( Instruction (15 downto 12) = X"3" ) then	-- LHI
		RFWrite <= '1';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= Instruction(11 downto 9);
		src1 <= "111";
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= Instruction(8 downto 0);

	elsif ( Instruction (15 downto 12) = X"4" ) then	-- LW
		RFWrite <= '1';
		carry <= '0';
		zero <= '1';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= Instruction(11 downto 9);
		src1 <= Instruction(8 downto 6);
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		if (Instruction(5) = '1') then
			Imm_field <= "111" & Instruction(5 downto 0);
		else
			Imm_field <= "000" & Instruction(5 downto 0);
		end if;

	elsif ( Instruction (15 downto 12) = X"5" ) then	-- SW
		RFWrite <= '0';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= "111";
		src1 <= Instruction(11 downto 9);
		src2 <= Instruction(8 downto 6);
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		if (Instruction(5) = '1') then
			Imm_field <= "111" & Instruction(5 downto 0);
		else
			Imm_field <= "000" & Instruction(5 downto 0);
		end if;

	elsif ( Instruction (15 downto 12) = X"6" ) then	-- LM
		RFWrite <= '1';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= "111";
		src1 <= Instruction(11 downto 9);
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & Instruction(7 downto 0);

	elsif ( Instruction (15 downto 12) = X"7" ) then	-- SM
		RFWrite <= '0';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= "111";
		src1 <= Instruction(11 downto 9);
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & Instruction(7 downto 0);

	elsif ( Instruction (15 downto 12) = X"C" ) then	-- BEQ
		RFWrite <= '0';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= "111";
		src1 <= Instruction(11 downto 9);
		src2 <= Instruction(8 downto 6);
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		if (Instruction(5) = '1') then
			Imm_field <= "111" & Instruction(5 downto 0);
		else
			Imm_field <= "000" & Instruction(5 downto 0);
		end if;

	elsif ( Instruction (15 downto 12) = X"8" ) then	-- JAL
		RFWrite <= '1';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= Instruction(11 downto 9);
		src1 <= "111";
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= Instruction(8 downto 0);

	elsif ( Instruction (15 downto 12) = X"9" ) then	-- JLR
		RFWrite <= '1';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= Instruction(11 downto 9);
		src1 <= Instruction(8 downto 6);
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & x"00";

	else	-- NOP
		RFWrite <= '0';
		carry <= '0';
		zero <= '0';
		ALUop <= '0';
		Cond_bits <= "00";
		dest <= "111";
		src1 <= "111";
		src2 <= "111";
		dest_valid <= '0';
		src1_valid <= '0';
		src2_valid <= '0';
		Imm_field <= '0' & x"00";
	end if;
end process Dc;
-----------------------------------------------------------------------------------------

end architecture Decode_Instr;
