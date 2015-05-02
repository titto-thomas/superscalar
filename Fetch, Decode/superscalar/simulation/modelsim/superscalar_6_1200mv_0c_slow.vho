-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/01/2015 17:51:59"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	superscalar IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	program : IN std_logic;
	instr_address : IN std_logic_vector(15 DOWNTO 0);
	instr_data : IN std_logic_vector(15 DOWNTO 0);
	decoder_output : OUT std_logic_vector(93 DOWNTO 0)
	);
END superscalar;

-- Design Ports Information
-- instr_address[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[11]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[12]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[14]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[15]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[5]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[12]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[13]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[14]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[16]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[18]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[19]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[20]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[22]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[24]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[25]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[27]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[29]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[31]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[32]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[33]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[34]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[35]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[36]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[37]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[38]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[39]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[40]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[41]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[42]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[43]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[44]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[45]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[46]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[47]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[48]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[49]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[50]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[51]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[52]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[53]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[54]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[55]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[56]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[57]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[58]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[59]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[60]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[61]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[62]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[63]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[64]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[65]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[66]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[67]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[68]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[69]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[70]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[71]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[72]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[73]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[74]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[75]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[76]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[77]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[78]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[79]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[80]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[81]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[82]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[83]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[84]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[85]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[86]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[87]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[88]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[89]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[90]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[91]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[92]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_output[93]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_address[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[8]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[10]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_data[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF superscalar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_program : std_logic;
SIGNAL ww_instr_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_decoder_output : std_logic_vector(93 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_address[8]~input_o\ : std_logic;
SIGNAL \instr_address[9]~input_o\ : std_logic;
SIGNAL \instr_address[10]~input_o\ : std_logic;
SIGNAL \instr_address[11]~input_o\ : std_logic;
SIGNAL \instr_address[12]~input_o\ : std_logic;
SIGNAL \instr_address[13]~input_o\ : std_logic;
SIGNAL \instr_address[14]~input_o\ : std_logic;
SIGNAL \instr_address[15]~input_o\ : std_logic;
SIGNAL \decoder_output[0]~output_o\ : std_logic;
SIGNAL \decoder_output[1]~output_o\ : std_logic;
SIGNAL \decoder_output[2]~output_o\ : std_logic;
SIGNAL \decoder_output[3]~output_o\ : std_logic;
SIGNAL \decoder_output[4]~output_o\ : std_logic;
SIGNAL \decoder_output[5]~output_o\ : std_logic;
SIGNAL \decoder_output[6]~output_o\ : std_logic;
SIGNAL \decoder_output[7]~output_o\ : std_logic;
SIGNAL \decoder_output[8]~output_o\ : std_logic;
SIGNAL \decoder_output[9]~output_o\ : std_logic;
SIGNAL \decoder_output[10]~output_o\ : std_logic;
SIGNAL \decoder_output[11]~output_o\ : std_logic;
SIGNAL \decoder_output[12]~output_o\ : std_logic;
SIGNAL \decoder_output[13]~output_o\ : std_logic;
SIGNAL \decoder_output[14]~output_o\ : std_logic;
SIGNAL \decoder_output[15]~output_o\ : std_logic;
SIGNAL \decoder_output[16]~output_o\ : std_logic;
SIGNAL \decoder_output[17]~output_o\ : std_logic;
SIGNAL \decoder_output[18]~output_o\ : std_logic;
SIGNAL \decoder_output[19]~output_o\ : std_logic;
SIGNAL \decoder_output[20]~output_o\ : std_logic;
SIGNAL \decoder_output[21]~output_o\ : std_logic;
SIGNAL \decoder_output[22]~output_o\ : std_logic;
SIGNAL \decoder_output[23]~output_o\ : std_logic;
SIGNAL \decoder_output[24]~output_o\ : std_logic;
SIGNAL \decoder_output[25]~output_o\ : std_logic;
SIGNAL \decoder_output[26]~output_o\ : std_logic;
SIGNAL \decoder_output[27]~output_o\ : std_logic;
SIGNAL \decoder_output[28]~output_o\ : std_logic;
SIGNAL \decoder_output[29]~output_o\ : std_logic;
SIGNAL \decoder_output[30]~output_o\ : std_logic;
SIGNAL \decoder_output[31]~output_o\ : std_logic;
SIGNAL \decoder_output[32]~output_o\ : std_logic;
SIGNAL \decoder_output[33]~output_o\ : std_logic;
SIGNAL \decoder_output[34]~output_o\ : std_logic;
SIGNAL \decoder_output[35]~output_o\ : std_logic;
SIGNAL \decoder_output[36]~output_o\ : std_logic;
SIGNAL \decoder_output[37]~output_o\ : std_logic;
SIGNAL \decoder_output[38]~output_o\ : std_logic;
SIGNAL \decoder_output[39]~output_o\ : std_logic;
SIGNAL \decoder_output[40]~output_o\ : std_logic;
SIGNAL \decoder_output[41]~output_o\ : std_logic;
SIGNAL \decoder_output[42]~output_o\ : std_logic;
SIGNAL \decoder_output[43]~output_o\ : std_logic;
SIGNAL \decoder_output[44]~output_o\ : std_logic;
SIGNAL \decoder_output[45]~output_o\ : std_logic;
SIGNAL \decoder_output[46]~output_o\ : std_logic;
SIGNAL \decoder_output[47]~output_o\ : std_logic;
SIGNAL \decoder_output[48]~output_o\ : std_logic;
SIGNAL \decoder_output[49]~output_o\ : std_logic;
SIGNAL \decoder_output[50]~output_o\ : std_logic;
SIGNAL \decoder_output[51]~output_o\ : std_logic;
SIGNAL \decoder_output[52]~output_o\ : std_logic;
SIGNAL \decoder_output[53]~output_o\ : std_logic;
SIGNAL \decoder_output[54]~output_o\ : std_logic;
SIGNAL \decoder_output[55]~output_o\ : std_logic;
SIGNAL \decoder_output[56]~output_o\ : std_logic;
SIGNAL \decoder_output[57]~output_o\ : std_logic;
SIGNAL \decoder_output[58]~output_o\ : std_logic;
SIGNAL \decoder_output[59]~output_o\ : std_logic;
SIGNAL \decoder_output[60]~output_o\ : std_logic;
SIGNAL \decoder_output[61]~output_o\ : std_logic;
SIGNAL \decoder_output[62]~output_o\ : std_logic;
SIGNAL \decoder_output[63]~output_o\ : std_logic;
SIGNAL \decoder_output[64]~output_o\ : std_logic;
SIGNAL \decoder_output[65]~output_o\ : std_logic;
SIGNAL \decoder_output[66]~output_o\ : std_logic;
SIGNAL \decoder_output[67]~output_o\ : std_logic;
SIGNAL \decoder_output[68]~output_o\ : std_logic;
SIGNAL \decoder_output[69]~output_o\ : std_logic;
SIGNAL \decoder_output[70]~output_o\ : std_logic;
SIGNAL \decoder_output[71]~output_o\ : std_logic;
SIGNAL \decoder_output[72]~output_o\ : std_logic;
SIGNAL \decoder_output[73]~output_o\ : std_logic;
SIGNAL \decoder_output[74]~output_o\ : std_logic;
SIGNAL \decoder_output[75]~output_o\ : std_logic;
SIGNAL \decoder_output[76]~output_o\ : std_logic;
SIGNAL \decoder_output[77]~output_o\ : std_logic;
SIGNAL \decoder_output[78]~output_o\ : std_logic;
SIGNAL \decoder_output[79]~output_o\ : std_logic;
SIGNAL \decoder_output[80]~output_o\ : std_logic;
SIGNAL \decoder_output[81]~output_o\ : std_logic;
SIGNAL \decoder_output[82]~output_o\ : std_logic;
SIGNAL \decoder_output[83]~output_o\ : std_logic;
SIGNAL \decoder_output[84]~output_o\ : std_logic;
SIGNAL \decoder_output[85]~output_o\ : std_logic;
SIGNAL \decoder_output[86]~output_o\ : std_logic;
SIGNAL \decoder_output[87]~output_o\ : std_logic;
SIGNAL \decoder_output[88]~output_o\ : std_logic;
SIGNAL \decoder_output[89]~output_o\ : std_logic;
SIGNAL \decoder_output[90]~output_o\ : std_logic;
SIGNAL \decoder_output[91]~output_o\ : std_logic;
SIGNAL \decoder_output[92]~output_o\ : std_logic;
SIGNAL \decoder_output[93]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \PCPreg|reg_out[0]~15_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~0_combout\ : std_logic;
SIGNAL \PCP1[1]~15_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~0_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~1_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \PCP1[1]~16\ : std_logic;
SIGNAL \PCP1[2]~17_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~1_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~2_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \PCP1[2]~18\ : std_logic;
SIGNAL \PCP1[3]~19_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~2_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~3_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \PCP1[3]~20\ : std_logic;
SIGNAL \PCP1[4]~21_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~3_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~4_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \PCP1[4]~22\ : std_logic;
SIGNAL \PCP1[5]~23_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~4_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~5_combout\ : std_logic;
SIGNAL \PCP1[5]~24\ : std_logic;
SIGNAL \PCP1[6]~25_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~5_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~6_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \PCP1[6]~26\ : std_logic;
SIGNAL \PCP1[7]~27_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~6_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~7_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \PCP1[7]~28\ : std_logic;
SIGNAL \PCP1[8]~29_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~7_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~8_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \PCP1[8]~30\ : std_logic;
SIGNAL \PCP1[9]~31_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~8_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~9_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \PCP1[9]~32\ : std_logic;
SIGNAL \PCP1[10]~33_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~9_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~10_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \PCP1[10]~34\ : std_logic;
SIGNAL \PCP1[11]~35_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~10_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~11_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \PCP1[11]~36\ : std_logic;
SIGNAL \PCP1[12]~37_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~11_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~12_combout\ : std_logic;
SIGNAL \PCP1[12]~38\ : std_logic;
SIGNAL \PCP1[13]~39_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~12_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~13_combout\ : std_logic;
SIGNAL \PCP1[13]~40\ : std_logic;
SIGNAL \PCP1[14]~41_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~13_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~14_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \PCP1[14]~42\ : std_logic;
SIGNAL \PCP1[15]~43_combout\ : std_logic;
SIGNAL \PCPreg|reg_out~14_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~15_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \program~input_o\ : std_logic;
SIGNAL \instr_data[0]~input_o\ : std_logic;
SIGNAL \instr_address[0]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[0]~0_combout\ : std_logic;
SIGNAL \instr_address[1]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[1]~1_combout\ : std_logic;
SIGNAL \instr_address[2]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[2]~2_combout\ : std_logic;
SIGNAL \instr_address[3]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[3]~3_combout\ : std_logic;
SIGNAL \instr_address[4]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[4]~4_combout\ : std_logic;
SIGNAL \instr_address[5]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[5]~5_combout\ : std_logic;
SIGNAL \instr_address[6]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[6]~6_combout\ : std_logic;
SIGNAL \instr_address[7]~input_o\ : std_logic;
SIGNAL \Programming_Mux|output[7]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Programming_Mux|output[0]~0_wirecell_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~0_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~1\ : std_logic;
SIGNAL \Instruction_Memory|Add0~2_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~3\ : std_logic;
SIGNAL \Instruction_Memory|Add0~4_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~5\ : std_logic;
SIGNAL \Instruction_Memory|Add0~6_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~7\ : std_logic;
SIGNAL \Instruction_Memory|Add0~8_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~9\ : std_logic;
SIGNAL \Instruction_Memory|Add0~10_combout\ : std_logic;
SIGNAL \Instruction_Memory|Add0~11\ : std_logic;
SIGNAL \Instruction_Memory|Add0~12_combout\ : std_logic;
SIGNAL \instr_data[1]~input_o\ : std_logic;
SIGNAL \instr_data[2]~input_o\ : std_logic;
SIGNAL \instr_data[3]~input_o\ : std_logic;
SIGNAL \instr_data[4]~input_o\ : std_logic;
SIGNAL \instr_data[5]~input_o\ : std_logic;
SIGNAL \instr_data[6]~input_o\ : std_logic;
SIGNAL \instr_data[7]~input_o\ : std_logic;
SIGNAL \instr_data[8]~input_o\ : std_logic;
SIGNAL \instr_data[9]~input_o\ : std_logic;
SIGNAL \instr_data[10]~input_o\ : std_logic;
SIGNAL \instr_data[11]~input_o\ : std_logic;
SIGNAL \instr_data[12]~input_o\ : std_logic;
SIGNAL \instr_data[13]~input_o\ : std_logic;
SIGNAL \instr_data[14]~input_o\ : std_logic;
SIGNAL \instr_data[15]~input_o\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~17_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~20_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[20]~3_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~19_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~18_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[17]~2_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~16_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[16]~4_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~21_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[17]~5_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~22_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[18]~6_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~23_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[19]~7_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~24_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[20]~8_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~25_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[22]~9_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[21]~10_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[23]~12_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[23]~11_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~26_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[22]~13_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~27_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[23]~14_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[24]~15_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[24]~16_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[24]~40_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~28_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[24]~17_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[25]~18_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[26]~19_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[27]~20_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[28]~21_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[30]~22_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[32]~23_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[32]~24_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[33]~25_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[34]~26_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[38]~27_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[36]~28_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~29_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[36]~29_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[36]~30_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~30_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[37]~32_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[37]~31_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[37]~33_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~31_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[38]~34_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[38]~35_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[40]~36_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[40]~37_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[41]~38_combout\ : std_logic;
SIGNAL \Decoder_module2|Decode_out[42]~39_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[33]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[34]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[35]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[38]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[39]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[40]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[41]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[42]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[45]~feeder_combout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out[47]~feeder_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~35_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~33_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~34_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[18]~2_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~36_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[19]~3_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~32_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[16]~4_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~37_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[17]~5_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~38_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[18]~6_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~39_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[19]~7_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~40_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[20]~8_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~41_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[22]~9_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[21]~10_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[23]~11_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~42_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[23]~12_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[22]~13_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~43_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[23]~14_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[24]~16_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~44_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[24]~40_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[24]~15_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[24]~17_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[25]~18_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[26]~19_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[27]~20_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[28]~21_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[30]~22_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[32]~23_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[32]~24_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[33]~25_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[34]~26_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[38]~27_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~45_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[36]~28_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[36]~29_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[36]~30_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~46_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[37]~32_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[37]~31_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[37]~33_combout\ : std_logic;
SIGNAL \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Fetch_pipeline_reg|reg_out~47_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[38]~34_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[38]~35_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[40]~36_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[40]~37_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[41]~38_combout\ : std_logic;
SIGNAL \Decoder_module1|Decode_out[42]~39_combout\ : std_logic;
SIGNAL PCP1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \PCPreg|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Fetch_pipeline_reg|reg_out\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Decoder_module2|ALT_INV_Decode_out[30]~22_combout\ : std_logic;
SIGNAL \Decoder_module1|ALT_INV_Decode_out[30]~22_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_program <= program;
ww_instr_address <= instr_address;
ww_instr_data <= instr_data;
decoder_output <= ww_decoder_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \instr_data[15]~input_o\ & \instr_data[14]~input_o\ & \instr_data[13]~input_o\ & \instr_data[12]~input_o\ & \instr_data[11]~input_o\ & \instr_data[10]~input_o\ & 
\instr_data[9]~input_o\ & \instr_data[8]~input_o\ & \instr_data[7]~input_o\ & \instr_data[6]~input_o\ & \instr_data[5]~input_o\ & \instr_data[4]~input_o\ & \instr_data[3]~input_o\ & \instr_data[2]~input_o\ & \instr_data[1]~input_o\ & 
\instr_data[0]~input_o\);

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Programming_Mux|output[7]~7_combout\ & \Programming_Mux|output[6]~6_combout\ & \Programming_Mux|output[5]~5_combout\ & \Programming_Mux|output[4]~4_combout\ & 
\Programming_Mux|output[3]~3_combout\ & \Programming_Mux|output[2]~2_combout\ & \Programming_Mux|output[1]~1_combout\ & \Programming_Mux|output[0]~0_combout\);

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Instruction_Memory|Add0~12_combout\ & \Instruction_Memory|Add0~10_combout\ & \Instruction_Memory|Add0~8_combout\ & \Instruction_Memory|Add0~6_combout\ & 
\Instruction_Memory|Add0~4_combout\ & \Instruction_Memory|Add0~2_combout\ & \Instruction_Memory|Add0~0_combout\ & \Programming_Mux|output[0]~0_wirecell_combout\);

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\Decoder_module2|ALT_INV_Decode_out[30]~22_combout\ <= NOT \Decoder_module2|Decode_out[30]~22_combout\;
\Decoder_module1|ALT_INV_Decode_out[30]~22_combout\ <= NOT \Decoder_module1|Decode_out[30]~22_combout\;

-- Location: IOOBUF_X53_Y9_N9
\decoder_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(0),
	devoe => ww_devoe,
	o => \decoder_output[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\decoder_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(1),
	devoe => ww_devoe,
	o => \decoder_output[1]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\decoder_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(2),
	devoe => ww_devoe,
	o => \decoder_output[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\decoder_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(3),
	devoe => ww_devoe,
	o => \decoder_output[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\decoder_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(4),
	devoe => ww_devoe,
	o => \decoder_output[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\decoder_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(5),
	devoe => ww_devoe,
	o => \decoder_output[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\decoder_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(6),
	devoe => ww_devoe,
	o => \decoder_output[6]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\decoder_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(7),
	devoe => ww_devoe,
	o => \decoder_output[7]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\decoder_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(8),
	devoe => ww_devoe,
	o => \decoder_output[8]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\decoder_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(9),
	devoe => ww_devoe,
	o => \decoder_output[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\decoder_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(10),
	devoe => ww_devoe,
	o => \decoder_output[10]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\decoder_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(11),
	devoe => ww_devoe,
	o => \decoder_output[11]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\decoder_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(12),
	devoe => ww_devoe,
	o => \decoder_output[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\decoder_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(13),
	devoe => ww_devoe,
	o => \decoder_output[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\decoder_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(14),
	devoe => ww_devoe,
	o => \decoder_output[14]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\decoder_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(15),
	devoe => ww_devoe,
	o => \decoder_output[15]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\decoder_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[16]~4_combout\,
	devoe => ww_devoe,
	o => \decoder_output[16]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\decoder_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[17]~5_combout\,
	devoe => ww_devoe,
	o => \decoder_output[17]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\decoder_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[18]~6_combout\,
	devoe => ww_devoe,
	o => \decoder_output[18]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\decoder_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[19]~7_combout\,
	devoe => ww_devoe,
	o => \decoder_output[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\decoder_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[20]~8_combout\,
	devoe => ww_devoe,
	o => \decoder_output[20]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\decoder_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[21]~10_combout\,
	devoe => ww_devoe,
	o => \decoder_output[21]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\decoder_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[22]~13_combout\,
	devoe => ww_devoe,
	o => \decoder_output[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\decoder_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[23]~14_combout\,
	devoe => ww_devoe,
	o => \decoder_output[23]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\decoder_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[24]~17_combout\,
	devoe => ww_devoe,
	o => \decoder_output[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\decoder_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[25]~18_combout\,
	devoe => ww_devoe,
	o => \decoder_output[25]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\decoder_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[26]~19_combout\,
	devoe => ww_devoe,
	o => \decoder_output[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\decoder_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[27]~20_combout\,
	devoe => ww_devoe,
	o => \decoder_output[27]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\decoder_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[28]~21_combout\,
	devoe => ww_devoe,
	o => \decoder_output[28]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\decoder_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[27]~20_combout\,
	devoe => ww_devoe,
	o => \decoder_output[29]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\decoder_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|ALT_INV_Decode_out[30]~22_combout\,
	devoe => ww_devoe,
	o => \decoder_output[30]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\decoder_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[31]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\decoder_output[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[32]~24_combout\,
	devoe => ww_devoe,
	o => \decoder_output[32]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\decoder_output[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[33]~25_combout\,
	devoe => ww_devoe,
	o => \decoder_output[33]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\decoder_output[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[34]~26_combout\,
	devoe => ww_devoe,
	o => \decoder_output[34]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\decoder_output[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[35]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\decoder_output[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[36]~30_combout\,
	devoe => ww_devoe,
	o => \decoder_output[36]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\decoder_output[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[37]~33_combout\,
	devoe => ww_devoe,
	o => \decoder_output[37]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\decoder_output[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[38]~35_combout\,
	devoe => ww_devoe,
	o => \decoder_output[38]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\decoder_output[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[39]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\decoder_output[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[40]~37_combout\,
	devoe => ww_devoe,
	o => \decoder_output[40]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\decoder_output[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[41]~38_combout\,
	devoe => ww_devoe,
	o => \decoder_output[41]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\decoder_output[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module2|Decode_out[42]~39_combout\,
	devoe => ww_devoe,
	o => \decoder_output[42]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\decoder_output[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(28),
	devoe => ww_devoe,
	o => \decoder_output[43]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\decoder_output[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(29),
	devoe => ww_devoe,
	o => \decoder_output[44]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\decoder_output[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(30),
	devoe => ww_devoe,
	o => \decoder_output[45]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\decoder_output[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(31),
	devoe => ww_devoe,
	o => \decoder_output[46]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\decoder_output[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[47]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\decoder_output[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(33),
	devoe => ww_devoe,
	o => \decoder_output[48]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\decoder_output[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(34),
	devoe => ww_devoe,
	o => \decoder_output[49]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\decoder_output[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(35),
	devoe => ww_devoe,
	o => \decoder_output[50]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\decoder_output[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(36),
	devoe => ww_devoe,
	o => \decoder_output[51]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\decoder_output[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(37),
	devoe => ww_devoe,
	o => \decoder_output[52]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\decoder_output[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(38),
	devoe => ww_devoe,
	o => \decoder_output[53]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\decoder_output[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(39),
	devoe => ww_devoe,
	o => \decoder_output[54]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\decoder_output[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(40),
	devoe => ww_devoe,
	o => \decoder_output[55]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\decoder_output[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(41),
	devoe => ww_devoe,
	o => \decoder_output[56]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\decoder_output[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(42),
	devoe => ww_devoe,
	o => \decoder_output[57]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\decoder_output[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(43),
	devoe => ww_devoe,
	o => \decoder_output[58]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\decoder_output[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(44),
	devoe => ww_devoe,
	o => \decoder_output[59]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\decoder_output[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(45),
	devoe => ww_devoe,
	o => \decoder_output[60]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\decoder_output[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(46),
	devoe => ww_devoe,
	o => \decoder_output[61]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\decoder_output[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(47),
	devoe => ww_devoe,
	o => \decoder_output[62]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\decoder_output[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[16]~4_combout\,
	devoe => ww_devoe,
	o => \decoder_output[63]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\decoder_output[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[17]~5_combout\,
	devoe => ww_devoe,
	o => \decoder_output[64]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\decoder_output[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[18]~6_combout\,
	devoe => ww_devoe,
	o => \decoder_output[65]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\decoder_output[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[19]~7_combout\,
	devoe => ww_devoe,
	o => \decoder_output[66]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\decoder_output[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[20]~8_combout\,
	devoe => ww_devoe,
	o => \decoder_output[67]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\decoder_output[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[21]~10_combout\,
	devoe => ww_devoe,
	o => \decoder_output[68]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\decoder_output[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[22]~13_combout\,
	devoe => ww_devoe,
	o => \decoder_output[69]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\decoder_output[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[23]~14_combout\,
	devoe => ww_devoe,
	o => \decoder_output[70]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\decoder_output[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[24]~17_combout\,
	devoe => ww_devoe,
	o => \decoder_output[71]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\decoder_output[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[25]~18_combout\,
	devoe => ww_devoe,
	o => \decoder_output[72]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\decoder_output[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[26]~19_combout\,
	devoe => ww_devoe,
	o => \decoder_output[73]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\decoder_output[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[27]~20_combout\,
	devoe => ww_devoe,
	o => \decoder_output[74]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\decoder_output[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[28]~21_combout\,
	devoe => ww_devoe,
	o => \decoder_output[75]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\decoder_output[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[27]~20_combout\,
	devoe => ww_devoe,
	o => \decoder_output[76]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\decoder_output[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|ALT_INV_Decode_out[30]~22_combout\,
	devoe => ww_devoe,
	o => \decoder_output[77]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\decoder_output[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[78]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\decoder_output[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[32]~24_combout\,
	devoe => ww_devoe,
	o => \decoder_output[79]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\decoder_output[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[33]~25_combout\,
	devoe => ww_devoe,
	o => \decoder_output[80]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\decoder_output[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[34]~26_combout\,
	devoe => ww_devoe,
	o => \decoder_output[81]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\decoder_output[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[82]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\decoder_output[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[36]~30_combout\,
	devoe => ww_devoe,
	o => \decoder_output[83]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\decoder_output[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[37]~33_combout\,
	devoe => ww_devoe,
	o => \decoder_output[84]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\decoder_output[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[38]~35_combout\,
	devoe => ww_devoe,
	o => \decoder_output[85]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\decoder_output[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decoder_output[86]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\decoder_output[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[40]~37_combout\,
	devoe => ww_devoe,
	o => \decoder_output[87]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\decoder_output[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[41]~38_combout\,
	devoe => ww_devoe,
	o => \decoder_output[88]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\decoder_output[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_module1|Decode_out[42]~39_combout\,
	devoe => ww_devoe,
	o => \decoder_output[89]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\decoder_output[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(60),
	devoe => ww_devoe,
	o => \decoder_output[90]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\decoder_output[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(61),
	devoe => ww_devoe,
	o => \decoder_output[91]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\decoder_output[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(62),
	devoe => ww_devoe,
	o => \decoder_output[92]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\decoder_output[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fetch_pipeline_reg|reg_out\(63),
	devoe => ww_devoe,
	o => \decoder_output[93]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y34_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X31_Y23_N12
\PCPreg|reg_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out[0]~15_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \PCPreg|reg_out[0]~15_combout\);

-- Location: FF_X31_Y23_N13
\PCPreg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(0));

-- Location: LCCOMB_X31_Y23_N20
\Fetch_pipeline_reg|reg_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~0_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \PCPreg|reg_out\(0),
	combout => \Fetch_pipeline_reg|reg_out~0_combout\);

-- Location: FF_X31_Y23_N21
\Fetch_pipeline_reg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(0));

-- Location: LCCOMB_X35_Y22_N0
\PCP1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[1]~15_combout\ = PCP1(1) $ (VCC)
-- \PCP1[1]~16\ = CARRY(PCP1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PCP1(1),
	datad => VCC,
	combout => \PCP1[1]~15_combout\,
	cout => \PCP1[1]~16\);

-- Location: FF_X35_Y22_N1
\PCP1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[1]~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(1));

-- Location: LCCOMB_X32_Y22_N12
\PCPreg|reg_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~0_combout\ = (PCP1(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(1),
	datac => \reset~input_o\,
	combout => \PCPreg|reg_out~0_combout\);

-- Location: FF_X32_Y22_N13
\PCPreg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(1));

-- Location: LCCOMB_X31_Y22_N0
\Fetch_pipeline_reg|reg_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~1_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \PCPreg|reg_out\(1),
	combout => \Fetch_pipeline_reg|reg_out~1_combout\);

-- Location: LCCOMB_X31_Y22_N12
\Fetch_pipeline_reg|reg_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[1]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~1_combout\,
	combout => \Fetch_pipeline_reg|reg_out[1]~feeder_combout\);

-- Location: FF_X31_Y22_N13
\Fetch_pipeline_reg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(1));

-- Location: LCCOMB_X35_Y22_N2
\PCP1[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[2]~17_combout\ = (PCP1(2) & (!\PCP1[1]~16\)) # (!PCP1(2) & ((\PCP1[1]~16\) # (GND)))
-- \PCP1[2]~18\ = CARRY((!\PCP1[1]~16\) # (!PCP1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(2),
	datad => VCC,
	cin => \PCP1[1]~16\,
	combout => \PCP1[2]~17_combout\,
	cout => \PCP1[2]~18\);

-- Location: FF_X35_Y22_N3
\PCP1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[2]~17_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(2));

-- Location: LCCOMB_X32_Y22_N2
\PCPreg|reg_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~1_combout\ = (PCP1(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PCP1(2),
	datac => \reset~input_o\,
	combout => \PCPreg|reg_out~1_combout\);

-- Location: FF_X32_Y22_N3
\PCPreg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(2));

-- Location: LCCOMB_X32_Y22_N20
\Fetch_pipeline_reg|reg_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~2_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PCPreg|reg_out\(2),
	combout => \Fetch_pipeline_reg|reg_out~2_combout\);

-- Location: LCCOMB_X32_Y22_N0
\Fetch_pipeline_reg|reg_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[2]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~2_combout\,
	combout => \Fetch_pipeline_reg|reg_out[2]~feeder_combout\);

-- Location: FF_X32_Y22_N1
\Fetch_pipeline_reg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(2));

-- Location: LCCOMB_X35_Y22_N4
\PCP1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[3]~19_combout\ = (PCP1(3) & (\PCP1[2]~18\ $ (GND))) # (!PCP1(3) & (!\PCP1[2]~18\ & VCC))
-- \PCP1[3]~20\ = CARRY((PCP1(3) & !\PCP1[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(3),
	datad => VCC,
	cin => \PCP1[2]~18\,
	combout => \PCP1[3]~19_combout\,
	cout => \PCP1[3]~20\);

-- Location: FF_X35_Y22_N5
\PCP1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[3]~19_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(3));

-- Location: LCCOMB_X32_Y22_N10
\PCPreg|reg_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~2_combout\ = (!\reset~input_o\ & PCP1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => PCP1(3),
	combout => \PCPreg|reg_out~2_combout\);

-- Location: FF_X32_Y22_N11
\PCPreg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(3));

-- Location: LCCOMB_X32_Y22_N4
\Fetch_pipeline_reg|reg_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~3_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PCPreg|reg_out\(3),
	combout => \Fetch_pipeline_reg|reg_out~3_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Fetch_pipeline_reg|reg_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[3]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~3_combout\,
	combout => \Fetch_pipeline_reg|reg_out[3]~feeder_combout\);

-- Location: FF_X28_Y22_N5
\Fetch_pipeline_reg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(3));

-- Location: LCCOMB_X35_Y22_N6
\PCP1[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[4]~21_combout\ = (PCP1(4) & (!\PCP1[3]~20\)) # (!PCP1(4) & ((\PCP1[3]~20\) # (GND)))
-- \PCP1[4]~22\ = CARRY((!\PCP1[3]~20\) # (!PCP1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(4),
	datad => VCC,
	cin => \PCP1[3]~20\,
	combout => \PCP1[4]~21_combout\,
	cout => \PCP1[4]~22\);

-- Location: FF_X35_Y22_N7
\PCP1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[4]~21_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(4));

-- Location: LCCOMB_X35_Y22_N30
\PCPreg|reg_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~3_combout\ = (!\reset~input_o\ & PCP1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => PCP1(4),
	combout => \PCPreg|reg_out~3_combout\);

-- Location: FF_X35_Y22_N31
\PCPreg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(4));

-- Location: LCCOMB_X35_Y23_N26
\Fetch_pipeline_reg|reg_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~4_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \PCPreg|reg_out\(4),
	combout => \Fetch_pipeline_reg|reg_out~4_combout\);

-- Location: LCCOMB_X36_Y23_N24
\Fetch_pipeline_reg|reg_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[4]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out~4_combout\,
	combout => \Fetch_pipeline_reg|reg_out[4]~feeder_combout\);

-- Location: FF_X36_Y23_N25
\Fetch_pipeline_reg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(4));

-- Location: LCCOMB_X35_Y22_N8
\PCP1[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[5]~23_combout\ = (PCP1(5) & (\PCP1[4]~22\ $ (GND))) # (!PCP1(5) & (!\PCP1[4]~22\ & VCC))
-- \PCP1[5]~24\ = CARRY((PCP1(5) & !\PCP1[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(5),
	datad => VCC,
	cin => \PCP1[4]~22\,
	combout => \PCP1[5]~23_combout\,
	cout => \PCP1[5]~24\);

-- Location: FF_X35_Y22_N9
\PCP1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[5]~23_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(5));

-- Location: LCCOMB_X35_Y23_N24
\PCPreg|reg_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~4_combout\ = (!\reset~input_o\ & PCP1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(5),
	combout => \PCPreg|reg_out~4_combout\);

-- Location: FF_X35_Y23_N25
\PCPreg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(5));

-- Location: LCCOMB_X36_Y23_N16
\Fetch_pipeline_reg|reg_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~5_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \PCPreg|reg_out\(5),
	combout => \Fetch_pipeline_reg|reg_out~5_combout\);

-- Location: FF_X37_Y23_N5
\Fetch_pipeline_reg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Fetch_pipeline_reg|reg_out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(5));

-- Location: LCCOMB_X35_Y22_N10
\PCP1[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[6]~25_combout\ = (PCP1(6) & (!\PCP1[5]~24\)) # (!PCP1(6) & ((\PCP1[5]~24\) # (GND)))
-- \PCP1[6]~26\ = CARRY((!\PCP1[5]~24\) # (!PCP1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(6),
	datad => VCC,
	cin => \PCP1[5]~24\,
	combout => \PCP1[6]~25_combout\,
	cout => \PCP1[6]~26\);

-- Location: FF_X35_Y22_N11
\PCP1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[6]~25_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(6));

-- Location: LCCOMB_X31_Y22_N10
\PCPreg|reg_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~5_combout\ = (!\reset~input_o\ & PCP1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(6),
	combout => \PCPreg|reg_out~5_combout\);

-- Location: FF_X31_Y22_N11
\PCPreg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(6));

-- Location: LCCOMB_X31_Y23_N2
\Fetch_pipeline_reg|reg_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~6_combout\ = (\PCPreg|reg_out\(6) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCPreg|reg_out\(6),
	datad => \reset~input_o\,
	combout => \Fetch_pipeline_reg|reg_out~6_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Fetch_pipeline_reg|reg_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[6]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~6_combout\,
	combout => \Fetch_pipeline_reg|reg_out[6]~feeder_combout\);

-- Location: FF_X30_Y23_N5
\Fetch_pipeline_reg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(6));

-- Location: LCCOMB_X35_Y22_N12
\PCP1[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[7]~27_combout\ = (PCP1(7) & (\PCP1[6]~26\ $ (GND))) # (!PCP1(7) & (!\PCP1[6]~26\ & VCC))
-- \PCP1[7]~28\ = CARRY((PCP1(7) & !\PCP1[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(7),
	datad => VCC,
	cin => \PCP1[6]~26\,
	combout => \PCP1[7]~27_combout\,
	cout => \PCP1[7]~28\);

-- Location: FF_X35_Y22_N13
\PCP1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[7]~27_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(7));

-- Location: LCCOMB_X32_Y22_N6
\PCPreg|reg_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~6_combout\ = (!\reset~input_o\ & PCP1(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => PCP1(7),
	combout => \PCPreg|reg_out~6_combout\);

-- Location: FF_X32_Y22_N7
\PCPreg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(7));

-- Location: LCCOMB_X31_Y22_N8
\Fetch_pipeline_reg|reg_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~7_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \PCPreg|reg_out\(7),
	combout => \Fetch_pipeline_reg|reg_out~7_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Fetch_pipeline_reg|reg_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[7]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out~7_combout\,
	combout => \Fetch_pipeline_reg|reg_out[7]~feeder_combout\);

-- Location: FF_X31_Y22_N3
\Fetch_pipeline_reg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(7));

-- Location: LCCOMB_X35_Y22_N14
\PCP1[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[8]~29_combout\ = (PCP1(8) & (!\PCP1[7]~28\)) # (!PCP1(8) & ((\PCP1[7]~28\) # (GND)))
-- \PCP1[8]~30\ = CARRY((!\PCP1[7]~28\) # (!PCP1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(8),
	datad => VCC,
	cin => \PCP1[7]~28\,
	combout => \PCP1[8]~29_combout\,
	cout => \PCP1[8]~30\);

-- Location: FF_X35_Y22_N15
\PCP1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[8]~29_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(8));

-- Location: LCCOMB_X31_Y22_N30
\PCPreg|reg_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~7_combout\ = (!\reset~input_o\ & PCP1(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(8),
	combout => \PCPreg|reg_out~7_combout\);

-- Location: FF_X31_Y22_N31
\PCPreg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(8));

-- Location: LCCOMB_X31_Y22_N20
\Fetch_pipeline_reg|reg_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~8_combout\ = (\PCPreg|reg_out\(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCPreg|reg_out\(8),
	datad => \reset~input_o\,
	combout => \Fetch_pipeline_reg|reg_out~8_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Fetch_pipeline_reg|reg_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[8]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~8_combout\,
	combout => \Fetch_pipeline_reg|reg_out[8]~feeder_combout\);

-- Location: FF_X31_Y22_N5
\Fetch_pipeline_reg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(8));

-- Location: LCCOMB_X35_Y22_N16
\PCP1[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[9]~31_combout\ = (PCP1(9) & (\PCP1[8]~30\ $ (GND))) # (!PCP1(9) & (!\PCP1[8]~30\ & VCC))
-- \PCP1[9]~32\ = CARRY((PCP1(9) & !\PCP1[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(9),
	datad => VCC,
	cin => \PCP1[8]~30\,
	combout => \PCP1[9]~31_combout\,
	cout => \PCP1[9]~32\);

-- Location: FF_X35_Y22_N17
\PCP1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[9]~31_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(9));

-- Location: LCCOMB_X31_Y23_N0
\PCPreg|reg_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~8_combout\ = (!\reset~input_o\ & PCP1(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(9),
	combout => \PCPreg|reg_out~8_combout\);

-- Location: FF_X31_Y23_N1
\PCPreg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(9));

-- Location: LCCOMB_X31_Y23_N22
\Fetch_pipeline_reg|reg_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~9_combout\ = (\PCPreg|reg_out\(9) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCPreg|reg_out\(9),
	datad => \reset~input_o\,
	combout => \Fetch_pipeline_reg|reg_out~9_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Fetch_pipeline_reg|reg_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[9]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~9_combout\,
	combout => \Fetch_pipeline_reg|reg_out[9]~feeder_combout\);

-- Location: FF_X30_Y23_N7
\Fetch_pipeline_reg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(9));

-- Location: LCCOMB_X35_Y22_N18
\PCP1[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[10]~33_combout\ = (PCP1(10) & (!\PCP1[9]~32\)) # (!PCP1(10) & ((\PCP1[9]~32\) # (GND)))
-- \PCP1[10]~34\ = CARRY((!\PCP1[9]~32\) # (!PCP1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(10),
	datad => VCC,
	cin => \PCP1[9]~32\,
	combout => \PCP1[10]~33_combout\,
	cout => \PCP1[10]~34\);

-- Location: FF_X35_Y22_N19
\PCP1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[10]~33_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(10));

-- Location: LCCOMB_X31_Y22_N22
\PCPreg|reg_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~9_combout\ = (!\reset~input_o\ & PCP1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(10),
	combout => \PCPreg|reg_out~9_combout\);

-- Location: FF_X31_Y22_N23
\PCPreg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(10));

-- Location: LCCOMB_X31_Y22_N16
\Fetch_pipeline_reg|reg_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~10_combout\ = (\PCPreg|reg_out\(10) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCPreg|reg_out\(10),
	datad => \reset~input_o\,
	combout => \Fetch_pipeline_reg|reg_out~10_combout\);

-- Location: LCCOMB_X31_Y22_N26
\Fetch_pipeline_reg|reg_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[10]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~10_combout\,
	combout => \Fetch_pipeline_reg|reg_out[10]~feeder_combout\);

-- Location: FF_X31_Y22_N27
\Fetch_pipeline_reg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(10));

-- Location: LCCOMB_X35_Y22_N20
\PCP1[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[11]~35_combout\ = (PCP1(11) & (\PCP1[10]~34\ $ (GND))) # (!PCP1(11) & (!\PCP1[10]~34\ & VCC))
-- \PCP1[11]~36\ = CARRY((PCP1(11) & !\PCP1[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(11),
	datad => VCC,
	cin => \PCP1[10]~34\,
	combout => \PCP1[11]~35_combout\,
	cout => \PCP1[11]~36\);

-- Location: FF_X35_Y22_N21
\PCP1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[11]~35_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(11));

-- Location: LCCOMB_X35_Y23_N22
\PCPreg|reg_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~10_combout\ = (!\reset~input_o\ & PCP1(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => PCP1(11),
	combout => \PCPreg|reg_out~10_combout\);

-- Location: FF_X35_Y23_N23
\PCPreg|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(11));

-- Location: LCCOMB_X36_Y23_N22
\Fetch_pipeline_reg|reg_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~11_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \PCPreg|reg_out\(11),
	combout => \Fetch_pipeline_reg|reg_out~11_combout\);

-- Location: LCCOMB_X36_Y23_N30
\Fetch_pipeline_reg|reg_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[11]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out~11_combout\,
	combout => \Fetch_pipeline_reg|reg_out[11]~feeder_combout\);

-- Location: FF_X36_Y23_N31
\Fetch_pipeline_reg|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(11));

-- Location: LCCOMB_X35_Y22_N22
\PCP1[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[12]~37_combout\ = (PCP1(12) & (!\PCP1[11]~36\)) # (!PCP1(12) & ((\PCP1[11]~36\) # (GND)))
-- \PCP1[12]~38\ = CARRY((!\PCP1[11]~36\) # (!PCP1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(12),
	datad => VCC,
	cin => \PCP1[11]~36\,
	combout => \PCP1[12]~37_combout\,
	cout => \PCP1[12]~38\);

-- Location: FF_X35_Y22_N23
\PCP1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[12]~37_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(12));

-- Location: LCCOMB_X35_Y23_N16
\PCPreg|reg_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~11_combout\ = (!\reset~input_o\ & PCP1(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => PCP1(12),
	combout => \PCPreg|reg_out~11_combout\);

-- Location: FF_X35_Y23_N17
\PCPreg|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(12));

-- Location: LCCOMB_X36_Y23_N6
\Fetch_pipeline_reg|reg_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~12_combout\ = (\PCPreg|reg_out\(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCPreg|reg_out\(12),
	datac => \reset~input_o\,
	combout => \Fetch_pipeline_reg|reg_out~12_combout\);

-- Location: FF_X37_Y23_N7
\Fetch_pipeline_reg|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Fetch_pipeline_reg|reg_out~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(12));

-- Location: LCCOMB_X35_Y22_N24
\PCP1[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[13]~39_combout\ = (PCP1(13) & (\PCP1[12]~38\ $ (GND))) # (!PCP1(13) & (!\PCP1[12]~38\ & VCC))
-- \PCP1[13]~40\ = CARRY((PCP1(13) & !\PCP1[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PCP1(13),
	datad => VCC,
	cin => \PCP1[12]~38\,
	combout => \PCP1[13]~39_combout\,
	cout => \PCP1[13]~40\);

-- Location: FF_X35_Y22_N25
\PCP1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[13]~39_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(13));

-- Location: LCCOMB_X36_Y23_N12
\PCPreg|reg_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~12_combout\ = (!\reset~input_o\ & PCP1(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => PCP1(13),
	combout => \PCPreg|reg_out~12_combout\);

-- Location: FF_X36_Y23_N13
\PCPreg|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(13));

-- Location: LCCOMB_X36_Y23_N20
\Fetch_pipeline_reg|reg_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~13_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PCPreg|reg_out\(13),
	combout => \Fetch_pipeline_reg|reg_out~13_combout\);

-- Location: FF_X36_Y23_N21
\Fetch_pipeline_reg|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(13));

-- Location: LCCOMB_X35_Y22_N26
\PCP1[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[14]~41_combout\ = (PCP1(14) & (!\PCP1[13]~40\)) # (!PCP1(14) & ((\PCP1[13]~40\) # (GND)))
-- \PCP1[14]~42\ = CARRY((!\PCP1[13]~40\) # (!PCP1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PCP1(14),
	datad => VCC,
	cin => \PCP1[13]~40\,
	combout => \PCP1[14]~41_combout\,
	cout => \PCP1[14]~42\);

-- Location: FF_X35_Y22_N27
\PCP1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[14]~41_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(14));

-- Location: LCCOMB_X35_Y23_N18
\PCPreg|reg_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~13_combout\ = (PCP1(14) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PCP1(14),
	datad => \reset~input_o\,
	combout => \PCPreg|reg_out~13_combout\);

-- Location: FF_X35_Y23_N19
\PCPreg|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(14));

-- Location: LCCOMB_X36_Y23_N4
\Fetch_pipeline_reg|reg_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~14_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PCPreg|reg_out\(14),
	combout => \Fetch_pipeline_reg|reg_out~14_combout\);

-- Location: LCCOMB_X35_Y23_N28
\Fetch_pipeline_reg|reg_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[14]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~14_combout\,
	combout => \Fetch_pipeline_reg|reg_out[14]~feeder_combout\);

-- Location: FF_X35_Y23_N29
\Fetch_pipeline_reg|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(14));

-- Location: LCCOMB_X35_Y22_N28
\PCP1[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCP1[15]~43_combout\ = \PCP1[14]~42\ $ (!PCP1(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PCP1(15),
	cin => \PCP1[14]~42\,
	combout => \PCP1[15]~43_combout\);

-- Location: FF_X35_Y22_N29
\PCP1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCP1[15]~43_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PCP1(15));

-- Location: LCCOMB_X36_Y23_N26
\PCPreg|reg_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCPreg|reg_out~14_combout\ = (!\reset~input_o\ & PCP1(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => PCP1(15),
	combout => \PCPreg|reg_out~14_combout\);

-- Location: FF_X36_Y23_N27
\PCPreg|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PCPreg|reg_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCPreg|reg_out\(15));

-- Location: LCCOMB_X36_Y23_N28
\Fetch_pipeline_reg|reg_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~15_combout\ = (!\reset~input_o\ & \PCPreg|reg_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \PCPreg|reg_out\(15),
	combout => \Fetch_pipeline_reg|reg_out~15_combout\);

-- Location: LCCOMB_X36_Y23_N10
\Fetch_pipeline_reg|reg_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[15]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~15_combout\,
	combout => \Fetch_pipeline_reg|reg_out[15]~feeder_combout\);

-- Location: FF_X36_Y23_N11
\Fetch_pipeline_reg|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(15));

-- Location: IOIBUF_X0_Y26_N15
\program~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program,
	o => \program~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\instr_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(0),
	o => \instr_data[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\instr_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(0),
	o => \instr_address[0]~input_o\);

-- Location: LCCOMB_X34_Y22_N0
\Programming_Mux|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[0]~0_combout\ = (\program~input_o\ & \instr_address[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program~input_o\,
	datac => \instr_address[0]~input_o\,
	combout => \Programming_Mux|output[0]~0_combout\);

-- Location: IOIBUF_X34_Y0_N1
\instr_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(1),
	o => \instr_address[1]~input_o\);

-- Location: LCCOMB_X34_Y22_N22
\Programming_Mux|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[1]~1_combout\ = (\program~input_o\ & ((\instr_address[1]~input_o\))) # (!\program~input_o\ & (PCP1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program~input_o\,
	datac => PCP1(1),
	datad => \instr_address[1]~input_o\,
	combout => \Programming_Mux|output[1]~1_combout\);

-- Location: IOIBUF_X53_Y22_N1
\instr_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(2),
	o => \instr_address[2]~input_o\);

-- Location: LCCOMB_X34_Y22_N24
\Programming_Mux|output[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[2]~2_combout\ = (\program~input_o\ & (\instr_address[2]~input_o\)) # (!\program~input_o\ & ((PCP1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_address[2]~input_o\,
	datac => \program~input_o\,
	datad => PCP1(2),
	combout => \Programming_Mux|output[2]~2_combout\);

-- Location: IOIBUF_X34_Y0_N15
\instr_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(3),
	o => \instr_address[3]~input_o\);

-- Location: LCCOMB_X34_Y22_N20
\Programming_Mux|output[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[3]~3_combout\ = (\program~input_o\ & (\instr_address[3]~input_o\)) # (!\program~input_o\ & ((PCP1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_address[3]~input_o\,
	datac => \program~input_o\,
	datad => PCP1(3),
	combout => \Programming_Mux|output[3]~3_combout\);

-- Location: IOIBUF_X53_Y6_N22
\instr_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(4),
	o => \instr_address[4]~input_o\);

-- Location: LCCOMB_X34_Y22_N26
\Programming_Mux|output[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[4]~4_combout\ = (\program~input_o\ & (\instr_address[4]~input_o\)) # (!\program~input_o\ & ((PCP1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_address[4]~input_o\,
	datac => \program~input_o\,
	datad => PCP1(4),
	combout => \Programming_Mux|output[4]~4_combout\);

-- Location: IOIBUF_X0_Y8_N22
\instr_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(5),
	o => \instr_address[5]~input_o\);

-- Location: LCCOMB_X34_Y22_N28
\Programming_Mux|output[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[5]~5_combout\ = (\program~input_o\ & (\instr_address[5]~input_o\)) # (!\program~input_o\ & ((PCP1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program~input_o\,
	datab => \instr_address[5]~input_o\,
	datac => PCP1(5),
	combout => \Programming_Mux|output[5]~5_combout\);

-- Location: IOIBUF_X7_Y34_N1
\instr_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(6),
	o => \instr_address[6]~input_o\);

-- Location: LCCOMB_X34_Y22_N30
\Programming_Mux|output[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[6]~6_combout\ = (\program~input_o\ & ((\instr_address[6]~input_o\))) # (!\program~input_o\ & (PCP1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program~input_o\,
	datac => PCP1(6),
	datad => \instr_address[6]~input_o\,
	combout => \Programming_Mux|output[6]~6_combout\);

-- Location: IOIBUF_X53_Y11_N8
\instr_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(7),
	o => \instr_address[7]~input_o\);

-- Location: LCCOMB_X34_Y22_N4
\Programming_Mux|output[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[7]~7_combout\ = (\program~input_o\ & ((\instr_address[7]~input_o\))) # (!\program~input_o\ & (PCP1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program~input_o\,
	datac => PCP1(7),
	datad => \instr_address[7]~input_o\,
	combout => \Programming_Mux|output[7]~7_combout\);

-- Location: LCCOMB_X30_Y23_N8
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X34_Y22_N2
\Programming_Mux|output[0]~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Programming_Mux|output[0]~0_wirecell_combout\ = !\Programming_Mux|output[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Programming_Mux|output[0]~0_combout\,
	combout => \Programming_Mux|output[0]~0_wirecell_combout\);

-- Location: LCCOMB_X34_Y22_N6
\Instruction_Memory|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~0_combout\ = (\Programming_Mux|output[1]~1_combout\ & (\Programming_Mux|output[0]~0_combout\ $ (VCC))) # (!\Programming_Mux|output[1]~1_combout\ & (\Programming_Mux|output[0]~0_combout\ & VCC))
-- \Instruction_Memory|Add0~1\ = CARRY((\Programming_Mux|output[1]~1_combout\ & \Programming_Mux|output[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Programming_Mux|output[1]~1_combout\,
	datab => \Programming_Mux|output[0]~0_combout\,
	datad => VCC,
	combout => \Instruction_Memory|Add0~0_combout\,
	cout => \Instruction_Memory|Add0~1\);

-- Location: LCCOMB_X34_Y22_N8
\Instruction_Memory|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~2_combout\ = (\Programming_Mux|output[2]~2_combout\ & (!\Instruction_Memory|Add0~1\)) # (!\Programming_Mux|output[2]~2_combout\ & ((\Instruction_Memory|Add0~1\) # (GND)))
-- \Instruction_Memory|Add0~3\ = CARRY((!\Instruction_Memory|Add0~1\) # (!\Programming_Mux|output[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Programming_Mux|output[2]~2_combout\,
	datad => VCC,
	cin => \Instruction_Memory|Add0~1\,
	combout => \Instruction_Memory|Add0~2_combout\,
	cout => \Instruction_Memory|Add0~3\);

-- Location: LCCOMB_X34_Y22_N10
\Instruction_Memory|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~4_combout\ = (\Programming_Mux|output[3]~3_combout\ & (\Instruction_Memory|Add0~3\ $ (GND))) # (!\Programming_Mux|output[3]~3_combout\ & (!\Instruction_Memory|Add0~3\ & VCC))
-- \Instruction_Memory|Add0~5\ = CARRY((\Programming_Mux|output[3]~3_combout\ & !\Instruction_Memory|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Programming_Mux|output[3]~3_combout\,
	datad => VCC,
	cin => \Instruction_Memory|Add0~3\,
	combout => \Instruction_Memory|Add0~4_combout\,
	cout => \Instruction_Memory|Add0~5\);

-- Location: LCCOMB_X34_Y22_N12
\Instruction_Memory|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~6_combout\ = (\Programming_Mux|output[4]~4_combout\ & (!\Instruction_Memory|Add0~5\)) # (!\Programming_Mux|output[4]~4_combout\ & ((\Instruction_Memory|Add0~5\) # (GND)))
-- \Instruction_Memory|Add0~7\ = CARRY((!\Instruction_Memory|Add0~5\) # (!\Programming_Mux|output[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Programming_Mux|output[4]~4_combout\,
	datad => VCC,
	cin => \Instruction_Memory|Add0~5\,
	combout => \Instruction_Memory|Add0~6_combout\,
	cout => \Instruction_Memory|Add0~7\);

-- Location: LCCOMB_X34_Y22_N14
\Instruction_Memory|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~8_combout\ = (\Programming_Mux|output[5]~5_combout\ & (\Instruction_Memory|Add0~7\ $ (GND))) # (!\Programming_Mux|output[5]~5_combout\ & (!\Instruction_Memory|Add0~7\ & VCC))
-- \Instruction_Memory|Add0~9\ = CARRY((\Programming_Mux|output[5]~5_combout\ & !\Instruction_Memory|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Programming_Mux|output[5]~5_combout\,
	datad => VCC,
	cin => \Instruction_Memory|Add0~7\,
	combout => \Instruction_Memory|Add0~8_combout\,
	cout => \Instruction_Memory|Add0~9\);

-- Location: LCCOMB_X34_Y22_N16
\Instruction_Memory|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~10_combout\ = (\Programming_Mux|output[6]~6_combout\ & (!\Instruction_Memory|Add0~9\)) # (!\Programming_Mux|output[6]~6_combout\ & ((\Instruction_Memory|Add0~9\) # (GND)))
-- \Instruction_Memory|Add0~11\ = CARRY((!\Instruction_Memory|Add0~9\) # (!\Programming_Mux|output[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Programming_Mux|output[6]~6_combout\,
	datad => VCC,
	cin => \Instruction_Memory|Add0~9\,
	combout => \Instruction_Memory|Add0~10_combout\,
	cout => \Instruction_Memory|Add0~11\);

-- Location: LCCOMB_X34_Y22_N18
\Instruction_Memory|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Instruction_Memory|Add0~12_combout\ = \Programming_Mux|output[7]~7_combout\ $ (!\Instruction_Memory|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Programming_Mux|output[7]~7_combout\,
	cin => \Instruction_Memory|Add0~11\,
	combout => \Instruction_Memory|Add0~12_combout\);

-- Location: IOIBUF_X9_Y34_N22
\instr_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(1),
	o => \instr_data[1]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\instr_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(2),
	o => \instr_data[2]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\instr_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(3),
	o => \instr_data[3]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\instr_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(4),
	o => \instr_data[4]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\instr_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(5),
	o => \instr_data[5]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\instr_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(6),
	o => \instr_data[6]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\instr_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(7),
	o => \instr_data[7]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\instr_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(8),
	o => \instr_data[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\instr_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(9),
	o => \instr_data[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\instr_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(10),
	o => \instr_data[10]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\instr_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(11),
	o => \instr_data[11]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\instr_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(12),
	o => \instr_data[12]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\instr_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(13),
	o => \instr_data[13]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\instr_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(14),
	o => \instr_data[14]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\instr_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_data(15),
	o => \instr_data[15]~input_o\);

-- Location: M9K_X33_Y23_N0
\Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "InstrMem:Instruction_Memory|altsyncram:mem_rtl_0|altsyncram_cgu1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \program~input_o\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N22
\Fetch_pipeline_reg|reg_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~17_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~17_combout\);

-- Location: FF_X32_Y23_N23
\Fetch_pipeline_reg|reg_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(28));

-- Location: LCCOMB_X32_Y23_N8
\Fetch_pipeline_reg|reg_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~20_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~20_combout\);

-- Location: FF_X32_Y23_N9
\Fetch_pipeline_reg|reg_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(29));

-- Location: LCCOMB_X29_Y23_N2
\Decoder_module2|Decode_out[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[20]~3_combout\ = (!\Fetch_pipeline_reg|reg_out\(28) & !\Fetch_pipeline_reg|reg_out\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datac => \Fetch_pipeline_reg|reg_out\(29),
	combout => \Decoder_module2|Decode_out[20]~3_combout\);

-- Location: LCCOMB_X32_Y23_N2
\Fetch_pipeline_reg|reg_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~19_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~19_combout\);

-- Location: FF_X32_Y23_N3
\Fetch_pipeline_reg|reg_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(31));

-- Location: LCCOMB_X32_Y23_N4
\Fetch_pipeline_reg|reg_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~18_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~18_combout\);

-- Location: FF_X32_Y23_N5
\Fetch_pipeline_reg|reg_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(30));

-- Location: LCCOMB_X29_Y23_N28
\Decoder_module2|Decode_out[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[17]~2_combout\ = (!\Fetch_pipeline_reg|reg_out\(31) & ((\Fetch_pipeline_reg|reg_out\(28)) # (\Fetch_pipeline_reg|reg_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	combout => \Decoder_module2|Decode_out[17]~2_combout\);

-- Location: LCCOMB_X32_Y23_N28
\Fetch_pipeline_reg|reg_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~16_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~16_combout\);

-- Location: FF_X32_Y23_N29
\Fetch_pipeline_reg|reg_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(16));

-- Location: LCCOMB_X29_Y23_N12
\Decoder_module2|Decode_out[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[16]~4_combout\ = (\Fetch_pipeline_reg|reg_out\(16) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Decoder_module2|Decode_out[20]~3_combout\ & \Fetch_pipeline_reg|reg_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[20]~3_combout\,
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Fetch_pipeline_reg|reg_out\(16),
	combout => \Decoder_module2|Decode_out[16]~4_combout\);

-- Location: LCCOMB_X32_Y23_N26
\Fetch_pipeline_reg|reg_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~21_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~21_combout\);

-- Location: FF_X32_Y23_N27
\Fetch_pipeline_reg|reg_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(17));

-- Location: LCCOMB_X29_Y23_N6
\Decoder_module2|Decode_out[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[17]~5_combout\ = (\Fetch_pipeline_reg|reg_out\(17) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Decoder_module2|Decode_out[20]~3_combout\ & \Fetch_pipeline_reg|reg_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[20]~3_combout\,
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Fetch_pipeline_reg|reg_out\(17),
	combout => \Decoder_module2|Decode_out[17]~5_combout\);

-- Location: LCCOMB_X32_Y23_N20
\Fetch_pipeline_reg|reg_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~22_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~22_combout\);

-- Location: FF_X32_Y23_N21
\Fetch_pipeline_reg|reg_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(18));

-- Location: LCCOMB_X29_Y23_N16
\Decoder_module2|Decode_out[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[18]~6_combout\ = (\Fetch_pipeline_reg|reg_out\(18) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(31) & \Decoder_module2|Decode_out[20]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(18),
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Decoder_module2|Decode_out[20]~3_combout\,
	combout => \Decoder_module2|Decode_out[18]~6_combout\);

-- Location: LCCOMB_X32_Y23_N6
\Fetch_pipeline_reg|reg_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~23_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~23_combout\);

-- Location: FF_X32_Y23_N7
\Fetch_pipeline_reg|reg_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(19));

-- Location: LCCOMB_X29_Y23_N26
\Decoder_module2|Decode_out[19]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[19]~7_combout\ = (\Fetch_pipeline_reg|reg_out\(19) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Decoder_module2|Decode_out[20]~3_combout\ & \Fetch_pipeline_reg|reg_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[20]~3_combout\,
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Fetch_pipeline_reg|reg_out\(19),
	combout => \Decoder_module2|Decode_out[19]~7_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Fetch_pipeline_reg|reg_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~24_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~24_combout\);

-- Location: FF_X32_Y23_N13
\Fetch_pipeline_reg|reg_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(20));

-- Location: LCCOMB_X29_Y23_N0
\Decoder_module2|Decode_out[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[20]~8_combout\ = (\Fetch_pipeline_reg|reg_out\(20) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(31) & \Decoder_module2|Decode_out[20]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(20),
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Decoder_module2|Decode_out[20]~3_combout\,
	combout => \Decoder_module2|Decode_out[20]~8_combout\);

-- Location: LCCOMB_X32_Y23_N10
\Fetch_pipeline_reg|reg_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~25_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~25_combout\);

-- Location: FF_X32_Y23_N11
\Fetch_pipeline_reg|reg_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(21));

-- Location: LCCOMB_X29_Y23_N10
\Decoder_module2|Decode_out[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[22]~9_combout\ = (\Fetch_pipeline_reg|reg_out\(21) & (!\Fetch_pipeline_reg|reg_out\(29) & !\Fetch_pipeline_reg|reg_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(21),
	datab => \Fetch_pipeline_reg|reg_out\(29),
	datac => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[22]~9_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Decoder_module2|Decode_out[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[21]~10_combout\ = (\Fetch_pipeline_reg|reg_out\(21) & ((\Decoder_module2|Decode_out[17]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(31) & \Decoder_module2|Decode_out[22]~9_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(21) & 
-- (((\Fetch_pipeline_reg|reg_out\(31) & \Decoder_module2|Decode_out[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(21),
	datab => \Decoder_module2|Decode_out[17]~2_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Decoder_module2|Decode_out[22]~9_combout\,
	combout => \Decoder_module2|Decode_out[21]~10_combout\);

-- Location: LCCOMB_X28_Y23_N10
\Decoder_module2|Decode_out[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[23]~12_combout\ = (!\Fetch_pipeline_reg|reg_out\(29) & ((\Fetch_pipeline_reg|reg_out\(28) & (!\Fetch_pipeline_reg|reg_out\(31))) # (!\Fetch_pipeline_reg|reg_out\(28) & ((\Fetch_pipeline_reg|reg_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[23]~12_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Decoder_module2|Decode_out[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[23]~11_combout\ = (\Fetch_pipeline_reg|reg_out\(29) & (!\Fetch_pipeline_reg|reg_out\(31) & ((\Fetch_pipeline_reg|reg_out\(30)) # (\Fetch_pipeline_reg|reg_out\(28))))) # (!\Fetch_pipeline_reg|reg_out\(29) & 
-- (\Fetch_pipeline_reg|reg_out\(31) & (!\Fetch_pipeline_reg|reg_out\(30) & !\Fetch_pipeline_reg|reg_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[23]~11_combout\);

-- Location: LCCOMB_X32_Y23_N24
\Fetch_pipeline_reg|reg_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~26_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~26_combout\);

-- Location: FF_X32_Y23_N25
\Fetch_pipeline_reg|reg_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(22));

-- Location: LCCOMB_X28_Y23_N0
\Decoder_module2|Decode_out[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[22]~13_combout\ = (\Decoder_module2|Decode_out[23]~12_combout\ & ((\Fetch_pipeline_reg|reg_out\(21)) # ((\Decoder_module2|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(22))))) # 
-- (!\Decoder_module2|Decode_out[23]~12_combout\ & (((\Decoder_module2|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[23]~12_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(21),
	datac => \Decoder_module2|Decode_out[23]~11_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(22),
	combout => \Decoder_module2|Decode_out[22]~13_combout\);

-- Location: LCCOMB_X32_Y23_N30
\Fetch_pipeline_reg|reg_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~27_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~27_combout\);

-- Location: FF_X32_Y23_N31
\Fetch_pipeline_reg|reg_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(23));

-- Location: LCCOMB_X28_Y23_N18
\Decoder_module2|Decode_out[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[23]~14_combout\ = (\Decoder_module2|Decode_out[23]~12_combout\ & ((\Fetch_pipeline_reg|reg_out\(21)) # ((\Decoder_module2|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(23))))) # 
-- (!\Decoder_module2|Decode_out[23]~12_combout\ & (((\Decoder_module2|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[23]~12_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(21),
	datac => \Decoder_module2|Decode_out[23]~11_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(23),
	combout => \Decoder_module2|Decode_out[23]~14_combout\);

-- Location: LCCOMB_X28_Y23_N12
\Decoder_module2|Decode_out[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[24]~15_combout\ = (\Fetch_pipeline_reg|reg_out\(31) & (((\Fetch_pipeline_reg|reg_out\(30))))) # (!\Fetch_pipeline_reg|reg_out\(31) & (!\Fetch_pipeline_reg|reg_out\(29) & ((\Fetch_pipeline_reg|reg_out\(30)) # 
-- (\Fetch_pipeline_reg|reg_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[24]~15_combout\);

-- Location: LCCOMB_X28_Y23_N14
\Decoder_module2|Decode_out[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[24]~16_combout\ = (!\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(29) & (!\Fetch_pipeline_reg|reg_out\(31) & \Fetch_pipeline_reg|reg_out\(28))) # (!\Fetch_pipeline_reg|reg_out\(29) & 
-- (\Fetch_pipeline_reg|reg_out\(31) & !\Fetch_pipeline_reg|reg_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[24]~16_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Decoder_module2|Decode_out[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[24]~40_combout\ = (\Fetch_pipeline_reg|reg_out\(21) & (((!\Fetch_pipeline_reg|reg_out\(29) & !\Fetch_pipeline_reg|reg_out\(28))) # (!\Fetch_pipeline_reg|reg_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(21),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[24]~40_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Fetch_pipeline_reg|reg_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~28_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~28_combout\);

-- Location: FF_X32_Y23_N17
\Fetch_pipeline_reg|reg_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(24));

-- Location: LCCOMB_X28_Y23_N8
\Decoder_module2|Decode_out[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[24]~17_combout\ = (\Decoder_module2|Decode_out[24]~15_combout\ & (!\Decoder_module2|Decode_out[24]~16_combout\ & (\Decoder_module2|Decode_out[24]~40_combout\))) # (!\Decoder_module2|Decode_out[24]~15_combout\ & 
-- (\Decoder_module2|Decode_out[24]~16_combout\ & ((\Fetch_pipeline_reg|reg_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[24]~15_combout\,
	datab => \Decoder_module2|Decode_out[24]~16_combout\,
	datac => \Decoder_module2|Decode_out[24]~40_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(24),
	combout => \Decoder_module2|Decode_out[24]~17_combout\);

-- Location: LCCOMB_X29_Y23_N30
\Decoder_module2|Decode_out[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[25]~18_combout\ = (!\Fetch_pipeline_reg|reg_out\(28) & (!\Fetch_pipeline_reg|reg_out\(31) & (!\Fetch_pipeline_reg|reg_out\(30) & \Fetch_pipeline_reg|reg_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(16),
	combout => \Decoder_module2|Decode_out[25]~18_combout\);

-- Location: LCCOMB_X29_Y23_N8
\Decoder_module2|Decode_out[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[26]~19_combout\ = (!\Fetch_pipeline_reg|reg_out\(28) & (!\Fetch_pipeline_reg|reg_out\(31) & (!\Fetch_pipeline_reg|reg_out\(30) & \Fetch_pipeline_reg|reg_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(17),
	combout => \Decoder_module2|Decode_out[26]~19_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Decoder_module2|Decode_out[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[27]~20_combout\ = (!\Fetch_pipeline_reg|reg_out\(29) & (!\Fetch_pipeline_reg|reg_out\(31) & !\Fetch_pipeline_reg|reg_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	combout => \Decoder_module2|Decode_out[27]~20_combout\);

-- Location: LCCOMB_X28_Y23_N24
\Decoder_module2|Decode_out[28]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[28]~21_combout\ = (!\Fetch_pipeline_reg|reg_out\(29) & (!\Fetch_pipeline_reg|reg_out\(31) & ((!\Fetch_pipeline_reg|reg_out\(28)) # (!\Fetch_pipeline_reg|reg_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[28]~21_combout\);

-- Location: LCCOMB_X28_Y23_N6
\Decoder_module2|Decode_out[30]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[30]~22_combout\ = (\Fetch_pipeline_reg|reg_out\(31) & ((\Fetch_pipeline_reg|reg_out\(29)) # ((\Fetch_pipeline_reg|reg_out\(30))))) # (!\Fetch_pipeline_reg|reg_out\(31) & (((\Fetch_pipeline_reg|reg_out\(30) & 
-- \Fetch_pipeline_reg|reg_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[30]~22_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Decoder_module2|Decode_out[32]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[32]~23_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & (!\Fetch_pipeline_reg|reg_out\(29) & (\Fetch_pipeline_reg|reg_out\(31) $ (\Fetch_pipeline_reg|reg_out\(28))))) # (!\Fetch_pipeline_reg|reg_out\(30) & 
-- (((!\Fetch_pipeline_reg|reg_out\(31) & !\Fetch_pipeline_reg|reg_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[32]~23_combout\);

-- Location: LCCOMB_X28_Y23_N26
\Decoder_module2|Decode_out[32]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[32]~24_combout\ = ((\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(22)))) # (!\Fetch_pipeline_reg|reg_out\(30) & (\Fetch_pipeline_reg|reg_out\(19)))) # (!\Decoder_module2|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(19),
	datab => \Decoder_module2|Decode_out[32]~23_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(22),
	combout => \Decoder_module2|Decode_out[32]~24_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Decoder_module2|Decode_out[33]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[33]~25_combout\ = ((\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(23)))) # (!\Fetch_pipeline_reg|reg_out\(30) & (\Fetch_pipeline_reg|reg_out\(20)))) # (!\Decoder_module2|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(20),
	datab => \Decoder_module2|Decode_out[32]~23_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(23),
	combout => \Decoder_module2|Decode_out[33]~25_combout\);

-- Location: LCCOMB_X36_Y23_N0
\Decoder_module2|Decode_out[34]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[34]~26_combout\ = ((\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(24)))) # (!\Fetch_pipeline_reg|reg_out\(30) & (\Fetch_pipeline_reg|reg_out\(21)))) # (!\Decoder_module2|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(30),
	datab => \Fetch_pipeline_reg|reg_out\(21),
	datac => \Fetch_pipeline_reg|reg_out\(24),
	datad => \Decoder_module2|Decode_out[32]~23_combout\,
	combout => \Decoder_module2|Decode_out[34]~26_combout\);

-- Location: LCCOMB_X28_Y23_N2
\Decoder_module2|Decode_out[38]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[38]~27_combout\ = (\Fetch_pipeline_reg|reg_out\(31)) # ((\Fetch_pipeline_reg|reg_out\(28)) # ((\Fetch_pipeline_reg|reg_out\(29) & \Fetch_pipeline_reg|reg_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[38]~27_combout\);

-- Location: LCCOMB_X29_Y23_N14
\Decoder_module2|Decode_out[36]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[36]~28_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & (((\Fetch_pipeline_reg|reg_out\(31))))) # (!\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(29)) # ((!\Fetch_pipeline_reg|reg_out\(28) & 
-- \Fetch_pipeline_reg|reg_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datab => \Fetch_pipeline_reg|reg_out\(30),
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Fetch_pipeline_reg|reg_out\(29),
	combout => \Decoder_module2|Decode_out[36]~28_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Fetch_pipeline_reg|reg_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~29_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~29_combout\);

-- Location: FF_X32_Y23_N19
\Fetch_pipeline_reg|reg_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(25));

-- Location: LCCOMB_X36_Y23_N2
\Decoder_module2|Decode_out[36]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[36]~29_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(25)) # ((!\Decoder_module2|Decode_out[20]~3_combout\ & \Decoder_module2|Decode_out[36]~28_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(30) & 
-- (((\Decoder_module2|Decode_out[36]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(30),
	datab => \Decoder_module2|Decode_out[20]~3_combout\,
	datac => \Decoder_module2|Decode_out[36]~28_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(25),
	combout => \Decoder_module2|Decode_out[36]~29_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Decoder_module2|Decode_out[36]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[36]~30_combout\ = (\Decoder_module2|Decode_out[38]~27_combout\ & ((\Decoder_module2|Decode_out[36]~29_combout\) # ((\Fetch_pipeline_reg|reg_out\(22) & !\Fetch_pipeline_reg|reg_out\(30))))) # 
-- (!\Decoder_module2|Decode_out[38]~27_combout\ & (\Fetch_pipeline_reg|reg_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(22),
	datab => \Fetch_pipeline_reg|reg_out\(30),
	datac => \Decoder_module2|Decode_out[38]~27_combout\,
	datad => \Decoder_module2|Decode_out[36]~29_combout\,
	combout => \Decoder_module2|Decode_out[36]~30_combout\);

-- Location: LCCOMB_X32_Y23_N0
\Fetch_pipeline_reg|reg_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~30_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~30_combout\);

-- Location: FF_X32_Y23_N1
\Fetch_pipeline_reg|reg_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(26));

-- Location: LCCOMB_X28_Y24_N0
\Decoder_module2|Decode_out[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[37]~32_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & (\Fetch_pipeline_reg|reg_out\(26) $ (\Fetch_pipeline_reg|reg_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fetch_pipeline_reg|reg_out\(30),
	datac => \Fetch_pipeline_reg|reg_out\(26),
	datad => \Fetch_pipeline_reg|reg_out\(23),
	combout => \Decoder_module2|Decode_out[37]~32_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Decoder_module2|Decode_out[37]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[37]~31_combout\ = (\Fetch_pipeline_reg|reg_out\(29) & ((\Fetch_pipeline_reg|reg_out\(31)) # ((!\Fetch_pipeline_reg|reg_out\(30))))) # (!\Fetch_pipeline_reg|reg_out\(29) & (\Fetch_pipeline_reg|reg_out\(31) & 
-- (\Fetch_pipeline_reg|reg_out\(30) $ (!\Fetch_pipeline_reg|reg_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(29),
	datab => \Fetch_pipeline_reg|reg_out\(31),
	datac => \Fetch_pipeline_reg|reg_out\(30),
	datad => \Fetch_pipeline_reg|reg_out\(28),
	combout => \Decoder_module2|Decode_out[37]~31_combout\);

-- Location: LCCOMB_X28_Y24_N22
\Decoder_module2|Decode_out[37]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[37]~33_combout\ = (\Decoder_module2|Decode_out[38]~27_combout\ & ((\Decoder_module2|Decode_out[37]~31_combout\) # (\Decoder_module2|Decode_out[37]~32_combout\ $ (\Fetch_pipeline_reg|reg_out\(23))))) # 
-- (!\Decoder_module2|Decode_out[38]~27_combout\ & (((\Fetch_pipeline_reg|reg_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module2|Decode_out[38]~27_combout\,
	datab => \Decoder_module2|Decode_out[37]~32_combout\,
	datac => \Decoder_module2|Decode_out[37]~31_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(23),
	combout => \Decoder_module2|Decode_out[37]~33_combout\);

-- Location: LCCOMB_X32_Y23_N14
\Fetch_pipeline_reg|reg_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~31_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	combout => \Fetch_pipeline_reg|reg_out~31_combout\);

-- Location: FF_X32_Y23_N15
\Fetch_pipeline_reg|reg_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(27));

-- Location: LCCOMB_X36_Y23_N8
\Decoder_module2|Decode_out[38]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[38]~34_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & ((\Fetch_pipeline_reg|reg_out\(27)) # ((!\Decoder_module2|Decode_out[20]~3_combout\ & \Decoder_module2|Decode_out[36]~28_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(30) & 
-- (((\Decoder_module2|Decode_out[36]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(30),
	datab => \Decoder_module2|Decode_out[20]~3_combout\,
	datac => \Decoder_module2|Decode_out[36]~28_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(27),
	combout => \Decoder_module2|Decode_out[38]~34_combout\);

-- Location: LCCOMB_X36_Y23_N18
\Decoder_module2|Decode_out[38]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[38]~35_combout\ = (\Decoder_module2|Decode_out[38]~27_combout\ & ((\Decoder_module2|Decode_out[38]~34_combout\) # ((!\Fetch_pipeline_reg|reg_out\(30) & \Fetch_pipeline_reg|reg_out\(24))))) # 
-- (!\Decoder_module2|Decode_out[38]~27_combout\ & (((\Fetch_pipeline_reg|reg_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(30),
	datab => \Fetch_pipeline_reg|reg_out\(24),
	datac => \Decoder_module2|Decode_out[38]~27_combout\,
	datad => \Decoder_module2|Decode_out[38]~34_combout\,
	combout => \Decoder_module2|Decode_out[38]~35_combout\);

-- Location: LCCOMB_X29_Y23_N24
\Decoder_module2|Decode_out[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[40]~36_combout\ = (\Fetch_pipeline_reg|reg_out\(30) & (!\Fetch_pipeline_reg|reg_out\(28) & (!\Fetch_pipeline_reg|reg_out\(31) & !\Fetch_pipeline_reg|reg_out\(29)))) # (!\Fetch_pipeline_reg|reg_out\(30) & 
-- (((!\Fetch_pipeline_reg|reg_out\(29)) # (!\Fetch_pipeline_reg|reg_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(28),
	datab => \Fetch_pipeline_reg|reg_out\(30),
	datac => \Fetch_pipeline_reg|reg_out\(31),
	datad => \Fetch_pipeline_reg|reg_out\(29),
	combout => \Decoder_module2|Decode_out[40]~36_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Decoder_module2|Decode_out[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[40]~37_combout\ = (\Fetch_pipeline_reg|reg_out\(25)) # (!\Decoder_module2|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder_module2|Decode_out[40]~36_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(25),
	combout => \Decoder_module2|Decode_out[40]~37_combout\);

-- Location: LCCOMB_X29_Y23_N22
\Decoder_module2|Decode_out[41]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[41]~38_combout\ = (\Fetch_pipeline_reg|reg_out\(26)) # (!\Decoder_module2|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder_module2|Decode_out[40]~36_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(26),
	combout => \Decoder_module2|Decode_out[41]~38_combout\);

-- Location: LCCOMB_X31_Y23_N10
\Decoder_module2|Decode_out[42]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module2|Decode_out[42]~39_combout\ = (\Fetch_pipeline_reg|reg_out\(27)) # (!\Decoder_module2|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fetch_pipeline_reg|reg_out\(27),
	datac => \Decoder_module2|Decode_out[40]~36_combout\,
	combout => \Decoder_module2|Decode_out[42]~39_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Fetch_pipeline_reg|reg_out[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[33]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~1_combout\,
	combout => \Fetch_pipeline_reg|reg_out[33]~feeder_combout\);

-- Location: FF_X31_Y22_N25
\Fetch_pipeline_reg|reg_out[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(33));

-- Location: LCCOMB_X32_Y22_N30
\Fetch_pipeline_reg|reg_out[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[34]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~2_combout\,
	combout => \Fetch_pipeline_reg|reg_out[34]~feeder_combout\);

-- Location: FF_X32_Y22_N31
\Fetch_pipeline_reg|reg_out[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(34));

-- Location: LCCOMB_X28_Y22_N22
\Fetch_pipeline_reg|reg_out[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[35]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~3_combout\,
	combout => \Fetch_pipeline_reg|reg_out[35]~feeder_combout\);

-- Location: FF_X28_Y22_N23
\Fetch_pipeline_reg|reg_out[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(35));

-- Location: FF_X36_Y23_N17
\Fetch_pipeline_reg|reg_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Fetch_pipeline_reg|reg_out~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(36));

-- Location: FF_X36_Y23_N23
\Fetch_pipeline_reg|reg_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Fetch_pipeline_reg|reg_out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(37));

-- Location: LCCOMB_X30_Y23_N0
\Fetch_pipeline_reg|reg_out[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[38]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~6_combout\,
	combout => \Fetch_pipeline_reg|reg_out[38]~feeder_combout\);

-- Location: FF_X30_Y23_N1
\Fetch_pipeline_reg|reg_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(38));

-- Location: LCCOMB_X31_Y22_N18
\Fetch_pipeline_reg|reg_out[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[39]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out~7_combout\,
	combout => \Fetch_pipeline_reg|reg_out[39]~feeder_combout\);

-- Location: FF_X31_Y22_N19
\Fetch_pipeline_reg|reg_out[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(39));

-- Location: LCCOMB_X31_Y22_N28
\Fetch_pipeline_reg|reg_out[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[40]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~8_combout\,
	combout => \Fetch_pipeline_reg|reg_out[40]~feeder_combout\);

-- Location: FF_X31_Y22_N29
\Fetch_pipeline_reg|reg_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(40));

-- Location: LCCOMB_X30_Y23_N30
\Fetch_pipeline_reg|reg_out[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[41]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~9_combout\,
	combout => \Fetch_pipeline_reg|reg_out[41]~feeder_combout\);

-- Location: FF_X30_Y23_N31
\Fetch_pipeline_reg|reg_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(41));

-- Location: LCCOMB_X31_Y22_N14
\Fetch_pipeline_reg|reg_out[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[42]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~10_combout\,
	combout => \Fetch_pipeline_reg|reg_out[42]~feeder_combout\);

-- Location: FF_X31_Y22_N15
\Fetch_pipeline_reg|reg_out[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(42));

-- Location: FF_X36_Y23_N29
\Fetch_pipeline_reg|reg_out[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Fetch_pipeline_reg|reg_out~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(43));

-- Location: FF_X36_Y23_N7
\Fetch_pipeline_reg|reg_out[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(44));

-- Location: LCCOMB_X37_Y23_N20
\Fetch_pipeline_reg|reg_out[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[45]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~13_combout\,
	combout => \Fetch_pipeline_reg|reg_out[45]~feeder_combout\);

-- Location: FF_X37_Y23_N21
\Fetch_pipeline_reg|reg_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(45));

-- Location: FF_X36_Y23_N5
\Fetch_pipeline_reg|reg_out[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(46));

-- Location: LCCOMB_X36_Y23_N14
\Fetch_pipeline_reg|reg_out[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out[47]~feeder_combout\ = \Fetch_pipeline_reg|reg_out~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Fetch_pipeline_reg|reg_out~15_combout\,
	combout => \Fetch_pipeline_reg|reg_out[47]~feeder_combout\);

-- Location: FF_X36_Y23_N15
\Fetch_pipeline_reg|reg_out[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(47));

-- Location: LCCOMB_X34_Y23_N18
\Fetch_pipeline_reg|reg_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~35_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a15\,
	combout => \Fetch_pipeline_reg|reg_out~35_combout\);

-- Location: FF_X34_Y23_N19
\Fetch_pipeline_reg|reg_out[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(63));

-- Location: LCCOMB_X34_Y23_N30
\Fetch_pipeline_reg|reg_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~33_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a12\,
	combout => \Fetch_pipeline_reg|reg_out~33_combout\);

-- Location: FF_X34_Y23_N31
\Fetch_pipeline_reg|reg_out[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(60));

-- Location: LCCOMB_X34_Y23_N28
\Fetch_pipeline_reg|reg_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~34_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a14\,
	combout => \Fetch_pipeline_reg|reg_out~34_combout\);

-- Location: FF_X34_Y23_N29
\Fetch_pipeline_reg|reg_out[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(62));

-- Location: LCCOMB_X35_Y23_N14
\Decoder_module1|Decode_out[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[18]~2_combout\ = (!\Fetch_pipeline_reg|reg_out\(63) & ((\Fetch_pipeline_reg|reg_out\(60)) # (\Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[18]~2_combout\);

-- Location: LCCOMB_X34_Y23_N8
\Fetch_pipeline_reg|reg_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~36_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a13\,
	combout => \Fetch_pipeline_reg|reg_out~36_combout\);

-- Location: FF_X34_Y23_N9
\Fetch_pipeline_reg|reg_out[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(61));

-- Location: LCCOMB_X35_Y23_N12
\Decoder_module1|Decode_out[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[19]~3_combout\ = (!\Fetch_pipeline_reg|reg_out\(60) & !\Fetch_pipeline_reg|reg_out\(61))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(61),
	combout => \Decoder_module1|Decode_out[19]~3_combout\);

-- Location: LCCOMB_X34_Y23_N24
\Fetch_pipeline_reg|reg_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~32_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Fetch_pipeline_reg|reg_out~32_combout\);

-- Location: FF_X34_Y23_N25
\Fetch_pipeline_reg|reg_out[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(48));

-- Location: LCCOMB_X35_Y23_N6
\Decoder_module1|Decode_out[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[16]~4_combout\ = (\Fetch_pipeline_reg|reg_out\(48) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(63) & \Decoder_module1|Decode_out[19]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Decoder_module1|Decode_out[18]~2_combout\,
	datac => \Decoder_module1|Decode_out[19]~3_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(48),
	combout => \Decoder_module1|Decode_out[16]~4_combout\);

-- Location: LCCOMB_X34_Y23_N22
\Fetch_pipeline_reg|reg_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~37_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \Fetch_pipeline_reg|reg_out~37_combout\);

-- Location: FF_X34_Y23_N23
\Fetch_pipeline_reg|reg_out[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(49));

-- Location: LCCOMB_X37_Y23_N22
\Decoder_module1|Decode_out[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[17]~5_combout\ = (\Fetch_pipeline_reg|reg_out\(49) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Decoder_module1|Decode_out[19]~3_combout\ & \Fetch_pipeline_reg|reg_out\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module1|Decode_out[19]~3_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(49),
	datac => \Fetch_pipeline_reg|reg_out\(63),
	datad => \Decoder_module1|Decode_out[18]~2_combout\,
	combout => \Decoder_module1|Decode_out[17]~5_combout\);

-- Location: LCCOMB_X34_Y23_N12
\Fetch_pipeline_reg|reg_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~38_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \Fetch_pipeline_reg|reg_out~38_combout\);

-- Location: FF_X34_Y23_N13
\Fetch_pipeline_reg|reg_out[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(50));

-- Location: LCCOMB_X35_Y23_N4
\Decoder_module1|Decode_out[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[18]~6_combout\ = (\Fetch_pipeline_reg|reg_out\(50) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(63) & \Decoder_module1|Decode_out[19]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Decoder_module1|Decode_out[19]~3_combout\,
	datac => \Decoder_module1|Decode_out[18]~2_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(50),
	combout => \Decoder_module1|Decode_out[18]~6_combout\);

-- Location: LCCOMB_X34_Y23_N14
\Fetch_pipeline_reg|reg_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~39_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \Fetch_pipeline_reg|reg_out~39_combout\);

-- Location: FF_X34_Y23_N15
\Fetch_pipeline_reg|reg_out[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(51));

-- Location: LCCOMB_X35_Y23_N30
\Decoder_module1|Decode_out[19]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[19]~7_combout\ = (\Fetch_pipeline_reg|reg_out\(51) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(63) & \Decoder_module1|Decode_out[19]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Decoder_module1|Decode_out[19]~3_combout\,
	datac => \Decoder_module1|Decode_out[18]~2_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(51),
	combout => \Decoder_module1|Decode_out[19]~7_combout\);

-- Location: LCCOMB_X34_Y23_N16
\Fetch_pipeline_reg|reg_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~40_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \Fetch_pipeline_reg|reg_out~40_combout\);

-- Location: FF_X34_Y23_N17
\Fetch_pipeline_reg|reg_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(52));

-- Location: LCCOMB_X35_Y23_N0
\Decoder_module1|Decode_out[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[20]~8_combout\ = (\Fetch_pipeline_reg|reg_out\(52) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Decoder_module1|Decode_out[19]~3_combout\ & \Fetch_pipeline_reg|reg_out\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(52),
	datab => \Decoder_module1|Decode_out[19]~3_combout\,
	datac => \Decoder_module1|Decode_out[18]~2_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(63),
	combout => \Decoder_module1|Decode_out[20]~8_combout\);

-- Location: LCCOMB_X34_Y23_N6
\Fetch_pipeline_reg|reg_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~41_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \Fetch_pipeline_reg|reg_out~41_combout\);

-- Location: FF_X34_Y23_N7
\Fetch_pipeline_reg|reg_out[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(53));

-- Location: LCCOMB_X41_Y19_N20
\Decoder_module1|Decode_out[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[22]~9_combout\ = (!\Fetch_pipeline_reg|reg_out\(61) & (!\Fetch_pipeline_reg|reg_out\(60) & \Fetch_pipeline_reg|reg_out\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(53),
	combout => \Decoder_module1|Decode_out[22]~9_combout\);

-- Location: LCCOMB_X41_Y19_N26
\Decoder_module1|Decode_out[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[21]~10_combout\ = (\Fetch_pipeline_reg|reg_out\(53) & ((\Decoder_module1|Decode_out[18]~2_combout\) # ((\Fetch_pipeline_reg|reg_out\(63) & \Decoder_module1|Decode_out[22]~9_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(53) & 
-- (\Fetch_pipeline_reg|reg_out\(63) & ((\Decoder_module1|Decode_out[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(53),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Decoder_module1|Decode_out[18]~2_combout\,
	datad => \Decoder_module1|Decode_out[22]~9_combout\,
	combout => \Decoder_module1|Decode_out[21]~10_combout\);

-- Location: LCCOMB_X41_Y19_N16
\Decoder_module1|Decode_out[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[23]~11_combout\ = (\Fetch_pipeline_reg|reg_out\(61) & (!\Fetch_pipeline_reg|reg_out\(63) & ((\Fetch_pipeline_reg|reg_out\(60)) # (\Fetch_pipeline_reg|reg_out\(62))))) # (!\Fetch_pipeline_reg|reg_out\(61) & 
-- (\Fetch_pipeline_reg|reg_out\(63) & (!\Fetch_pipeline_reg|reg_out\(60) & !\Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[23]~11_combout\);

-- Location: LCCOMB_X34_Y23_N0
\Fetch_pipeline_reg|reg_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~42_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \Fetch_pipeline_reg|reg_out~42_combout\);

-- Location: FF_X34_Y23_N1
\Fetch_pipeline_reg|reg_out[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(54));

-- Location: LCCOMB_X41_Y19_N10
\Decoder_module1|Decode_out[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[23]~12_combout\ = (!\Fetch_pipeline_reg|reg_out\(61) & ((\Fetch_pipeline_reg|reg_out\(60) & (!\Fetch_pipeline_reg|reg_out\(63))) # (!\Fetch_pipeline_reg|reg_out\(60) & ((\Fetch_pipeline_reg|reg_out\(62))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[23]~12_combout\);

-- Location: LCCOMB_X41_Y19_N24
\Decoder_module1|Decode_out[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[22]~13_combout\ = (\Fetch_pipeline_reg|reg_out\(53) & ((\Decoder_module1|Decode_out[23]~12_combout\) # ((\Decoder_module1|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(54))))) # (!\Fetch_pipeline_reg|reg_out\(53) & 
-- (\Decoder_module1|Decode_out[23]~11_combout\ & (\Fetch_pipeline_reg|reg_out\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(53),
	datab => \Decoder_module1|Decode_out[23]~11_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(54),
	datad => \Decoder_module1|Decode_out[23]~12_combout\,
	combout => \Decoder_module1|Decode_out[22]~13_combout\);

-- Location: LCCOMB_X34_Y23_N10
\Fetch_pipeline_reg|reg_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~43_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \Fetch_pipeline_reg|reg_out~43_combout\);

-- Location: FF_X34_Y23_N11
\Fetch_pipeline_reg|reg_out[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(55));

-- Location: LCCOMB_X41_Y19_N2
\Decoder_module1|Decode_out[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[23]~14_combout\ = (\Fetch_pipeline_reg|reg_out\(53) & ((\Decoder_module1|Decode_out[23]~12_combout\) # ((\Decoder_module1|Decode_out[23]~11_combout\ & \Fetch_pipeline_reg|reg_out\(55))))) # (!\Fetch_pipeline_reg|reg_out\(53) & 
-- (\Decoder_module1|Decode_out[23]~11_combout\ & (\Fetch_pipeline_reg|reg_out\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(53),
	datab => \Decoder_module1|Decode_out[23]~11_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(55),
	datad => \Decoder_module1|Decode_out[23]~12_combout\,
	combout => \Decoder_module1|Decode_out[23]~14_combout\);

-- Location: LCCOMB_X41_Y19_N6
\Decoder_module1|Decode_out[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[24]~16_combout\ = (!\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(61) & (!\Fetch_pipeline_reg|reg_out\(63) & \Fetch_pipeline_reg|reg_out\(60))) # (!\Fetch_pipeline_reg|reg_out\(61) & 
-- (\Fetch_pipeline_reg|reg_out\(63) & !\Fetch_pipeline_reg|reg_out\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[24]~16_combout\);

-- Location: LCCOMB_X34_Y23_N4
\Fetch_pipeline_reg|reg_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~44_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a8\,
	combout => \Fetch_pipeline_reg|reg_out~44_combout\);

-- Location: FF_X34_Y23_N5
\Fetch_pipeline_reg|reg_out[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(56));

-- Location: LCCOMB_X41_Y19_N22
\Decoder_module1|Decode_out[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[24]~40_combout\ = (\Fetch_pipeline_reg|reg_out\(53) & (((!\Fetch_pipeline_reg|reg_out\(61) & !\Fetch_pipeline_reg|reg_out\(60))) # (!\Fetch_pipeline_reg|reg_out\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(53),
	combout => \Decoder_module1|Decode_out[24]~40_combout\);

-- Location: LCCOMB_X41_Y19_N0
\Decoder_module1|Decode_out[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[24]~15_combout\ = (\Fetch_pipeline_reg|reg_out\(63) & (((\Fetch_pipeline_reg|reg_out\(62))))) # (!\Fetch_pipeline_reg|reg_out\(63) & (!\Fetch_pipeline_reg|reg_out\(61) & ((\Fetch_pipeline_reg|reg_out\(60)) # 
-- (\Fetch_pipeline_reg|reg_out\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[24]~15_combout\);

-- Location: LCCOMB_X41_Y19_N4
\Decoder_module1|Decode_out[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[24]~17_combout\ = (\Decoder_module1|Decode_out[24]~16_combout\ & (\Fetch_pipeline_reg|reg_out\(56) & ((!\Decoder_module1|Decode_out[24]~15_combout\)))) # (!\Decoder_module1|Decode_out[24]~16_combout\ & 
-- (((\Decoder_module1|Decode_out[24]~40_combout\ & \Decoder_module1|Decode_out[24]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module1|Decode_out[24]~16_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(56),
	datac => \Decoder_module1|Decode_out[24]~40_combout\,
	datad => \Decoder_module1|Decode_out[24]~15_combout\,
	combout => \Decoder_module1|Decode_out[24]~17_combout\);

-- Location: LCCOMB_X35_Y23_N10
\Decoder_module1|Decode_out[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[25]~18_combout\ = (!\Fetch_pipeline_reg|reg_out\(63) & (\Fetch_pipeline_reg|reg_out\(48) & (!\Fetch_pipeline_reg|reg_out\(60) & !\Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Fetch_pipeline_reg|reg_out\(48),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[25]~18_combout\);

-- Location: LCCOMB_X35_Y23_N20
\Decoder_module1|Decode_out[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[26]~19_combout\ = (!\Fetch_pipeline_reg|reg_out\(63) & (!\Fetch_pipeline_reg|reg_out\(60) & (\Fetch_pipeline_reg|reg_out\(49) & !\Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(49),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[26]~19_combout\);

-- Location: LCCOMB_X37_Y23_N4
\Decoder_module1|Decode_out[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[27]~20_combout\ = (!\Fetch_pipeline_reg|reg_out\(63) & (!\Fetch_pipeline_reg|reg_out\(62) & !\Fetch_pipeline_reg|reg_out\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(63),
	datab => \Fetch_pipeline_reg|reg_out\(62),
	datad => \Fetch_pipeline_reg|reg_out\(61),
	combout => \Decoder_module1|Decode_out[27]~20_combout\);

-- Location: LCCOMB_X41_Y19_N18
\Decoder_module1|Decode_out[28]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[28]~21_combout\ = (!\Fetch_pipeline_reg|reg_out\(61) & (!\Fetch_pipeline_reg|reg_out\(63) & ((!\Fetch_pipeline_reg|reg_out\(62)) # (!\Fetch_pipeline_reg|reg_out\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[28]~21_combout\);

-- Location: LCCOMB_X41_Y19_N12
\Decoder_module1|Decode_out[30]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[30]~22_combout\ = (\Fetch_pipeline_reg|reg_out\(63) & ((\Fetch_pipeline_reg|reg_out\(61)) # ((\Fetch_pipeline_reg|reg_out\(62))))) # (!\Fetch_pipeline_reg|reg_out\(63) & (((\Fetch_pipeline_reg|reg_out\(60) & 
-- \Fetch_pipeline_reg|reg_out\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[30]~22_combout\);

-- Location: LCCOMB_X41_Y19_N14
\Decoder_module1|Decode_out[32]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[32]~23_combout\ = (\Fetch_pipeline_reg|reg_out\(62) & (!\Fetch_pipeline_reg|reg_out\(61) & (\Fetch_pipeline_reg|reg_out\(63) $ (\Fetch_pipeline_reg|reg_out\(60))))) # (!\Fetch_pipeline_reg|reg_out\(62) & 
-- (((!\Fetch_pipeline_reg|reg_out\(63) & !\Fetch_pipeline_reg|reg_out\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(63),
	datac => \Fetch_pipeline_reg|reg_out\(60),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[32]~23_combout\);

-- Location: LCCOMB_X41_Y19_N28
\Decoder_module1|Decode_out[32]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[32]~24_combout\ = ((\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(54)))) # (!\Fetch_pipeline_reg|reg_out\(62) & (\Fetch_pipeline_reg|reg_out\(51)))) # (!\Decoder_module1|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(51),
	datab => \Decoder_module1|Decode_out[32]~23_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(54),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[32]~24_combout\);

-- Location: LCCOMB_X41_Y19_N30
\Decoder_module1|Decode_out[33]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[33]~25_combout\ = ((\Fetch_pipeline_reg|reg_out\(62) & (\Fetch_pipeline_reg|reg_out\(55))) # (!\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(52))))) # (!\Decoder_module1|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(62),
	datab => \Decoder_module1|Decode_out[32]~23_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(55),
	datad => \Fetch_pipeline_reg|reg_out\(52),
	combout => \Decoder_module1|Decode_out[33]~25_combout\);

-- Location: LCCOMB_X41_Y19_N8
\Decoder_module1|Decode_out[34]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[34]~26_combout\ = ((\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(56)))) # (!\Fetch_pipeline_reg|reg_out\(62) & (\Fetch_pipeline_reg|reg_out\(53)))) # (!\Decoder_module1|Decode_out[32]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(53),
	datab => \Decoder_module1|Decode_out[32]~23_combout\,
	datac => \Fetch_pipeline_reg|reg_out\(56),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[34]~26_combout\);

-- Location: LCCOMB_X37_Y23_N8
\Decoder_module1|Decode_out[38]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[38]~27_combout\ = (\Fetch_pipeline_reg|reg_out\(60)) # ((\Fetch_pipeline_reg|reg_out\(63)) # ((\Fetch_pipeline_reg|reg_out\(61) & \Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(63),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[38]~27_combout\);

-- Location: LCCOMB_X34_Y23_N26
\Fetch_pipeline_reg|reg_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~45_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a9\,
	combout => \Fetch_pipeline_reg|reg_out~45_combout\);

-- Location: FF_X34_Y23_N27
\Fetch_pipeline_reg|reg_out[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(57));

-- Location: LCCOMB_X37_Y23_N2
\Decoder_module1|Decode_out[36]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[36]~28_combout\ = (\Fetch_pipeline_reg|reg_out\(62) & (((\Fetch_pipeline_reg|reg_out\(63))))) # (!\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(61)) # ((!\Fetch_pipeline_reg|reg_out\(60) & 
-- \Fetch_pipeline_reg|reg_out\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(63),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[36]~28_combout\);

-- Location: LCCOMB_X37_Y23_N12
\Decoder_module1|Decode_out[36]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[36]~29_combout\ = (\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(57)) # ((!\Decoder_module1|Decode_out[19]~3_combout\ & \Decoder_module1|Decode_out[36]~28_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(62) & 
-- (((\Decoder_module1|Decode_out[36]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module1|Decode_out[19]~3_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(62),
	datac => \Fetch_pipeline_reg|reg_out\(57),
	datad => \Decoder_module1|Decode_out[36]~28_combout\,
	combout => \Decoder_module1|Decode_out[36]~29_combout\);

-- Location: LCCOMB_X37_Y23_N18
\Decoder_module1|Decode_out[36]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[36]~30_combout\ = (\Decoder_module1|Decode_out[38]~27_combout\ & ((\Decoder_module1|Decode_out[36]~29_combout\) # ((\Fetch_pipeline_reg|reg_out\(54) & !\Fetch_pipeline_reg|reg_out\(62))))) # 
-- (!\Decoder_module1|Decode_out[38]~27_combout\ & (\Fetch_pipeline_reg|reg_out\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(54),
	datab => \Fetch_pipeline_reg|reg_out\(62),
	datac => \Decoder_module1|Decode_out[38]~27_combout\,
	datad => \Decoder_module1|Decode_out[36]~29_combout\,
	combout => \Decoder_module1|Decode_out[36]~30_combout\);

-- Location: LCCOMB_X34_Y23_N20
\Fetch_pipeline_reg|reg_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~46_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a10\,
	combout => \Fetch_pipeline_reg|reg_out~46_combout\);

-- Location: FF_X34_Y23_N21
\Fetch_pipeline_reg|reg_out[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(58));

-- Location: LCCOMB_X37_Y23_N6
\Decoder_module1|Decode_out[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[37]~32_combout\ = (\Fetch_pipeline_reg|reg_out\(62) & (\Fetch_pipeline_reg|reg_out\(58) $ (\Fetch_pipeline_reg|reg_out\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(58),
	datab => \Fetch_pipeline_reg|reg_out\(55),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[37]~32_combout\);

-- Location: LCCOMB_X37_Y23_N24
\Decoder_module1|Decode_out[37]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[37]~31_combout\ = (\Fetch_pipeline_reg|reg_out\(61) & (((\Fetch_pipeline_reg|reg_out\(63)) # (!\Fetch_pipeline_reg|reg_out\(62))))) # (!\Fetch_pipeline_reg|reg_out\(61) & (\Fetch_pipeline_reg|reg_out\(63) & 
-- (\Fetch_pipeline_reg|reg_out\(60) $ (!\Fetch_pipeline_reg|reg_out\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(63),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[37]~31_combout\);

-- Location: LCCOMB_X37_Y23_N26
\Decoder_module1|Decode_out[37]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[37]~33_combout\ = (\Decoder_module1|Decode_out[38]~27_combout\ & ((\Decoder_module1|Decode_out[37]~31_combout\) # (\Decoder_module1|Decode_out[37]~32_combout\ $ (\Fetch_pipeline_reg|reg_out\(55))))) # 
-- (!\Decoder_module1|Decode_out[38]~27_combout\ & (((\Fetch_pipeline_reg|reg_out\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module1|Decode_out[37]~32_combout\,
	datab => \Decoder_module1|Decode_out[37]~31_combout\,
	datac => \Decoder_module1|Decode_out[38]~27_combout\,
	datad => \Fetch_pipeline_reg|reg_out\(55),
	combout => \Decoder_module1|Decode_out[37]~33_combout\);

-- Location: LCCOMB_X34_Y23_N2
\Fetch_pipeline_reg|reg_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fetch_pipeline_reg|reg_out~47_combout\ = (!\reset~input_o\ & \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Instruction_Memory|mem_rtl_0|auto_generated|ram_block1a11\,
	combout => \Fetch_pipeline_reg|reg_out~47_combout\);

-- Location: FF_X34_Y23_N3
\Fetch_pipeline_reg|reg_out[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Fetch_pipeline_reg|reg_out~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fetch_pipeline_reg|reg_out\(59));

-- Location: LCCOMB_X37_Y23_N28
\Decoder_module1|Decode_out[38]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[38]~34_combout\ = (\Fetch_pipeline_reg|reg_out\(62) & ((\Fetch_pipeline_reg|reg_out\(59)) # ((!\Decoder_module1|Decode_out[19]~3_combout\ & \Decoder_module1|Decode_out[36]~28_combout\)))) # (!\Fetch_pipeline_reg|reg_out\(62) & 
-- (((\Decoder_module1|Decode_out[36]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_module1|Decode_out[19]~3_combout\,
	datab => \Fetch_pipeline_reg|reg_out\(62),
	datac => \Fetch_pipeline_reg|reg_out\(59),
	datad => \Decoder_module1|Decode_out[36]~28_combout\,
	combout => \Decoder_module1|Decode_out[38]~34_combout\);

-- Location: LCCOMB_X37_Y23_N14
\Decoder_module1|Decode_out[38]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[38]~35_combout\ = (\Decoder_module1|Decode_out[38]~27_combout\ & ((\Decoder_module1|Decode_out[38]~34_combout\) # ((\Fetch_pipeline_reg|reg_out\(56) & !\Fetch_pipeline_reg|reg_out\(62))))) # 
-- (!\Decoder_module1|Decode_out[38]~27_combout\ & (\Fetch_pipeline_reg|reg_out\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(56),
	datab => \Fetch_pipeline_reg|reg_out\(62),
	datac => \Decoder_module1|Decode_out[38]~27_combout\,
	datad => \Decoder_module1|Decode_out[38]~34_combout\,
	combout => \Decoder_module1|Decode_out[38]~35_combout\);

-- Location: LCCOMB_X37_Y23_N16
\Decoder_module1|Decode_out[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[40]~36_combout\ = (\Fetch_pipeline_reg|reg_out\(61) & (((!\Fetch_pipeline_reg|reg_out\(63) & !\Fetch_pipeline_reg|reg_out\(62))))) # (!\Fetch_pipeline_reg|reg_out\(61) & (((!\Fetch_pipeline_reg|reg_out\(60) & 
-- !\Fetch_pipeline_reg|reg_out\(63))) # (!\Fetch_pipeline_reg|reg_out\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fetch_pipeline_reg|reg_out\(61),
	datab => \Fetch_pipeline_reg|reg_out\(60),
	datac => \Fetch_pipeline_reg|reg_out\(63),
	datad => \Fetch_pipeline_reg|reg_out\(62),
	combout => \Decoder_module1|Decode_out[40]~36_combout\);

-- Location: LCCOMB_X37_Y23_N30
\Decoder_module1|Decode_out[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[40]~37_combout\ = (\Fetch_pipeline_reg|reg_out\(57)) # (!\Decoder_module1|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out\(57),
	datad => \Decoder_module1|Decode_out[40]~36_combout\,
	combout => \Decoder_module1|Decode_out[40]~37_combout\);

-- Location: LCCOMB_X37_Y23_N0
\Decoder_module1|Decode_out[41]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[41]~38_combout\ = (\Fetch_pipeline_reg|reg_out\(58)) # (!\Decoder_module1|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out\(58),
	datad => \Decoder_module1|Decode_out[40]~36_combout\,
	combout => \Decoder_module1|Decode_out[41]~38_combout\);

-- Location: LCCOMB_X37_Y23_N10
\Decoder_module1|Decode_out[42]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_module1|Decode_out[42]~39_combout\ = (\Fetch_pipeline_reg|reg_out\(59)) # (!\Decoder_module1|Decode_out[40]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fetch_pipeline_reg|reg_out\(59),
	datad => \Decoder_module1|Decode_out[40]~36_combout\,
	combout => \Decoder_module1|Decode_out[42]~39_combout\);

-- Location: IOIBUF_X25_Y34_N15
\instr_address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(8),
	o => \instr_address[8]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\instr_address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(9),
	o => \instr_address[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\instr_address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(10),
	o => \instr_address[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\instr_address[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(11),
	o => \instr_address[11]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\instr_address[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(12),
	o => \instr_address[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\instr_address[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(13),
	o => \instr_address[13]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\instr_address[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(14),
	o => \instr_address[14]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\instr_address[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_address(15),
	o => \instr_address[15]~input_o\);

ww_decoder_output(0) <= \decoder_output[0]~output_o\;

ww_decoder_output(1) <= \decoder_output[1]~output_o\;

ww_decoder_output(2) <= \decoder_output[2]~output_o\;

ww_decoder_output(3) <= \decoder_output[3]~output_o\;

ww_decoder_output(4) <= \decoder_output[4]~output_o\;

ww_decoder_output(5) <= \decoder_output[5]~output_o\;

ww_decoder_output(6) <= \decoder_output[6]~output_o\;

ww_decoder_output(7) <= \decoder_output[7]~output_o\;

ww_decoder_output(8) <= \decoder_output[8]~output_o\;

ww_decoder_output(9) <= \decoder_output[9]~output_o\;

ww_decoder_output(10) <= \decoder_output[10]~output_o\;

ww_decoder_output(11) <= \decoder_output[11]~output_o\;

ww_decoder_output(12) <= \decoder_output[12]~output_o\;

ww_decoder_output(13) <= \decoder_output[13]~output_o\;

ww_decoder_output(14) <= \decoder_output[14]~output_o\;

ww_decoder_output(15) <= \decoder_output[15]~output_o\;

ww_decoder_output(16) <= \decoder_output[16]~output_o\;

ww_decoder_output(17) <= \decoder_output[17]~output_o\;

ww_decoder_output(18) <= \decoder_output[18]~output_o\;

ww_decoder_output(19) <= \decoder_output[19]~output_o\;

ww_decoder_output(20) <= \decoder_output[20]~output_o\;

ww_decoder_output(21) <= \decoder_output[21]~output_o\;

ww_decoder_output(22) <= \decoder_output[22]~output_o\;

ww_decoder_output(23) <= \decoder_output[23]~output_o\;

ww_decoder_output(24) <= \decoder_output[24]~output_o\;

ww_decoder_output(25) <= \decoder_output[25]~output_o\;

ww_decoder_output(26) <= \decoder_output[26]~output_o\;

ww_decoder_output(27) <= \decoder_output[27]~output_o\;

ww_decoder_output(28) <= \decoder_output[28]~output_o\;

ww_decoder_output(29) <= \decoder_output[29]~output_o\;

ww_decoder_output(30) <= \decoder_output[30]~output_o\;

ww_decoder_output(31) <= \decoder_output[31]~output_o\;

ww_decoder_output(32) <= \decoder_output[32]~output_o\;

ww_decoder_output(33) <= \decoder_output[33]~output_o\;

ww_decoder_output(34) <= \decoder_output[34]~output_o\;

ww_decoder_output(35) <= \decoder_output[35]~output_o\;

ww_decoder_output(36) <= \decoder_output[36]~output_o\;

ww_decoder_output(37) <= \decoder_output[37]~output_o\;

ww_decoder_output(38) <= \decoder_output[38]~output_o\;

ww_decoder_output(39) <= \decoder_output[39]~output_o\;

ww_decoder_output(40) <= \decoder_output[40]~output_o\;

ww_decoder_output(41) <= \decoder_output[41]~output_o\;

ww_decoder_output(42) <= \decoder_output[42]~output_o\;

ww_decoder_output(43) <= \decoder_output[43]~output_o\;

ww_decoder_output(44) <= \decoder_output[44]~output_o\;

ww_decoder_output(45) <= \decoder_output[45]~output_o\;

ww_decoder_output(46) <= \decoder_output[46]~output_o\;

ww_decoder_output(47) <= \decoder_output[47]~output_o\;

ww_decoder_output(48) <= \decoder_output[48]~output_o\;

ww_decoder_output(49) <= \decoder_output[49]~output_o\;

ww_decoder_output(50) <= \decoder_output[50]~output_o\;

ww_decoder_output(51) <= \decoder_output[51]~output_o\;

ww_decoder_output(52) <= \decoder_output[52]~output_o\;

ww_decoder_output(53) <= \decoder_output[53]~output_o\;

ww_decoder_output(54) <= \decoder_output[54]~output_o\;

ww_decoder_output(55) <= \decoder_output[55]~output_o\;

ww_decoder_output(56) <= \decoder_output[56]~output_o\;

ww_decoder_output(57) <= \decoder_output[57]~output_o\;

ww_decoder_output(58) <= \decoder_output[58]~output_o\;

ww_decoder_output(59) <= \decoder_output[59]~output_o\;

ww_decoder_output(60) <= \decoder_output[60]~output_o\;

ww_decoder_output(61) <= \decoder_output[61]~output_o\;

ww_decoder_output(62) <= \decoder_output[62]~output_o\;

ww_decoder_output(63) <= \decoder_output[63]~output_o\;

ww_decoder_output(64) <= \decoder_output[64]~output_o\;

ww_decoder_output(65) <= \decoder_output[65]~output_o\;

ww_decoder_output(66) <= \decoder_output[66]~output_o\;

ww_decoder_output(67) <= \decoder_output[67]~output_o\;

ww_decoder_output(68) <= \decoder_output[68]~output_o\;

ww_decoder_output(69) <= \decoder_output[69]~output_o\;

ww_decoder_output(70) <= \decoder_output[70]~output_o\;

ww_decoder_output(71) <= \decoder_output[71]~output_o\;

ww_decoder_output(72) <= \decoder_output[72]~output_o\;

ww_decoder_output(73) <= \decoder_output[73]~output_o\;

ww_decoder_output(74) <= \decoder_output[74]~output_o\;

ww_decoder_output(75) <= \decoder_output[75]~output_o\;

ww_decoder_output(76) <= \decoder_output[76]~output_o\;

ww_decoder_output(77) <= \decoder_output[77]~output_o\;

ww_decoder_output(78) <= \decoder_output[78]~output_o\;

ww_decoder_output(79) <= \decoder_output[79]~output_o\;

ww_decoder_output(80) <= \decoder_output[80]~output_o\;

ww_decoder_output(81) <= \decoder_output[81]~output_o\;

ww_decoder_output(82) <= \decoder_output[82]~output_o\;

ww_decoder_output(83) <= \decoder_output[83]~output_o\;

ww_decoder_output(84) <= \decoder_output[84]~output_o\;

ww_decoder_output(85) <= \decoder_output[85]~output_o\;

ww_decoder_output(86) <= \decoder_output[86]~output_o\;

ww_decoder_output(87) <= \decoder_output[87]~output_o\;

ww_decoder_output(88) <= \decoder_output[88]~output_o\;

ww_decoder_output(89) <= \decoder_output[89]~output_o\;

ww_decoder_output(90) <= \decoder_output[90]~output_o\;

ww_decoder_output(91) <= \decoder_output[91]~output_o\;

ww_decoder_output(92) <= \decoder_output[92]~output_o\;

ww_decoder_output(93) <= \decoder_output[93]~output_o\;
END structure;


