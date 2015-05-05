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

-- DATE "05/05/2015 15:54:12"

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

ENTITY 	BranchPredictor IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	Instruction : IN std_logic_vector(15 DOWNTO 0);
	PC : IN std_logic_vector(15 DOWNTO 0);
	PredictedResult : OUT std_logic;
	Address : IN std_logic_vector(15 DOWNTO 0);
	ActualResult : IN std_logic;
	AddressValid : IN std_logic
	);
END BranchPredictor;

-- Design Ports Information
-- Instruction[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[8]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PredictedResult	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[9]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[13]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ActualResult	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddressValid	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[14]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[15]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[12]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[13]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BranchPredictor IS
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
SIGNAL ww_Instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PredictedResult : std_logic;
SIGNAL ww_Address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ActualResult : std_logic;
SIGNAL ww_AddressValid : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Instruction[0]~input_o\ : std_logic;
SIGNAL \Instruction[1]~input_o\ : std_logic;
SIGNAL \Instruction[2]~input_o\ : std_logic;
SIGNAL \Instruction[3]~input_o\ : std_logic;
SIGNAL \Instruction[4]~input_o\ : std_logic;
SIGNAL \Instruction[6]~input_o\ : std_logic;
SIGNAL \Instruction[7]~input_o\ : std_logic;
SIGNAL \Instruction[8]~input_o\ : std_logic;
SIGNAL \Instruction[9]~input_o\ : std_logic;
SIGNAL \Instruction[10]~input_o\ : std_logic;
SIGNAL \Instruction[11]~input_o\ : std_logic;
SIGNAL \Address[0]~input_o\ : std_logic;
SIGNAL \Address[1]~input_o\ : std_logic;
SIGNAL \Address[2]~input_o\ : std_logic;
SIGNAL \Address[3]~input_o\ : std_logic;
SIGNAL \Address[4]~input_o\ : std_logic;
SIGNAL \Address[5]~input_o\ : std_logic;
SIGNAL \Address[6]~input_o\ : std_logic;
SIGNAL \Address[7]~input_o\ : std_logic;
SIGNAL \Address[8]~input_o\ : std_logic;
SIGNAL \Address[9]~input_o\ : std_logic;
SIGNAL \Address[10]~input_o\ : std_logic;
SIGNAL \Address[11]~input_o\ : std_logic;
SIGNAL \Address[12]~input_o\ : std_logic;
SIGNAL \Address[13]~input_o\ : std_logic;
SIGNAL \Address[14]~input_o\ : std_logic;
SIGNAL \Address[15]~input_o\ : std_logic;
SIGNAL \ActualResult~input_o\ : std_logic;
SIGNAL \AddressValid~input_o\ : std_logic;
SIGNAL \PredictedResult~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Instruction[12]~input_o\ : std_logic;
SIGNAL \Instruction[14]~input_o\ : std_logic;
SIGNAL \Instruction[15]~input_o\ : std_logic;
SIGNAL \Instruction[13]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \TableBusy~7_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \TableBusy~2_combout\ : std_logic;
SIGNAL \free_loc~9_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \TableBusy~12_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \TableBusy~14_combout\ : std_logic;
SIGNAL \free_loc~14_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \TableBusy~9_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \TableBusy~13_combout\ : std_logic;
SIGNAL \free_loc~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \TableBusy~11_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \TableBusy~17_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \TableBusy~15_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \TableBusy~16_combout\ : std_logic;
SIGNAL \free_loc~12_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \TableBusy~6_combout\ : std_logic;
SIGNAL \free_loc~13_combout\ : std_logic;
SIGNAL \free_loc~15_combout\ : std_logic;
SIGNAL \free_loc~16_combout\ : std_logic;
SIGNAL \free_loc~18_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \TableBusy~8_combout\ : std_logic;
SIGNAL \free_loc~17_combout\ : std_logic;
SIGNAL \free_loc~19_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \TableBusy~3_combout\ : std_logic;
SIGNAL \free_loc~7_combout\ : std_logic;
SIGNAL \free_loc~8_combout\ : std_logic;
SIGNAL \free_loc~10_combout\ : std_logic;
SIGNAL \free_loc~5_combout\ : std_logic;
SIGNAL \free_loc~11_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \TableBusy~5_combout\ : std_logic;
SIGNAL \free_loc~0_combout\ : std_logic;
SIGNAL \free_loc~1_combout\ : std_logic;
SIGNAL \free_loc~2_combout\ : std_logic;
SIGNAL \free_loc~3_combout\ : std_logic;
SIGNAL \free_loc~4_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \TableBusy~10_combout\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \BranchTable~3_combout\ : std_logic;
SIGNAL \Decoder1~12_combout\ : std_logic;
SIGNAL \write_table_en~q\ : std_logic;
SIGNAL \BranchTable[10][15]~28_combout\ : std_logic;
SIGNAL \BranchTable[10][3]~q\ : std_logic;
SIGNAL \BranchTable~4_combout\ : std_logic;
SIGNAL \BranchTable[10][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][2]~q\ : std_logic;
SIGNAL \Predictor~133_combout\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \BranchTable~8_combout\ : std_logic;
SIGNAL \BranchTable[10][6]~q\ : std_logic;
SIGNAL \BranchTable~7_combout\ : std_logic;
SIGNAL \BranchTable[10][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][7]~q\ : std_logic;
SIGNAL \Predictor~135_combout\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \BranchTable~0_combout\ : std_logic;
SIGNAL \BranchTable[10][1]~q\ : std_logic;
SIGNAL \BranchTable~2_combout\ : std_logic;
SIGNAL \BranchTable[10][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][0]~q\ : std_logic;
SIGNAL \Predictor~132_combout\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \BranchTable~5_combout\ : std_logic;
SIGNAL \BranchTable[10][5]~q\ : std_logic;
SIGNAL \BranchTable~6_combout\ : std_logic;
SIGNAL \BranchTable[10][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][4]~q\ : std_logic;
SIGNAL \Predictor~134_combout\ : std_logic;
SIGNAL \Predictor~136_combout\ : std_logic;
SIGNAL \PC[14]~input_o\ : std_logic;
SIGNAL \PC[15]~input_o\ : std_logic;
SIGNAL \BranchTable~16_combout\ : std_logic;
SIGNAL \BranchTable[10][14]~q\ : std_logic;
SIGNAL \BranchTable~15_combout\ : std_logic;
SIGNAL \BranchTable[10][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][15]~q\ : std_logic;
SIGNAL \Predictor~140_combout\ : std_logic;
SIGNAL \BranchTable~11_combout\ : std_logic;
SIGNAL \BranchTable[10][11]~q\ : std_logic;
SIGNAL \BranchTable[10][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][10]~q\ : std_logic;
SIGNAL \Predictor~138_combout\ : std_logic;
SIGNAL \PC[13]~input_o\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
SIGNAL \BranchTable~14_combout\ : std_logic;
SIGNAL \BranchTable[10][12]~q\ : std_logic;
SIGNAL \BranchTable~13_combout\ : std_logic;
SIGNAL \BranchTable[10][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][13]~q\ : std_logic;
SIGNAL \Predictor~139_combout\ : std_logic;
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \BranchTable~9_combout\ : std_logic;
SIGNAL \BranchTable[10][9]~q\ : std_logic;
SIGNAL \BranchTable~10_combout\ : std_logic;
SIGNAL \BranchTable[10][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[10][8]~q\ : std_logic;
SIGNAL \Predictor~137_combout\ : std_logic;
SIGNAL \Predictor~141_combout\ : std_logic;
SIGNAL \Predictor~142_combout\ : std_logic;
SIGNAL \Decoder1~11_combout\ : std_logic;
SIGNAL \BranchTable[9][10]~27_combout\ : std_logic;
SIGNAL \BranchTable[9][10]~q\ : std_logic;
SIGNAL \BranchTable[9][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][11]~q\ : std_logic;
SIGNAL \Predictor~127_combout\ : std_logic;
SIGNAL \BranchTable[9][12]~q\ : std_logic;
SIGNAL \BranchTable[9][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][13]~q\ : std_logic;
SIGNAL \Predictor~128_combout\ : std_logic;
SIGNAL \BranchTable[9][14]~q\ : std_logic;
SIGNAL \BranchTable[9][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][15]~q\ : std_logic;
SIGNAL \Predictor~129_combout\ : std_logic;
SIGNAL \BranchTable[9][8]~q\ : std_logic;
SIGNAL \BranchTable[9][9]~q\ : std_logic;
SIGNAL \Predictor~126_combout\ : std_logic;
SIGNAL \Predictor~130_combout\ : std_logic;
SIGNAL \BranchTable[9][6]~q\ : std_logic;
SIGNAL \BranchTable[9][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][7]~q\ : std_logic;
SIGNAL \Predictor~124_combout\ : std_logic;
SIGNAL \BranchTable[9][3]~q\ : std_logic;
SIGNAL \BranchTable[9][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][2]~q\ : std_logic;
SIGNAL \Predictor~122_combout\ : std_logic;
SIGNAL \BranchTable[9][5]~q\ : std_logic;
SIGNAL \BranchTable[9][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][4]~q\ : std_logic;
SIGNAL \Predictor~123_combout\ : std_logic;
SIGNAL \BranchTable[9][1]~q\ : std_logic;
SIGNAL \BranchTable[9][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[9][0]~q\ : std_logic;
SIGNAL \Predictor~121_combout\ : std_logic;
SIGNAL \Predictor~125_combout\ : std_logic;
SIGNAL \Predictor~131_combout\ : std_logic;
SIGNAL \Decoder1~10_combout\ : std_logic;
SIGNAL \BranchTable[12][7]~26_combout\ : std_logic;
SIGNAL \BranchTable[12][11]~q\ : std_logic;
SIGNAL \BranchTable[12][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][10]~q\ : std_logic;
SIGNAL \Predictor~105_combout\ : std_logic;
SIGNAL \BranchTable[12][14]~q\ : std_logic;
SIGNAL \BranchTable[12][15]~q\ : std_logic;
SIGNAL \Predictor~107_combout\ : std_logic;
SIGNAL \BranchTable[12][13]~q\ : std_logic;
SIGNAL \BranchTable[12][12]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][12]~q\ : std_logic;
SIGNAL \Predictor~106_combout\ : std_logic;
SIGNAL \BranchTable[12][9]~q\ : std_logic;
SIGNAL \BranchTable[12][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][8]~q\ : std_logic;
SIGNAL \Predictor~104_combout\ : std_logic;
SIGNAL \Predictor~108_combout\ : std_logic;
SIGNAL \BranchTable[12][3]~q\ : std_logic;
SIGNAL \BranchTable[12][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][2]~q\ : std_logic;
SIGNAL \Predictor~100_combout\ : std_logic;
SIGNAL \BranchTable[12][1]~q\ : std_logic;
SIGNAL \BranchTable[12][0]~q\ : std_logic;
SIGNAL \Predictor~99_combout\ : std_logic;
SIGNAL \BranchTable[12][7]~q\ : std_logic;
SIGNAL \BranchTable[12][6]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][6]~q\ : std_logic;
SIGNAL \Predictor~102_combout\ : std_logic;
SIGNAL \BranchTable[12][4]~q\ : std_logic;
SIGNAL \BranchTable[12][5]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[12][5]~q\ : std_logic;
SIGNAL \Predictor~101_combout\ : std_logic;
SIGNAL \Predictor~103_combout\ : std_logic;
SIGNAL \Predictor~109_combout\ : std_logic;
SIGNAL \Decoder1~9_combout\ : std_logic;
SIGNAL \BranchTable[11][8]~25_combout\ : std_logic;
SIGNAL \BranchTable[11][6]~q\ : std_logic;
SIGNAL \BranchTable[11][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][7]~q\ : std_logic;
SIGNAL \Predictor~113_combout\ : std_logic;
SIGNAL \BranchTable[11][3]~q\ : std_logic;
SIGNAL \BranchTable[11][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][2]~q\ : std_logic;
SIGNAL \Predictor~111_combout\ : std_logic;
SIGNAL \BranchTable[11][1]~q\ : std_logic;
SIGNAL \BranchTable[11][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][0]~q\ : std_logic;
SIGNAL \Predictor~110_combout\ : std_logic;
SIGNAL \BranchTable[11][5]~q\ : std_logic;
SIGNAL \BranchTable[11][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][4]~q\ : std_logic;
SIGNAL \Predictor~112_combout\ : std_logic;
SIGNAL \Predictor~114_combout\ : std_logic;
SIGNAL \BranchTable[11][10]~q\ : std_logic;
SIGNAL \BranchTable[11][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][11]~q\ : std_logic;
SIGNAL \Predictor~116_combout\ : std_logic;
SIGNAL \BranchTable[11][12]~q\ : std_logic;
SIGNAL \BranchTable[11][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][13]~q\ : std_logic;
SIGNAL \Predictor~117_combout\ : std_logic;
SIGNAL \BranchTable[11][14]~q\ : std_logic;
SIGNAL \BranchTable[11][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][15]~q\ : std_logic;
SIGNAL \Predictor~118_combout\ : std_logic;
SIGNAL \BranchTable[11][9]~q\ : std_logic;
SIGNAL \BranchTable[11][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[11][8]~q\ : std_logic;
SIGNAL \Predictor~115_combout\ : std_logic;
SIGNAL \Predictor~119_combout\ : std_logic;
SIGNAL \Predictor~120_combout\ : std_logic;
SIGNAL \PredictedResult~13_combout\ : std_logic;
SIGNAL \write_table[15]~0_combout\ : std_logic;
SIGNAL \Decoder1~15_combout\ : std_logic;
SIGNAL \BranchTable[15][8]~31_combout\ : std_logic;
SIGNAL \BranchTable[15][1]~q\ : std_logic;
SIGNAL \BranchTable[15][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][0]~q\ : std_logic;
SIGNAL \Predictor~165_combout\ : std_logic;
SIGNAL \BranchTable[15][5]~q\ : std_logic;
SIGNAL \BranchTable[15][4]~q\ : std_logic;
SIGNAL \Predictor~167_combout\ : std_logic;
SIGNAL \BranchTable[15][7]~q\ : std_logic;
SIGNAL \BranchTable[15][6]~q\ : std_logic;
SIGNAL \Predictor~168_combout\ : std_logic;
SIGNAL \BranchTable[15][3]~q\ : std_logic;
SIGNAL \BranchTable[15][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][2]~q\ : std_logic;
SIGNAL \Predictor~166_combout\ : std_logic;
SIGNAL \Predictor~169_combout\ : std_logic;
SIGNAL \BranchTable[15][9]~q\ : std_logic;
SIGNAL \BranchTable[15][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][8]~q\ : std_logic;
SIGNAL \Predictor~170_combout\ : std_logic;
SIGNAL \BranchTable[15][14]~q\ : std_logic;
SIGNAL \BranchTable[15][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][15]~q\ : std_logic;
SIGNAL \Predictor~173_combout\ : std_logic;
SIGNAL \BranchTable[15][11]~q\ : std_logic;
SIGNAL \BranchTable[15][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][10]~q\ : std_logic;
SIGNAL \Predictor~171_combout\ : std_logic;
SIGNAL \BranchTable[15][13]~q\ : std_logic;
SIGNAL \BranchTable[15][12]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[15][12]~q\ : std_logic;
SIGNAL \Predictor~172_combout\ : std_logic;
SIGNAL \Predictor~174_combout\ : std_logic;
SIGNAL \Predictor~175_combout\ : std_logic;
SIGNAL \Decoder1~14_combout\ : std_logic;
SIGNAL \BranchTable[14][2]~30_combout\ : std_logic;
SIGNAL \BranchTable[14][13]~q\ : std_logic;
SIGNAL \BranchTable[14][12]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[14][12]~q\ : std_logic;
SIGNAL \Predictor~150_combout\ : std_logic;
SIGNAL \BranchTable[14][14]~q\ : std_logic;
SIGNAL \BranchTable[14][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[14][15]~q\ : std_logic;
SIGNAL \Predictor~151_combout\ : std_logic;
SIGNAL \BranchTable[14][8]~q\ : std_logic;
SIGNAL \BranchTable[14][9]~q\ : std_logic;
SIGNAL \Predictor~148_combout\ : std_logic;
SIGNAL \BranchTable[14][11]~q\ : std_logic;
SIGNAL \BranchTable[14][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[14][10]~q\ : std_logic;
SIGNAL \Predictor~149_combout\ : std_logic;
SIGNAL \Predictor~152_combout\ : std_logic;
SIGNAL \BranchTable[14][1]~q\ : std_logic;
SIGNAL \BranchTable[14][0]~q\ : std_logic;
SIGNAL \Predictor~143_combout\ : std_logic;
SIGNAL \BranchTable[14][7]~q\ : std_logic;
SIGNAL \BranchTable[14][6]~q\ : std_logic;
SIGNAL \Predictor~146_combout\ : std_logic;
SIGNAL \BranchTable[14][5]~q\ : std_logic;
SIGNAL \BranchTable[14][4]~q\ : std_logic;
SIGNAL \Predictor~145_combout\ : std_logic;
SIGNAL \BranchTable[14][3]~q\ : std_logic;
SIGNAL \BranchTable[14][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[14][2]~q\ : std_logic;
SIGNAL \Predictor~144_combout\ : std_logic;
SIGNAL \Predictor~147_combout\ : std_logic;
SIGNAL \Predictor~153_combout\ : std_logic;
SIGNAL \Decoder1~13_combout\ : std_logic;
SIGNAL \BranchTable[13][14]~29_combout\ : std_logic;
SIGNAL \BranchTable[13][10]~q\ : std_logic;
SIGNAL \BranchTable[13][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][11]~q\ : std_logic;
SIGNAL \Predictor~160_combout\ : std_logic;
SIGNAL \BranchTable[13][12]~q\ : std_logic;
SIGNAL \BranchTable[13][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][13]~q\ : std_logic;
SIGNAL \Predictor~161_combout\ : std_logic;
SIGNAL \BranchTable[13][9]~q\ : std_logic;
SIGNAL \BranchTable[13][8]~q\ : std_logic;
SIGNAL \Predictor~159_combout\ : std_logic;
SIGNAL \BranchTable[13][14]~q\ : std_logic;
SIGNAL \BranchTable[13][15]~q\ : std_logic;
SIGNAL \Predictor~162_combout\ : std_logic;
SIGNAL \Predictor~163_combout\ : std_logic;
SIGNAL \BranchTable[13][6]~q\ : std_logic;
SIGNAL \BranchTable[13][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][7]~q\ : std_logic;
SIGNAL \Predictor~157_combout\ : std_logic;
SIGNAL \BranchTable[13][3]~q\ : std_logic;
SIGNAL \BranchTable[13][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][2]~q\ : std_logic;
SIGNAL \Predictor~155_combout\ : std_logic;
SIGNAL \BranchTable[13][1]~q\ : std_logic;
SIGNAL \BranchTable[13][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][0]~q\ : std_logic;
SIGNAL \Predictor~154_combout\ : std_logic;
SIGNAL \BranchTable[13][5]~q\ : std_logic;
SIGNAL \BranchTable[13][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[13][4]~q\ : std_logic;
SIGNAL \Predictor~156_combout\ : std_logic;
SIGNAL \Predictor~158_combout\ : std_logic;
SIGNAL \Predictor~164_combout\ : std_logic;
SIGNAL \TableBusy~0_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \BranchTable[3][8]~20_combout\ : std_logic;
SIGNAL \BranchTable[3][3]~q\ : std_logic;
SIGNAL \BranchTable[3][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][2]~q\ : std_logic;
SIGNAL \Predictor~45_combout\ : std_logic;
SIGNAL \BranchTable[3][1]~q\ : std_logic;
SIGNAL \BranchTable[3][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][0]~q\ : std_logic;
SIGNAL \Predictor~44_combout\ : std_logic;
SIGNAL \BranchTable[3][6]~q\ : std_logic;
SIGNAL \BranchTable[3][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][7]~q\ : std_logic;
SIGNAL \Predictor~47_combout\ : std_logic;
SIGNAL \BranchTable[3][5]~q\ : std_logic;
SIGNAL \BranchTable[3][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][4]~q\ : std_logic;
SIGNAL \Predictor~46_combout\ : std_logic;
SIGNAL \Predictor~48_combout\ : std_logic;
SIGNAL \BranchTable[3][12]~q\ : std_logic;
SIGNAL \BranchTable[3][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][13]~q\ : std_logic;
SIGNAL \Predictor~51_combout\ : std_logic;
SIGNAL \BranchTable[3][14]~q\ : std_logic;
SIGNAL \BranchTable[3][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][15]~q\ : std_logic;
SIGNAL \Predictor~52_combout\ : std_logic;
SIGNAL \BranchTable[3][11]~q\ : std_logic;
SIGNAL \BranchTable[3][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][10]~q\ : std_logic;
SIGNAL \Predictor~50_combout\ : std_logic;
SIGNAL \BranchTable[3][9]~q\ : std_logic;
SIGNAL \BranchTable[3][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[3][8]~q\ : std_logic;
SIGNAL \Predictor~49_combout\ : std_logic;
SIGNAL \Predictor~53_combout\ : std_logic;
SIGNAL \Predictor~54_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \BranchTable[2][0]~17_combout\ : std_logic;
SIGNAL \BranchTable[2][6]~q\ : std_logic;
SIGNAL \BranchTable[2][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][7]~q\ : std_logic;
SIGNAL \Predictor~14_combout\ : std_logic;
SIGNAL \BranchTable[2][1]~q\ : std_logic;
SIGNAL \BranchTable[2][0]~q\ : std_logic;
SIGNAL \Predictor~11_combout\ : std_logic;
SIGNAL \BranchTable[2][5]~q\ : std_logic;
SIGNAL \BranchTable[2][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][4]~q\ : std_logic;
SIGNAL \Predictor~13_combout\ : std_logic;
SIGNAL \BranchTable[2][3]~q\ : std_logic;
SIGNAL \BranchTable[2][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][2]~q\ : std_logic;
SIGNAL \Predictor~12_combout\ : std_logic;
SIGNAL \Predictor~15_combout\ : std_logic;
SIGNAL \BranchTable[2][11]~q\ : std_logic;
SIGNAL \BranchTable[2][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][10]~q\ : std_logic;
SIGNAL \Predictor~17_combout\ : std_logic;
SIGNAL \BranchTable[2][9]~q\ : std_logic;
SIGNAL \BranchTable[2][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][8]~q\ : std_logic;
SIGNAL \Predictor~16_combout\ : std_logic;
SIGNAL \BranchTable[2][12]~q\ : std_logic;
SIGNAL \BranchTable[2][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][13]~q\ : std_logic;
SIGNAL \Predictor~18_combout\ : std_logic;
SIGNAL \BranchTable[2][14]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][14]~q\ : std_logic;
SIGNAL \BranchTable[2][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[2][15]~q\ : std_logic;
SIGNAL \Predictor~19_combout\ : std_logic;
SIGNAL \Predictor~20_combout\ : std_logic;
SIGNAL \Predictor~21_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \BranchTable[4][5]~1_combout\ : std_logic;
SIGNAL \BranchTable[4][14]~q\ : std_logic;
SIGNAL \BranchTable[4][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][15]~q\ : std_logic;
SIGNAL \Predictor~8_combout\ : std_logic;
SIGNAL \BranchTable[4][9]~q\ : std_logic;
SIGNAL \BranchTable[4][8]~q\ : std_logic;
SIGNAL \Predictor~5_combout\ : std_logic;
SIGNAL \BranchTable[4][12]~q\ : std_logic;
SIGNAL \BranchTable[4][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][13]~q\ : std_logic;
SIGNAL \Predictor~7_combout\ : std_logic;
SIGNAL \BranchTable[4][10]~q\ : std_logic;
SIGNAL \BranchTable[4][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][11]~q\ : std_logic;
SIGNAL \Predictor~6_combout\ : std_logic;
SIGNAL \Predictor~9_combout\ : std_logic;
SIGNAL \BranchTable[4][3]~q\ : std_logic;
SIGNAL \BranchTable[4][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][2]~q\ : std_logic;
SIGNAL \Predictor~1_combout\ : std_logic;
SIGNAL \BranchTable[4][1]~q\ : std_logic;
SIGNAL \BranchTable[4][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][0]~q\ : std_logic;
SIGNAL \Predictor~0_combout\ : std_logic;
SIGNAL \BranchTable[4][6]~q\ : std_logic;
SIGNAL \BranchTable[4][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][7]~q\ : std_logic;
SIGNAL \Predictor~3_combout\ : std_logic;
SIGNAL \BranchTable[4][5]~q\ : std_logic;
SIGNAL \BranchTable[4][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[4][4]~q\ : std_logic;
SIGNAL \Predictor~2_combout\ : std_logic;
SIGNAL \Predictor~4_combout\ : std_logic;
SIGNAL \Predictor~10_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \BranchTable[1][12]~19_combout\ : std_logic;
SIGNAL \BranchTable[1][10]~q\ : std_logic;
SIGNAL \BranchTable[1][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][11]~q\ : std_logic;
SIGNAL \Predictor~39_combout\ : std_logic;
SIGNAL \BranchTable[1][8]~q\ : std_logic;
SIGNAL \BranchTable[1][9]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][9]~q\ : std_logic;
SIGNAL \Predictor~38_combout\ : std_logic;
SIGNAL \BranchTable[1][12]~q\ : std_logic;
SIGNAL \BranchTable[1][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][13]~q\ : std_logic;
SIGNAL \Predictor~40_combout\ : std_logic;
SIGNAL \BranchTable[1][14]~q\ : std_logic;
SIGNAL \BranchTable[1][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][15]~q\ : std_logic;
SIGNAL \Predictor~41_combout\ : std_logic;
SIGNAL \Predictor~42_combout\ : std_logic;
SIGNAL \BranchTable[1][4]~q\ : std_logic;
SIGNAL \BranchTable[1][5]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][5]~q\ : std_logic;
SIGNAL \Predictor~35_combout\ : std_logic;
SIGNAL \BranchTable[1][1]~q\ : std_logic;
SIGNAL \BranchTable[1][0]~q\ : std_logic;
SIGNAL \Predictor~33_combout\ : std_logic;
SIGNAL \BranchTable[1][2]~q\ : std_logic;
SIGNAL \BranchTable[1][3]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][3]~q\ : std_logic;
SIGNAL \Predictor~34_combout\ : std_logic;
SIGNAL \BranchTable[1][6]~q\ : std_logic;
SIGNAL \BranchTable[1][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[1][7]~q\ : std_logic;
SIGNAL \Predictor~36_combout\ : std_logic;
SIGNAL \Predictor~37_combout\ : std_logic;
SIGNAL \Predictor~43_combout\ : std_logic;
SIGNAL \PredictedResult~4_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \BranchTable[5][15]~21_combout\ : std_logic;
SIGNAL \BranchTable[5][10]~q\ : std_logic;
SIGNAL \BranchTable[5][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][11]~q\ : std_logic;
SIGNAL \Predictor~61_combout\ : std_logic;
SIGNAL \BranchTable[5][9]~q\ : std_logic;
SIGNAL \BranchTable[5][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][8]~q\ : std_logic;
SIGNAL \Predictor~60_combout\ : std_logic;
SIGNAL \BranchTable[5][14]~q\ : std_logic;
SIGNAL \BranchTable[5][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][15]~q\ : std_logic;
SIGNAL \Predictor~63_combout\ : std_logic;
SIGNAL \BranchTable[5][12]~q\ : std_logic;
SIGNAL \BranchTable[5][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][13]~q\ : std_logic;
SIGNAL \Predictor~62_combout\ : std_logic;
SIGNAL \Predictor~64_combout\ : std_logic;
SIGNAL \BranchTable[5][6]~q\ : std_logic;
SIGNAL \BranchTable[5][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][7]~q\ : std_logic;
SIGNAL \Predictor~58_combout\ : std_logic;
SIGNAL \BranchTable[5][1]~q\ : std_logic;
SIGNAL \BranchTable[5][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][0]~q\ : std_logic;
SIGNAL \Predictor~55_combout\ : std_logic;
SIGNAL \BranchTable[5][3]~q\ : std_logic;
SIGNAL \BranchTable[5][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][2]~q\ : std_logic;
SIGNAL \Predictor~56_combout\ : std_logic;
SIGNAL \BranchTable[5][5]~q\ : std_logic;
SIGNAL \BranchTable[5][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[5][4]~q\ : std_logic;
SIGNAL \Predictor~57_combout\ : std_logic;
SIGNAL \Predictor~59_combout\ : std_logic;
SIGNAL \Predictor~65_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \BranchTable[6][15]~22_combout\ : std_logic;
SIGNAL \BranchTable[6][5]~q\ : std_logic;
SIGNAL \BranchTable[6][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][4]~q\ : std_logic;
SIGNAL \Predictor~68_combout\ : std_logic;
SIGNAL \BranchTable[6][1]~q\ : std_logic;
SIGNAL \BranchTable[6][0]~q\ : std_logic;
SIGNAL \Predictor~66_combout\ : std_logic;
SIGNAL \BranchTable[6][3]~q\ : std_logic;
SIGNAL \BranchTable[6][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][2]~q\ : std_logic;
SIGNAL \Predictor~67_combout\ : std_logic;
SIGNAL \BranchTable[6][7]~q\ : std_logic;
SIGNAL \BranchTable[6][6]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][6]~q\ : std_logic;
SIGNAL \Predictor~69_combout\ : std_logic;
SIGNAL \Predictor~70_combout\ : std_logic;
SIGNAL \BranchTable[6][9]~q\ : std_logic;
SIGNAL \BranchTable[6][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][8]~q\ : std_logic;
SIGNAL \Predictor~71_combout\ : std_logic;
SIGNAL \BranchTable[6][11]~q\ : std_logic;
SIGNAL \BranchTable[6][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][10]~q\ : std_logic;
SIGNAL \Predictor~72_combout\ : std_logic;
SIGNAL \BranchTable[6][13]~q\ : std_logic;
SIGNAL \BranchTable[6][12]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[6][12]~q\ : std_logic;
SIGNAL \Predictor~73_combout\ : std_logic;
SIGNAL \BranchTable[6][14]~q\ : std_logic;
SIGNAL \BranchTable[6][15]~q\ : std_logic;
SIGNAL \Predictor~74_combout\ : std_logic;
SIGNAL \Predictor~75_combout\ : std_logic;
SIGNAL \Predictor~76_combout\ : std_logic;
SIGNAL \PredictedResult~5_combout\ : std_logic;
SIGNAL \write_table[15]~1_combout\ : std_logic;
SIGNAL \BranchTable~12_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \BranchTable[7][7]~23_combout\ : std_logic;
SIGNAL \BranchTable[7][10]~q\ : std_logic;
SIGNAL \BranchTable[7][11]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][11]~q\ : std_logic;
SIGNAL \Predictor~94_combout\ : std_logic;
SIGNAL \BranchTable[7][14]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][14]~q\ : std_logic;
SIGNAL \BranchTable[7][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][15]~q\ : std_logic;
SIGNAL \Predictor~96_combout\ : std_logic;
SIGNAL \BranchTable[7][12]~q\ : std_logic;
SIGNAL \BranchTable[7][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][13]~q\ : std_logic;
SIGNAL \Predictor~95_combout\ : std_logic;
SIGNAL \BranchTable[7][8]~q\ : std_logic;
SIGNAL \BranchTable[7][9]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][9]~q\ : std_logic;
SIGNAL \Predictor~93_combout\ : std_logic;
SIGNAL \Predictor~97_combout\ : std_logic;
SIGNAL \BranchTable[7][2]~q\ : std_logic;
SIGNAL \BranchTable[7][3]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][3]~q\ : std_logic;
SIGNAL \Predictor~89_combout\ : std_logic;
SIGNAL \BranchTable[7][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][7]~q\ : std_logic;
SIGNAL \BranchTable[7][6]~q\ : std_logic;
SIGNAL \Predictor~91_combout\ : std_logic;
SIGNAL \BranchTable[7][1]~q\ : std_logic;
SIGNAL \BranchTable[7][0]~q\ : std_logic;
SIGNAL \Predictor~88_combout\ : std_logic;
SIGNAL \BranchTable[7][4]~q\ : std_logic;
SIGNAL \BranchTable[7][5]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[7][5]~q\ : std_logic;
SIGNAL \Predictor~90_combout\ : std_logic;
SIGNAL \Predictor~92_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \BranchTable[8][15]~24_combout\ : std_logic;
SIGNAL \BranchTable[8][5]~q\ : std_logic;
SIGNAL \BranchTable[8][4]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][4]~q\ : std_logic;
SIGNAL \Predictor~79_combout\ : std_logic;
SIGNAL \BranchTable[8][1]~q\ : std_logic;
SIGNAL \BranchTable[8][0]~q\ : std_logic;
SIGNAL \Predictor~77_combout\ : std_logic;
SIGNAL \BranchTable[8][6]~q\ : std_logic;
SIGNAL \BranchTable[8][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][7]~q\ : std_logic;
SIGNAL \Predictor~80_combout\ : std_logic;
SIGNAL \BranchTable[8][3]~q\ : std_logic;
SIGNAL \BranchTable[8][2]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][2]~q\ : std_logic;
SIGNAL \Predictor~78_combout\ : std_logic;
SIGNAL \Predictor~81_combout\ : std_logic;
SIGNAL \BranchTable[8][12]~q\ : std_logic;
SIGNAL \BranchTable[8][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][13]~q\ : std_logic;
SIGNAL \Predictor~84_combout\ : std_logic;
SIGNAL \BranchTable[8][14]~q\ : std_logic;
SIGNAL \BranchTable[8][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][15]~q\ : std_logic;
SIGNAL \Predictor~85_combout\ : std_logic;
SIGNAL \BranchTable[8][9]~q\ : std_logic;
SIGNAL \BranchTable[8][8]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][8]~q\ : std_logic;
SIGNAL \Predictor~82_combout\ : std_logic;
SIGNAL \BranchTable[8][11]~q\ : std_logic;
SIGNAL \BranchTable[8][10]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[8][10]~q\ : std_logic;
SIGNAL \Predictor~83_combout\ : std_logic;
SIGNAL \Predictor~86_combout\ : std_logic;
SIGNAL \Predictor~87_combout\ : std_logic;
SIGNAL \PredictedResult~23_combout\ : std_logic;
SIGNAL \TableBusy~1_combout\ : std_logic;
SIGNAL \TableBusy~4_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \BranchTable[0][10]~18_combout\ : std_logic;
SIGNAL \BranchTable[0][1]~q\ : std_logic;
SIGNAL \BranchTable[0][0]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][0]~q\ : std_logic;
SIGNAL \Predictor~22_combout\ : std_logic;
SIGNAL \BranchTable[0][4]~q\ : std_logic;
SIGNAL \BranchTable[0][5]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][5]~q\ : std_logic;
SIGNAL \Predictor~24_combout\ : std_logic;
SIGNAL \BranchTable[0][6]~q\ : std_logic;
SIGNAL \BranchTable[0][7]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][7]~q\ : std_logic;
SIGNAL \Predictor~25_combout\ : std_logic;
SIGNAL \BranchTable[0][2]~q\ : std_logic;
SIGNAL \BranchTable[0][3]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][3]~q\ : std_logic;
SIGNAL \Predictor~23_combout\ : std_logic;
SIGNAL \Predictor~26_combout\ : std_logic;
SIGNAL \BranchTable[0][8]~q\ : std_logic;
SIGNAL \BranchTable[0][9]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][9]~q\ : std_logic;
SIGNAL \Predictor~27_combout\ : std_logic;
SIGNAL \BranchTable[0][12]~q\ : std_logic;
SIGNAL \BranchTable[0][13]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][13]~q\ : std_logic;
SIGNAL \Predictor~29_combout\ : std_logic;
SIGNAL \BranchTable[0][14]~q\ : std_logic;
SIGNAL \BranchTable[0][15]~feeder_combout\ : std_logic;
SIGNAL \BranchTable[0][15]~q\ : std_logic;
SIGNAL \Predictor~30_combout\ : std_logic;
SIGNAL \BranchTable[0][11]~q\ : std_logic;
SIGNAL \BranchTable[0][10]~q\ : std_logic;
SIGNAL \Predictor~28_combout\ : std_logic;
SIGNAL \Predictor~31_combout\ : std_logic;
SIGNAL \Predictor~32_combout\ : std_logic;
SIGNAL \PredictedResult~16_combout\ : std_logic;
SIGNAL \PredictedResult~17_combout\ : std_logic;
SIGNAL \PredictedResult~18_combout\ : std_logic;
SIGNAL \PredictedResult~19_combout\ : std_logic;
SIGNAL \PredictedResult~20_combout\ : std_logic;
SIGNAL \PredictedResult~21_combout\ : std_logic;
SIGNAL \Predictor~98_combout\ : std_logic;
SIGNAL \PredictedResult~6_combout\ : std_logic;
SIGNAL \PredictedResult~7_combout\ : std_logic;
SIGNAL \PredictedResult~8_combout\ : std_logic;
SIGNAL \PredictedResult~9_combout\ : std_logic;
SIGNAL \Instruction[5]~input_o\ : std_logic;
SIGNAL \PredictedResult~11_combout\ : std_logic;
SIGNAL \PredictedResult~10_combout\ : std_logic;
SIGNAL \PredictedResult~12_combout\ : std_logic;
SIGNAL \PredictedResult~14_combout\ : std_logic;
SIGNAL \PredictedResult~15_combout\ : std_logic;
SIGNAL \PredictedResult~22_combout\ : std_logic;
SIGNAL \PredictedResult~reg0_q\ : std_logic;
SIGNAL write_table : std_logic_vector(17 DOWNTO 0);
SIGNAL write_loc : std_logic_vector(3 DOWNTO 0);
SIGNAL TableBusy : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_Instruction <= Instruction;
ww_PC <= PC;
PredictedResult <= ww_PredictedResult;
ww_Address <= Address;
ww_ActualResult <= ActualResult;
ww_AddressValid <= AddressValid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X47_Y34_N23
\PredictedResult~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PredictedResult~reg0_q\,
	devoe => ww_devoe,
	o => \PredictedResult~output_o\);

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

-- Location: IOIBUF_X53_Y9_N15
\Instruction[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(12),
	o => \Instruction[12]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\Instruction[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(14),
	o => \Instruction[14]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\Instruction[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(15),
	o => \Instruction[15]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\Instruction[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(13),
	o => \Instruction[13]~input_o\);

-- Location: LCCOMB_X52_Y9_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Instruction[12]~input_o\ & (\Instruction[14]~input_o\ & (\Instruction[15]~input_o\ & !\Instruction[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[12]~input_o\,
	datab => \Instruction[14]~input_o\,
	datac => \Instruction[15]~input_o\,
	datad => \Instruction[13]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X53_Y26_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X46_Y30_N4
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\free_loc~4_combout\ & (!\free_loc~11_combout\ & (!\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X47_Y30_N6
\TableBusy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~7_combout\ = (TableBusy(5)) # ((\TableBusy~1_combout\ & \Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~4_combout\,
	datac => TableBusy(5),
	combout => \TableBusy~7_combout\);

-- Location: FF_X47_Y30_N7
\TableBusy[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(5));

-- Location: LCCOMB_X46_Y30_N20
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\free_loc~4_combout\ & (!\free_loc~11_combout\ & (!\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X47_Y30_N16
\TableBusy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~2_combout\ = (TableBusy(4)) # ((\TableBusy~1_combout\ & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~0_combout\,
	datac => TableBusy(4),
	combout => \TableBusy~2_combout\);

-- Location: FF_X47_Y30_N17
\TableBusy[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(4));

-- Location: LCCOMB_X48_Y30_N18
\free_loc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~9_combout\ = (TableBusy(5) & TableBusy(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(5),
	datac => TableBusy(4),
	combout => \free_loc~9_combout\);

-- Location: LCCOMB_X46_Y30_N22
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\free_loc~4_combout\ & (\free_loc~11_combout\ & (\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X47_Y30_N24
\TableBusy~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~12_combout\ = (TableBusy(11)) # ((\TableBusy~1_combout\ & \Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(11),
	datad => \Decoder0~9_combout\,
	combout => \TableBusy~12_combout\);

-- Location: FF_X47_Y30_N25
\TableBusy[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~12_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(11));

-- Location: LCCOMB_X46_Y30_N10
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (!\free_loc~4_combout\ & (\free_loc~11_combout\ & (\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X47_Y30_N8
\TableBusy~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~14_combout\ = (TableBusy(10)) # ((\TableBusy~1_combout\ & \Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(10),
	datad => \Decoder0~11_combout\,
	combout => \TableBusy~14_combout\);

-- Location: FF_X47_Y30_N9
\TableBusy[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~14_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(10));

-- Location: LCCOMB_X48_Y30_N28
\free_loc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~14_combout\ = (TableBusy(6) & (TableBusy(11) & (TableBusy(7) & TableBusy(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(6),
	datab => TableBusy(11),
	datac => TableBusy(7),
	datad => TableBusy(10),
	combout => \free_loc~14_combout\);

-- Location: LCCOMB_X46_Y30_N16
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\free_loc~4_combout\ & (!\free_loc~11_combout\ & (\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X47_Y30_N14
\TableBusy~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~9_combout\ = (TableBusy(8)) # ((\TableBusy~1_combout\ & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(8),
	datad => \Decoder0~6_combout\,
	combout => \TableBusy~9_combout\);

-- Location: FF_X47_Y30_N15
\TableBusy[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~9_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(8));

-- Location: LCCOMB_X46_Y30_N24
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\free_loc~4_combout\ & (!\free_loc~11_combout\ & (\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X47_Y30_N22
\TableBusy~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~13_combout\ = (TableBusy(9)) # ((\TableBusy~1_combout\ & \Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~10_combout\,
	datac => TableBusy(9),
	combout => \TableBusy~13_combout\);

-- Location: FF_X47_Y30_N23
\TableBusy[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~13_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(9));

-- Location: LCCOMB_X48_Y30_N4
\free_loc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~6_combout\ = (TableBusy(8) & (TableBusy(5) & (TableBusy(4) & TableBusy(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(8),
	datab => TableBusy(5),
	datac => TableBusy(4),
	datad => TableBusy(9),
	combout => \free_loc~6_combout\);

-- Location: LCCOMB_X46_Y30_N8
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\free_loc~4_combout\ & (!\free_loc~11_combout\ & (\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X47_Y30_N2
\TableBusy~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~11_combout\ = (TableBusy(12)) # ((\TableBusy~1_combout\ & \Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(12),
	datad => \Decoder0~8_combout\,
	combout => \TableBusy~11_combout\);

-- Location: FF_X47_Y30_N3
\TableBusy[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(12));

-- Location: LCCOMB_X46_Y30_N12
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\free_loc~4_combout\ & (\free_loc~11_combout\ & (\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X48_Y30_N24
\TableBusy~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~17_combout\ = (TableBusy(15)) # ((\Decoder0~14_combout\ & \TableBusy~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~14_combout\,
	datac => TableBusy(15),
	datad => \TableBusy~1_combout\,
	combout => \TableBusy~17_combout\);

-- Location: FF_X48_Y30_N25
\TableBusy[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~17_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(15));

-- Location: LCCOMB_X46_Y30_N28
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!\free_loc~4_combout\ & (\free_loc~11_combout\ & (\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X47_Y30_N26
\TableBusy~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~15_combout\ = (TableBusy(14)) # ((\TableBusy~1_combout\ & \Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~12_combout\,
	datac => TableBusy(14),
	combout => \TableBusy~15_combout\);

-- Location: FF_X47_Y30_N27
\TableBusy[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(14));

-- Location: LCCOMB_X46_Y30_N2
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\free_loc~4_combout\ & (!\free_loc~11_combout\ & (\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X47_Y30_N28
\TableBusy~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~16_combout\ = (TableBusy(13)) # ((\TableBusy~1_combout\ & \Decoder0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(13),
	datad => \Decoder0~13_combout\,
	combout => \TableBusy~16_combout\);

-- Location: FF_X47_Y30_N29
\TableBusy[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~16_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(13));

-- Location: LCCOMB_X48_Y30_N26
\free_loc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~12_combout\ = (((!TableBusy(13)) # (!TableBusy(14))) # (!TableBusy(15))) # (!TableBusy(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(12),
	datab => TableBusy(15),
	datac => TableBusy(14),
	datad => TableBusy(13),
	combout => \free_loc~12_combout\);

-- Location: LCCOMB_X46_Y30_N14
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\free_loc~4_combout\ & (\free_loc~11_combout\ & (!\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X47_Y30_N20
\TableBusy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~6_combout\ = (TableBusy(3)) # ((\TableBusy~1_combout\ & \Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(3),
	datad => \Decoder0~3_combout\,
	combout => \TableBusy~6_combout\);

-- Location: FF_X47_Y30_N21
\TableBusy[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~6_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(3));

-- Location: LCCOMB_X49_Y28_N28
\free_loc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~13_combout\ = (TableBusy(3) & (TableBusy(2) & (TableBusy(1) & TableBusy(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(3),
	datab => TableBusy(2),
	datac => TableBusy(1),
	datad => TableBusy(0),
	combout => \free_loc~13_combout\);

-- Location: LCCOMB_X48_Y28_N26
\free_loc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~15_combout\ = (\free_loc~14_combout\ & (\free_loc~6_combout\ & (\free_loc~12_combout\ & \free_loc~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~14_combout\,
	datab => \free_loc~6_combout\,
	datac => \free_loc~12_combout\,
	datad => \free_loc~13_combout\,
	combout => \free_loc~15_combout\);

-- Location: LCCOMB_X48_Y28_N24
\free_loc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~16_combout\ = (\free_loc~13_combout\ & ((!\free_loc~14_combout\) # (!\free_loc~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \free_loc~6_combout\,
	datac => \free_loc~14_combout\,
	datad => \free_loc~13_combout\,
	combout => \free_loc~16_combout\);

-- Location: LCCOMB_X48_Y29_N12
\free_loc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~18_combout\ = (\free_loc~15_combout\) # ((\free_loc~16_combout\ & ((!\free_loc~9_combout\) # (!\free_loc~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~17_combout\,
	datab => \free_loc~9_combout\,
	datac => \free_loc~15_combout\,
	datad => \free_loc~16_combout\,
	combout => \free_loc~18_combout\);

-- Location: LCCOMB_X46_Y30_N18
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\free_loc~4_combout\ & (\free_loc~11_combout\ & (!\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X47_Y30_N12
\TableBusy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~8_combout\ = (TableBusy(6)) # ((\TableBusy~1_combout\ & \Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~5_combout\,
	datac => TableBusy(6),
	combout => \TableBusy~8_combout\);

-- Location: FF_X47_Y30_N13
\TableBusy[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(6));

-- Location: LCCOMB_X48_Y30_N30
\free_loc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~17_combout\ = (TableBusy(7) & TableBusy(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TableBusy(7),
	datad => TableBusy(6),
	combout => \free_loc~17_combout\);

-- Location: LCCOMB_X48_Y29_N6
\free_loc~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~19_combout\ = (\free_loc~15_combout\) # ((\free_loc~17_combout\ & (\free_loc~9_combout\ & \free_loc~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~17_combout\,
	datab => \free_loc~9_combout\,
	datac => \free_loc~15_combout\,
	datad => \free_loc~16_combout\,
	combout => \free_loc~19_combout\);

-- Location: LCCOMB_X46_Y30_N6
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\free_loc~4_combout\ & (\free_loc~11_combout\ & (!\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X47_Y30_N10
\TableBusy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~3_combout\ = (TableBusy(2)) # ((\TableBusy~1_combout\ & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datab => \Decoder0~1_combout\,
	datac => TableBusy(2),
	combout => \TableBusy~3_combout\);

-- Location: FF_X47_Y30_N11
\TableBusy[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(2));

-- Location: LCCOMB_X48_Y30_N2
\free_loc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~7_combout\ = (TableBusy(12) & (TableBusy(13) & ((!TableBusy(14)) # (!TableBusy(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(12),
	datab => TableBusy(15),
	datac => TableBusy(14),
	datad => TableBusy(13),
	combout => \free_loc~7_combout\);

-- Location: LCCOMB_X48_Y30_N20
\free_loc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~8_combout\ = (\free_loc~6_combout\ & (((\free_loc~7_combout\) # (!TableBusy(11))) # (!TableBusy(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(10),
	datab => TableBusy(11),
	datac => \free_loc~6_combout\,
	datad => \free_loc~7_combout\,
	combout => \free_loc~8_combout\);

-- Location: LCCOMB_X48_Y30_N16
\free_loc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~10_combout\ = (\free_loc~8_combout\) # ((\free_loc~9_combout\ & ((!TableBusy(7)) # (!TableBusy(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(6),
	datab => \free_loc~9_combout\,
	datac => TableBusy(7),
	datad => \free_loc~8_combout\,
	combout => \free_loc~10_combout\);

-- Location: LCCOMB_X48_Y28_N16
\free_loc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~5_combout\ = (TableBusy(0) & TableBusy(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(0),
	datad => TableBusy(1),
	combout => \free_loc~5_combout\);

-- Location: LCCOMB_X48_Y28_N8
\free_loc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~11_combout\ = (\free_loc~5_combout\ & (((\free_loc~10_combout\) # (!TableBusy(3))) # (!TableBusy(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(2),
	datab => TableBusy(3),
	datac => \free_loc~10_combout\,
	datad => \free_loc~5_combout\,
	combout => \free_loc~11_combout\);

-- Location: LCCOMB_X46_Y30_N0
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\free_loc~4_combout\ & (!\free_loc~11_combout\ & (!\free_loc~19_combout\ & !\free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X47_Y30_N18
\TableBusy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~5_combout\ = (TableBusy(1)) # ((\TableBusy~1_combout\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(1),
	datad => \Decoder0~2_combout\,
	combout => \TableBusy~5_combout\);

-- Location: FF_X47_Y30_N19
\TableBusy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~5_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(1));

-- Location: LCCOMB_X48_Y30_N14
\free_loc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~0_combout\ = (TableBusy(12) & (((!TableBusy(15) & TableBusy(14))) # (!TableBusy(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(12),
	datab => TableBusy(15),
	datac => TableBusy(14),
	datad => TableBusy(13),
	combout => \free_loc~0_combout\);

-- Location: LCCOMB_X48_Y30_N12
\free_loc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~1_combout\ = ((TableBusy(10) & ((\free_loc~0_combout\) # (!TableBusy(11))))) # (!TableBusy(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(10),
	datab => TableBusy(11),
	datac => \free_loc~0_combout\,
	datad => TableBusy(9),
	combout => \free_loc~1_combout\);

-- Location: LCCOMB_X48_Y30_N6
\free_loc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~2_combout\ = (TableBusy(6) & (((TableBusy(8) & \free_loc~1_combout\)) # (!TableBusy(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(6),
	datab => TableBusy(7),
	datac => TableBusy(8),
	datad => \free_loc~1_combout\,
	combout => \free_loc~2_combout\);

-- Location: LCCOMB_X48_Y30_N0
\free_loc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~3_combout\ = (TableBusy(3) & (((TableBusy(5) & !\free_loc~2_combout\)) # (!TableBusy(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(4),
	datab => TableBusy(5),
	datac => TableBusy(3),
	datad => \free_loc~2_combout\,
	combout => \free_loc~3_combout\);

-- Location: LCCOMB_X48_Y30_N22
\free_loc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \free_loc~4_combout\ = (TableBusy(0) & (((TableBusy(2) & !\free_loc~3_combout\)) # (!TableBusy(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(1),
	datab => TableBusy(2),
	datac => TableBusy(0),
	datad => \free_loc~3_combout\,
	combout => \free_loc~4_combout\);

-- Location: LCCOMB_X46_Y30_N30
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\free_loc~4_combout\ & (\free_loc~11_combout\ & (!\free_loc~19_combout\ & \free_loc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \free_loc~4_combout\,
	datab => \free_loc~11_combout\,
	datac => \free_loc~19_combout\,
	datad => \free_loc~18_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X47_Y30_N0
\TableBusy~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~10_combout\ = (TableBusy(7)) # ((\TableBusy~1_combout\ & \Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(7),
	datad => \Decoder0~7_combout\,
	combout => \TableBusy~10_combout\);

-- Location: FF_X47_Y30_N1
\TableBusy[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~10_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(7));

-- Location: IOIBUF_X53_Y17_N1
\PC[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\PC[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

-- Location: FF_X47_Y29_N1
\write_table[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[3]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(3));

-- Location: LCCOMB_X47_Y29_N0
\BranchTable~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~3_combout\ = (!\reset~input_o\ & write_table(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => write_table(3),
	combout => \BranchTable~3_combout\);

-- Location: FF_X48_Y29_N13
\write_loc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \free_loc~18_combout\,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_loc(2));

-- Location: FF_X48_Y29_N29
\write_loc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \free_loc~4_combout\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_loc(0));

-- Location: FF_X48_Y29_N31
\write_loc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \free_loc~11_combout\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_loc(1));

-- Location: FF_X48_Y29_N7
\write_loc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \free_loc~19_combout\,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_loc(3));

-- Location: LCCOMB_X48_Y29_N14
\Decoder1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~12_combout\ = (!write_loc(2) & (!write_loc(0) & (write_loc(1) & write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(1),
	datad => write_loc(3),
	combout => \Decoder1~12_combout\);

-- Location: FF_X47_Y30_N31
write_table_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_table_en~q\);

-- Location: LCCOMB_X48_Y29_N8
\BranchTable[10][15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][15]~28_combout\ = (\reset~input_o\) # ((\Decoder1~12_combout\ & \write_table_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder1~12_combout\,
	datad => \write_table_en~q\,
	combout => \BranchTable[10][15]~28_combout\);

-- Location: FF_X48_Y27_N23
\BranchTable[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][3]~q\);

-- Location: FF_X44_Y29_N31
\write_table[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[2]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(2));

-- Location: LCCOMB_X44_Y29_N30
\BranchTable~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~4_combout\ = (write_table(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(2),
	datad => \reset~input_o\,
	combout => \BranchTable~4_combout\);

-- Location: LCCOMB_X48_Y27_N4
\BranchTable[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[10][2]~feeder_combout\);

-- Location: FF_X48_Y27_N5
\BranchTable[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][2]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][2]~q\);

-- Location: LCCOMB_X48_Y27_N22
\Predictor~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~133_combout\ = (\PC[2]~input_o\ & (\BranchTable[10][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[10][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[10][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[10][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[10][3]~q\,
	datad => \BranchTable[10][2]~q\,
	combout => \Predictor~133_combout\);

-- Location: IOIBUF_X53_Y17_N15
\PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

-- Location: FF_X51_Y29_N1
\write_table[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[6]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(6));

-- Location: LCCOMB_X51_Y29_N0
\BranchTable~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~8_combout\ = (!\reset~input_o\ & write_table(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => write_table(6),
	combout => \BranchTable~8_combout\);

-- Location: FF_X48_Y27_N17
\BranchTable[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][6]~q\);

-- Location: FF_X51_Y29_N23
\write_table[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[7]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(7));

-- Location: LCCOMB_X51_Y29_N22
\BranchTable~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~7_combout\ = (!\reset~input_o\ & write_table(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => write_table(7),
	combout => \BranchTable~7_combout\);

-- Location: LCCOMB_X48_Y27_N2
\BranchTable[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[10][7]~feeder_combout\);

-- Location: FF_X48_Y27_N3
\BranchTable[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][7]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][7]~q\);

-- Location: LCCOMB_X48_Y27_N16
\Predictor~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~135_combout\ = (\PC[7]~input_o\ & (\BranchTable[10][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[10][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[10][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[10][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[10][6]~q\,
	datad => \BranchTable[10][7]~q\,
	combout => \Predictor~135_combout\);

-- Location: IOIBUF_X53_Y30_N1
\PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

-- Location: FF_X51_Y29_N9
\write_table[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[1]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(1));

-- Location: LCCOMB_X51_Y29_N8
\BranchTable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~0_combout\ = (!\reset~input_o\ & write_table(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => write_table(1),
	combout => \BranchTable~0_combout\);

-- Location: FF_X48_Y27_N31
\BranchTable[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][1]~q\);

-- Location: FF_X44_Y29_N25
\write_table[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[0]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(0));

-- Location: LCCOMB_X44_Y29_N24
\BranchTable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~2_combout\ = (write_table(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(0),
	datad => \reset~input_o\,
	combout => \BranchTable~2_combout\);

-- Location: LCCOMB_X48_Y27_N20
\BranchTable[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~2_combout\,
	combout => \BranchTable[10][0]~feeder_combout\);

-- Location: FF_X48_Y27_N21
\BranchTable[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][0]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][0]~q\);

-- Location: LCCOMB_X48_Y27_N30
\Predictor~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~132_combout\ = (\PC[1]~input_o\ & (\BranchTable[10][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[10][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[10][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[10][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[10][1]~q\,
	datad => \BranchTable[10][0]~q\,
	combout => \Predictor~132_combout\);

-- Location: IOIBUF_X45_Y34_N15
\PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);

-- Location: FF_X48_Y29_N1
\write_table[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[5]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(5));

-- Location: LCCOMB_X48_Y29_N30
\BranchTable~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~5_combout\ = (!\reset~input_o\ & write_table(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => write_table(5),
	combout => \BranchTable~5_combout\);

-- Location: FF_X48_Y27_N19
\BranchTable[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][5]~q\);

-- Location: FF_X48_Y29_N27
\write_table[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[4]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(4));

-- Location: LCCOMB_X49_Y29_N28
\BranchTable~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~6_combout\ = (write_table(4) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_table(4),
	datad => \reset~input_o\,
	combout => \BranchTable~6_combout\);

-- Location: LCCOMB_X48_Y27_N28
\BranchTable[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[10][4]~feeder_combout\);

-- Location: FF_X48_Y27_N29
\BranchTable[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][4]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][4]~q\);

-- Location: LCCOMB_X48_Y27_N18
\Predictor~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~134_combout\ = (\PC[4]~input_o\ & (\BranchTable[10][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[10][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[10][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[10][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[10][5]~q\,
	datad => \BranchTable[10][4]~q\,
	combout => \Predictor~134_combout\);

-- Location: LCCOMB_X48_Y27_N14
\Predictor~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~136_combout\ = (\Predictor~133_combout\ & (\Predictor~135_combout\ & (\Predictor~132_combout\ & \Predictor~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~133_combout\,
	datab => \Predictor~135_combout\,
	datac => \Predictor~132_combout\,
	datad => \Predictor~134_combout\,
	combout => \Predictor~136_combout\);

-- Location: IOIBUF_X43_Y34_N15
\PC[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\PC[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

-- Location: FF_X48_Y29_N23
\write_table[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[14]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(14));

-- Location: LCCOMB_X49_Y29_N10
\BranchTable~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~16_combout\ = (!\reset~input_o\ & write_table(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => write_table(14),
	combout => \BranchTable~16_combout\);

-- Location: FF_X49_Y27_N31
\BranchTable[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][14]~q\);

-- Location: FF_X44_Y29_N23
\write_table[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[15]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(15));

-- Location: LCCOMB_X44_Y29_N22
\BranchTable~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~15_combout\ = (write_table(15) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(15),
	datad => \reset~input_o\,
	combout => \BranchTable~15_combout\);

-- Location: LCCOMB_X49_Y27_N28
\BranchTable[10][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[10][15]~feeder_combout\);

-- Location: FF_X49_Y27_N29
\BranchTable[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][15]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][15]~q\);

-- Location: LCCOMB_X49_Y27_N30
\Predictor~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~140_combout\ = (\PC[14]~input_o\ & (\BranchTable[10][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[10][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[10][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[10][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[10][14]~q\,
	datad => \BranchTable[10][15]~q\,
	combout => \Predictor~140_combout\);

-- Location: FF_X51_Y29_N5
\write_table[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[11]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(11));

-- Location: LCCOMB_X51_Y29_N4
\BranchTable~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~11_combout\ = (!\reset~input_o\ & write_table(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => write_table(11),
	combout => \BranchTable~11_combout\);

-- Location: FF_X49_Y27_N17
\BranchTable[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][11]~q\);

-- Location: LCCOMB_X49_Y27_N18
\BranchTable[10][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~12_combout\,
	combout => \BranchTable[10][10]~feeder_combout\);

-- Location: FF_X49_Y27_N19
\BranchTable[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][10]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][10]~q\);

-- Location: LCCOMB_X49_Y27_N16
\Predictor~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~138_combout\ = (\PC[10]~input_o\ & (\BranchTable[10][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[10][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[10][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[10][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[10][11]~q\,
	datad => \BranchTable[10][10]~q\,
	combout => \Predictor~138_combout\);

-- Location: IOIBUF_X53_Y30_N8
\PC[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\PC[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

-- Location: FF_X44_Y29_N5
\write_table[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[12]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(12));

-- Location: LCCOMB_X44_Y29_N4
\BranchTable~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~14_combout\ = (write_table(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(12),
	datad => \reset~input_o\,
	combout => \BranchTable~14_combout\);

-- Location: FF_X49_Y27_N15
\BranchTable[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][12]~q\);

-- Location: FF_X44_Y29_N15
\write_table[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[13]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(13));

-- Location: LCCOMB_X44_Y29_N14
\BranchTable~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~13_combout\ = (write_table(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(13),
	datad => \reset~input_o\,
	combout => \BranchTable~13_combout\);

-- Location: LCCOMB_X49_Y27_N20
\BranchTable[10][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[10][13]~feeder_combout\);

-- Location: FF_X49_Y27_N21
\BranchTable[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][13]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][13]~q\);

-- Location: LCCOMB_X49_Y27_N14
\Predictor~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~139_combout\ = (\PC[13]~input_o\ & (\BranchTable[10][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[10][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[10][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[10][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[10][12]~q\,
	datad => \BranchTable[10][13]~q\,
	combout => \Predictor~139_combout\);

-- Location: IOIBUF_X53_Y17_N8
\PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

-- Location: FF_X51_Y29_N27
\write_table[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[9]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(9));

-- Location: LCCOMB_X51_Y29_N26
\BranchTable~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~9_combout\ = (!\reset~input_o\ & write_table(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => write_table(9),
	combout => \BranchTable~9_combout\);

-- Location: FF_X49_Y27_N13
\BranchTable[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][9]~q\);

-- Location: FF_X44_Y29_N1
\write_table[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[8]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(8));

-- Location: LCCOMB_X44_Y29_N0
\BranchTable~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~10_combout\ = (write_table(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => write_table(8),
	datad => \reset~input_o\,
	combout => \BranchTable~10_combout\);

-- Location: LCCOMB_X49_Y27_N10
\BranchTable[10][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[10][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[10][8]~feeder_combout\);

-- Location: FF_X49_Y27_N11
\BranchTable[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[10][8]~feeder_combout\,
	ena => \BranchTable[10][15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[10][8]~q\);

-- Location: LCCOMB_X49_Y27_N12
\Predictor~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~137_combout\ = (\PC[9]~input_o\ & (\BranchTable[10][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[10][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[10][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[10][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[10][9]~q\,
	datad => \BranchTable[10][8]~q\,
	combout => \Predictor~137_combout\);

-- Location: LCCOMB_X49_Y27_N24
\Predictor~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~141_combout\ = (\Predictor~140_combout\ & (\Predictor~138_combout\ & (\Predictor~139_combout\ & \Predictor~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~140_combout\,
	datab => \Predictor~138_combout\,
	datac => \Predictor~139_combout\,
	datad => \Predictor~137_combout\,
	combout => \Predictor~141_combout\);

-- Location: LCCOMB_X48_Y27_N24
\Predictor~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~142_combout\ = (TableBusy(10) & (\Predictor~136_combout\ & \Predictor~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(10),
	datac => \Predictor~136_combout\,
	datad => \Predictor~141_combout\,
	combout => \Predictor~142_combout\);

-- Location: LCCOMB_X48_Y28_N12
\Decoder1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~11_combout\ = (!write_loc(1) & (write_loc(3) & (!write_loc(2) & write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(3),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~11_combout\);

-- Location: LCCOMB_X48_Y28_N6
\BranchTable[9][10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][10]~27_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \write_table_en~q\,
	datad => \Decoder1~11_combout\,
	combout => \BranchTable[9][10]~27_combout\);

-- Location: FF_X48_Y28_N31
\BranchTable[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][10]~q\);

-- Location: LCCOMB_X48_Y28_N28
\BranchTable[9][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[9][11]~feeder_combout\);

-- Location: FF_X48_Y28_N29
\BranchTable[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][11]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][11]~q\);

-- Location: LCCOMB_X48_Y28_N30
\Predictor~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~127_combout\ = (\PC[10]~input_o\ & (\BranchTable[9][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[9][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[9][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[9][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[9][10]~q\,
	datad => \BranchTable[9][11]~q\,
	combout => \Predictor~127_combout\);

-- Location: FF_X47_Y28_N29
\BranchTable[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][12]~q\);

-- Location: LCCOMB_X47_Y28_N26
\BranchTable[9][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[9][13]~feeder_combout\);

-- Location: FF_X47_Y28_N27
\BranchTable[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][13]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][13]~q\);

-- Location: LCCOMB_X47_Y28_N28
\Predictor~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~128_combout\ = (\PC[13]~input_o\ & (\BranchTable[9][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[9][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[9][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[9][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[9][12]~q\,
	datad => \BranchTable[9][13]~q\,
	combout => \Predictor~128_combout\);

-- Location: FF_X47_Y28_N5
\BranchTable[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][14]~q\);

-- Location: LCCOMB_X47_Y28_N10
\BranchTable[9][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[9][15]~feeder_combout\);

-- Location: FF_X47_Y28_N11
\BranchTable[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][15]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][15]~q\);

-- Location: LCCOMB_X47_Y28_N4
\Predictor~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~129_combout\ = (\PC[14]~input_o\ & (\BranchTable[9][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[9][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[9][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[9][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[9][14]~q\,
	datad => \BranchTable[9][15]~q\,
	combout => \Predictor~129_combout\);

-- Location: FF_X48_Y28_N23
\BranchTable[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][8]~q\);

-- Location: FF_X48_Y28_N17
\BranchTable[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][9]~q\);

-- Location: LCCOMB_X48_Y28_N22
\Predictor~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~126_combout\ = (\PC[9]~input_o\ & (\BranchTable[9][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[9][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[9][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[9][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[9][8]~q\,
	datad => \BranchTable[9][9]~q\,
	combout => \Predictor~126_combout\);

-- Location: LCCOMB_X47_Y28_N30
\Predictor~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~130_combout\ = (\Predictor~127_combout\ & (\Predictor~128_combout\ & (\Predictor~129_combout\ & \Predictor~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~127_combout\,
	datab => \Predictor~128_combout\,
	datac => \Predictor~129_combout\,
	datad => \Predictor~126_combout\,
	combout => \Predictor~130_combout\);

-- Location: FF_X47_Y28_N23
\BranchTable[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][6]~q\);

-- Location: LCCOMB_X47_Y28_N24
\BranchTable[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[9][7]~feeder_combout\);

-- Location: FF_X47_Y28_N25
\BranchTable[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][7]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][7]~q\);

-- Location: LCCOMB_X47_Y28_N22
\Predictor~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~124_combout\ = (\PC[7]~input_o\ & (\BranchTable[9][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[9][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[9][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[9][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[9][6]~q\,
	datad => \BranchTable[9][7]~q\,
	combout => \Predictor~124_combout\);

-- Location: FF_X47_Y28_N17
\BranchTable[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][3]~q\);

-- Location: LCCOMB_X47_Y28_N6
\BranchTable[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[9][2]~feeder_combout\);

-- Location: FF_X47_Y28_N7
\BranchTable[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][2]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][2]~q\);

-- Location: LCCOMB_X47_Y28_N16
\Predictor~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~122_combout\ = (\PC[2]~input_o\ & (\BranchTable[9][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[9][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[9][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[9][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[9][3]~q\,
	datad => \BranchTable[9][2]~q\,
	combout => \Predictor~122_combout\);

-- Location: FF_X47_Y28_N9
\BranchTable[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][5]~q\);

-- Location: LCCOMB_X47_Y28_N18
\BranchTable[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[9][4]~feeder_combout\);

-- Location: FF_X47_Y28_N19
\BranchTable[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][4]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][4]~q\);

-- Location: LCCOMB_X47_Y28_N8
\Predictor~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~123_combout\ = (\PC[5]~input_o\ & (\BranchTable[9][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[9][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[9][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[9][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[9][5]~q\,
	datad => \BranchTable[9][4]~q\,
	combout => \Predictor~123_combout\);

-- Location: FF_X47_Y28_N21
\BranchTable[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][1]~q\);

-- Location: LCCOMB_X47_Y28_N2
\BranchTable[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[9][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[9][0]~feeder_combout\);

-- Location: FF_X47_Y28_N3
\BranchTable[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[9][0]~feeder_combout\,
	ena => \BranchTable[9][10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[9][0]~q\);

-- Location: LCCOMB_X47_Y28_N20
\Predictor~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~121_combout\ = (\PC[0]~input_o\ & (\BranchTable[9][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[9][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[9][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[9][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[9][1]~q\,
	datad => \BranchTable[9][0]~q\,
	combout => \Predictor~121_combout\);

-- Location: LCCOMB_X47_Y28_N12
\Predictor~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~125_combout\ = (\Predictor~124_combout\ & (\Predictor~122_combout\ & (\Predictor~123_combout\ & \Predictor~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~124_combout\,
	datab => \Predictor~122_combout\,
	datac => \Predictor~123_combout\,
	datad => \Predictor~121_combout\,
	combout => \Predictor~125_combout\);

-- Location: LCCOMB_X47_Y28_N0
\Predictor~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~131_combout\ = (\Predictor~130_combout\ & (TableBusy(9) & \Predictor~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~130_combout\,
	datab => TableBusy(9),
	datad => \Predictor~125_combout\,
	combout => \Predictor~131_combout\);

-- Location: LCCOMB_X49_Y28_N8
\Decoder1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~10_combout\ = (!write_loc(0) & (!write_loc(1) & (write_loc(3) & write_loc(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(0),
	datab => write_loc(1),
	datac => write_loc(3),
	datad => write_loc(2),
	combout => \Decoder1~10_combout\);

-- Location: LCCOMB_X46_Y28_N26
\BranchTable[12][7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][7]~26_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \write_table_en~q\,
	datad => \Decoder1~10_combout\,
	combout => \BranchTable[12][7]~26_combout\);

-- Location: FF_X46_Y31_N23
\BranchTable[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][11]~q\);

-- Location: LCCOMB_X46_Y31_N0
\BranchTable[12][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~12_combout\,
	combout => \BranchTable[12][10]~feeder_combout\);

-- Location: FF_X46_Y31_N1
\BranchTable[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][10]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][10]~q\);

-- Location: LCCOMB_X46_Y31_N22
\Predictor~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~105_combout\ = (\PC[10]~input_o\ & (\BranchTable[12][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[12][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[12][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[12][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[12][11]~q\,
	datad => \BranchTable[12][10]~q\,
	combout => \Predictor~105_combout\);

-- Location: FF_X46_Y31_N15
\BranchTable[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][14]~q\);

-- Location: FF_X46_Y31_N11
\BranchTable[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~15_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][15]~q\);

-- Location: LCCOMB_X46_Y31_N14
\Predictor~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~107_combout\ = (\PC[15]~input_o\ & (\BranchTable[12][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[12][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[12][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[12][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[12][14]~q\,
	datad => \BranchTable[12][15]~q\,
	combout => \Predictor~107_combout\);

-- Location: FF_X46_Y31_N31
\BranchTable[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~13_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][13]~q\);

-- Location: LCCOMB_X46_Y31_N20
\BranchTable[12][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][12]~feeder_combout\ = \BranchTable~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~14_combout\,
	combout => \BranchTable[12][12]~feeder_combout\);

-- Location: FF_X46_Y31_N21
\BranchTable[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][12]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][12]~q\);

-- Location: LCCOMB_X46_Y31_N30
\Predictor~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~106_combout\ = (\PC[13]~input_o\ & (\BranchTable[12][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[12][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[12][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[12][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[12][13]~q\,
	datad => \BranchTable[12][12]~q\,
	combout => \Predictor~106_combout\);

-- Location: FF_X45_Y31_N9
\BranchTable[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][9]~q\);

-- Location: LCCOMB_X45_Y31_N10
\BranchTable[12][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[12][8]~feeder_combout\);

-- Location: FF_X45_Y31_N11
\BranchTable[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][8]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][8]~q\);

-- Location: LCCOMB_X45_Y31_N8
\Predictor~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~104_combout\ = (\PC[8]~input_o\ & (\BranchTable[12][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[12][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[12][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[12][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[12][9]~q\,
	datad => \BranchTable[12][8]~q\,
	combout => \Predictor~104_combout\);

-- Location: LCCOMB_X46_Y31_N4
\Predictor~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~108_combout\ = (\Predictor~105_combout\ & (\Predictor~107_combout\ & (\Predictor~106_combout\ & \Predictor~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~105_combout\,
	datab => \Predictor~107_combout\,
	datac => \Predictor~106_combout\,
	datad => \Predictor~104_combout\,
	combout => \Predictor~108_combout\);

-- Location: FF_X45_Y31_N13
\BranchTable[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][3]~q\);

-- Location: LCCOMB_X45_Y31_N6
\BranchTable[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[12][2]~feeder_combout\);

-- Location: FF_X45_Y31_N7
\BranchTable[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][2]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][2]~q\);

-- Location: LCCOMB_X45_Y31_N12
\Predictor~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~100_combout\ = (\PC[3]~input_o\ & (\BranchTable[12][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[12][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[12][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[12][3]~q\,
	datad => \BranchTable[12][2]~q\,
	combout => \Predictor~100_combout\);

-- Location: FF_X46_Y31_N9
\BranchTable[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][1]~q\);

-- Location: FF_X46_Y31_N19
\BranchTable[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][0]~q\);

-- Location: LCCOMB_X46_Y31_N8
\Predictor~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~99_combout\ = (\PC[0]~input_o\ & (\BranchTable[12][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[12][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[12][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[12][1]~q\,
	datad => \BranchTable[12][0]~q\,
	combout => \Predictor~99_combout\);

-- Location: FF_X45_Y31_N17
\BranchTable[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~7_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][7]~q\);

-- Location: LCCOMB_X45_Y31_N26
\BranchTable[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][6]~feeder_combout\ = \BranchTable~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~8_combout\,
	combout => \BranchTable[12][6]~feeder_combout\);

-- Location: FF_X45_Y31_N27
\BranchTable[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][6]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][6]~q\);

-- Location: LCCOMB_X45_Y31_N16
\Predictor~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~102_combout\ = (\PC[6]~input_o\ & (\BranchTable[12][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[12][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[12][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[12][7]~q\,
	datad => \BranchTable[12][6]~q\,
	combout => \Predictor~102_combout\);

-- Location: FF_X50_Y31_N11
\BranchTable[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][4]~q\);

-- Location: LCCOMB_X50_Y31_N0
\BranchTable[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[12][5]~feeder_combout\ = \BranchTable~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~5_combout\,
	combout => \BranchTable[12][5]~feeder_combout\);

-- Location: FF_X50_Y31_N1
\BranchTable[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[12][5]~feeder_combout\,
	ena => \BranchTable[12][7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[12][5]~q\);

-- Location: LCCOMB_X50_Y31_N10
\Predictor~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~101_combout\ = (\PC[4]~input_o\ & (\BranchTable[12][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[12][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[12][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[12][4]~q\,
	datad => \BranchTable[12][5]~q\,
	combout => \Predictor~101_combout\);

-- Location: LCCOMB_X46_Y31_N24
\Predictor~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~103_combout\ = (\Predictor~100_combout\ & (\Predictor~99_combout\ & (\Predictor~102_combout\ & \Predictor~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~100_combout\,
	datab => \Predictor~99_combout\,
	datac => \Predictor~102_combout\,
	datad => \Predictor~101_combout\,
	combout => \Predictor~103_combout\);

-- Location: LCCOMB_X46_Y31_N18
\Predictor~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~109_combout\ = (TableBusy(12) & (\Predictor~108_combout\ & \Predictor~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(12),
	datab => \Predictor~108_combout\,
	datad => \Predictor~103_combout\,
	combout => \Predictor~109_combout\);

-- Location: LCCOMB_X48_Y28_N0
\Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~9_combout\ = (write_loc(1) & (write_loc(3) & (!write_loc(2) & write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(3),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~9_combout\);

-- Location: LCCOMB_X48_Y28_N2
\BranchTable[11][8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][8]~25_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \write_table_en~q\,
	datad => \Decoder1~9_combout\,
	combout => \BranchTable[11][8]~25_combout\);

-- Location: FF_X47_Y31_N27
\BranchTable[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][6]~q\);

-- Location: LCCOMB_X47_Y31_N24
\BranchTable[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[11][7]~feeder_combout\);

-- Location: FF_X47_Y31_N25
\BranchTable[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][7]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][7]~q\);

-- Location: LCCOMB_X47_Y31_N26
\Predictor~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~113_combout\ = (\PC[7]~input_o\ & (\BranchTable[11][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[11][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[11][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[11][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[11][6]~q\,
	datad => \BranchTable[11][7]~q\,
	combout => \Predictor~113_combout\);

-- Location: FF_X47_Y31_N21
\BranchTable[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][3]~q\);

-- Location: LCCOMB_X47_Y31_N18
\BranchTable[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[11][2]~feeder_combout\);

-- Location: FF_X47_Y31_N19
\BranchTable[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][2]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][2]~q\);

-- Location: LCCOMB_X47_Y31_N20
\Predictor~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~111_combout\ = (\PC[2]~input_o\ & (\BranchTable[11][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[11][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[11][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[11][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[11][3]~q\,
	datad => \BranchTable[11][2]~q\,
	combout => \Predictor~111_combout\);

-- Location: FF_X47_Y31_N5
\BranchTable[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][1]~q\);

-- Location: LCCOMB_X47_Y31_N30
\BranchTable[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~2_combout\,
	combout => \BranchTable[11][0]~feeder_combout\);

-- Location: FF_X47_Y31_N31
\BranchTable[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][0]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][0]~q\);

-- Location: LCCOMB_X47_Y31_N4
\Predictor~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~110_combout\ = (\PC[1]~input_o\ & (\BranchTable[11][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[11][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[11][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[11][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[11][1]~q\,
	datad => \BranchTable[11][0]~q\,
	combout => \Predictor~110_combout\);

-- Location: FF_X48_Y31_N7
\BranchTable[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][5]~q\);

-- Location: LCCOMB_X48_Y31_N24
\BranchTable[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~6_combout\,
	combout => \BranchTable[11][4]~feeder_combout\);

-- Location: FF_X48_Y31_N25
\BranchTable[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][4]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][4]~q\);

-- Location: LCCOMB_X48_Y31_N6
\Predictor~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~112_combout\ = (\PC[5]~input_o\ & (\BranchTable[11][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[11][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[11][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[11][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[11][5]~q\,
	datad => \BranchTable[11][4]~q\,
	combout => \Predictor~112_combout\);

-- Location: LCCOMB_X47_Y31_N12
\Predictor~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~114_combout\ = (\Predictor~113_combout\ & (\Predictor~111_combout\ & (\Predictor~110_combout\ & \Predictor~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~113_combout\,
	datab => \Predictor~111_combout\,
	datac => \Predictor~110_combout\,
	datad => \Predictor~112_combout\,
	combout => \Predictor~114_combout\);

-- Location: FF_X46_Y31_N13
\BranchTable[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][10]~q\);

-- Location: LCCOMB_X46_Y31_N6
\BranchTable[11][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[11][11]~feeder_combout\);

-- Location: FF_X46_Y31_N7
\BranchTable[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][11]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][11]~q\);

-- Location: LCCOMB_X46_Y31_N12
\Predictor~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~116_combout\ = (\PC[10]~input_o\ & (\BranchTable[11][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[11][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[11][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[11][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[11][10]~q\,
	datad => \BranchTable[11][11]~q\,
	combout => \Predictor~116_combout\);

-- Location: FF_X47_Y31_N17
\BranchTable[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][12]~q\);

-- Location: LCCOMB_X47_Y31_N10
\BranchTable[11][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[11][13]~feeder_combout\);

-- Location: FF_X47_Y31_N11
\BranchTable[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][13]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][13]~q\);

-- Location: LCCOMB_X47_Y31_N16
\Predictor~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~117_combout\ = (\PC[13]~input_o\ & (\BranchTable[11][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[11][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[11][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[11][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[11][12]~q\,
	datad => \BranchTable[11][13]~q\,
	combout => \Predictor~117_combout\);

-- Location: FF_X46_Y31_N27
\BranchTable[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][14]~q\);

-- Location: LCCOMB_X46_Y31_N16
\BranchTable[11][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[11][15]~feeder_combout\);

-- Location: FF_X46_Y31_N17
\BranchTable[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][15]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][15]~q\);

-- Location: LCCOMB_X46_Y31_N26
\Predictor~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~118_combout\ = (\PC[15]~input_o\ & (\BranchTable[11][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[11][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[11][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[11][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[11][14]~q\,
	datad => \BranchTable[11][15]~q\,
	combout => \Predictor~118_combout\);

-- Location: FF_X46_Y31_N3
\BranchTable[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][9]~q\);

-- Location: LCCOMB_X46_Y31_N28
\BranchTable[11][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[11][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~10_combout\,
	combout => \BranchTable[11][8]~feeder_combout\);

-- Location: FF_X46_Y31_N29
\BranchTable[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[11][8]~feeder_combout\,
	ena => \BranchTable[11][8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[11][8]~q\);

-- Location: LCCOMB_X46_Y31_N2
\Predictor~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~115_combout\ = (\PC[9]~input_o\ & (\BranchTable[11][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[11][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[11][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[11][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[11][9]~q\,
	datad => \BranchTable[11][8]~q\,
	combout => \Predictor~115_combout\);

-- Location: LCCOMB_X47_Y31_N6
\Predictor~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~119_combout\ = (\Predictor~116_combout\ & (\Predictor~117_combout\ & (\Predictor~118_combout\ & \Predictor~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~116_combout\,
	datab => \Predictor~117_combout\,
	datac => \Predictor~118_combout\,
	datad => \Predictor~115_combout\,
	combout => \Predictor~119_combout\);

-- Location: LCCOMB_X47_Y31_N22
\Predictor~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~120_combout\ = (\Predictor~114_combout\ & (TableBusy(11) & \Predictor~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~114_combout\,
	datab => TableBusy(11),
	datad => \Predictor~119_combout\,
	combout => \Predictor~120_combout\);

-- Location: LCCOMB_X47_Y29_N10
\PredictedResult~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~13_combout\ = (!\Predictor~142_combout\ & (!\Predictor~131_combout\ & (!\Predictor~109_combout\ & !\Predictor~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~142_combout\,
	datab => \Predictor~131_combout\,
	datac => \Predictor~109_combout\,
	datad => \Predictor~120_combout\,
	combout => \PredictedResult~13_combout\);

-- Location: LCCOMB_X47_Y29_N12
\write_table[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_table[15]~0_combout\ = (!\reset~input_o\ & \PredictedResult~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PredictedResult~13_combout\,
	combout => \write_table[15]~0_combout\);

-- Location: LCCOMB_X48_Y29_N2
\Decoder1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~15_combout\ = (write_loc(2) & (write_loc(0) & (write_loc(1) & write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(1),
	datad => write_loc(3),
	combout => \Decoder1~15_combout\);

-- Location: LCCOMB_X48_Y29_N4
\BranchTable[15][8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][8]~31_combout\ = (\reset~input_o\) # ((\Decoder1~15_combout\ & \write_table_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder1~15_combout\,
	datad => \write_table_en~q\,
	combout => \BranchTable[15][8]~31_combout\);

-- Location: FF_X44_Y29_N21
\BranchTable[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][1]~q\);

-- Location: LCCOMB_X44_Y29_N18
\BranchTable[15][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[15][0]~feeder_combout\);

-- Location: FF_X44_Y29_N19
\BranchTable[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][0]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][0]~q\);

-- Location: LCCOMB_X44_Y29_N20
\Predictor~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~165_combout\ = (\PC[0]~input_o\ & ((\PC[1]~input_o\ $ (\BranchTable[15][1]~q\)) # (!\BranchTable[15][0]~q\))) # (!\PC[0]~input_o\ & ((\BranchTable[15][0]~q\) # (\PC[1]~input_o\ $ (\BranchTable[15][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[15][1]~q\,
	datad => \BranchTable[15][0]~q\,
	combout => \Predictor~165_combout\);

-- Location: FF_X48_Y29_N19
\BranchTable[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][5]~q\);

-- Location: FF_X48_Y29_N5
\BranchTable[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][4]~q\);

-- Location: LCCOMB_X48_Y29_N18
\Predictor~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~167_combout\ = (\PC[5]~input_o\ & ((\PC[4]~input_o\ $ (\BranchTable[15][4]~q\)) # (!\BranchTable[15][5]~q\))) # (!\PC[5]~input_o\ & ((\BranchTable[15][5]~q\) # (\PC[4]~input_o\ $ (\BranchTable[15][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[15][5]~q\,
	datad => \BranchTable[15][4]~q\,
	combout => \Predictor~167_combout\);

-- Location: FF_X47_Y28_N15
\BranchTable[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~7_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][7]~q\);

-- Location: FF_X47_Y28_N1
\BranchTable[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][6]~q\);

-- Location: LCCOMB_X47_Y28_N14
\Predictor~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~168_combout\ = (\PC[7]~input_o\ & ((\PC[6]~input_o\ $ (\BranchTable[15][6]~q\)) # (!\BranchTable[15][7]~q\))) # (!\PC[7]~input_o\ & ((\BranchTable[15][7]~q\) # (\PC[6]~input_o\ $ (\BranchTable[15][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[15][7]~q\,
	datad => \BranchTable[15][6]~q\,
	combout => \Predictor~168_combout\);

-- Location: FF_X44_Y29_N13
\BranchTable[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][3]~q\);

-- Location: LCCOMB_X44_Y29_N6
\BranchTable[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[15][2]~feeder_combout\);

-- Location: FF_X44_Y29_N7
\BranchTable[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][2]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][2]~q\);

-- Location: LCCOMB_X44_Y29_N12
\Predictor~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~166_combout\ = (\PC[3]~input_o\ & ((\PC[2]~input_o\ $ (\BranchTable[15][2]~q\)) # (!\BranchTable[15][3]~q\))) # (!\PC[3]~input_o\ & ((\BranchTable[15][3]~q\) # (\PC[2]~input_o\ $ (\BranchTable[15][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[15][3]~q\,
	datad => \BranchTable[15][2]~q\,
	combout => \Predictor~166_combout\);

-- Location: LCCOMB_X47_Y29_N16
\Predictor~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~169_combout\ = (\Predictor~165_combout\) # ((\Predictor~167_combout\) # ((\Predictor~168_combout\) # (\Predictor~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~165_combout\,
	datab => \Predictor~167_combout\,
	datac => \Predictor~168_combout\,
	datad => \Predictor~166_combout\,
	combout => \Predictor~169_combout\);

-- Location: FF_X44_Y29_N29
\BranchTable[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][9]~q\);

-- Location: LCCOMB_X44_Y29_N10
\BranchTable[15][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[15][8]~feeder_combout\);

-- Location: FF_X44_Y29_N11
\BranchTable[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][8]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][8]~q\);

-- Location: LCCOMB_X44_Y29_N28
\Predictor~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~170_combout\ = (\PC[9]~input_o\ & ((\PC[8]~input_o\ $ (\BranchTable[15][8]~q\)) # (!\BranchTable[15][9]~q\))) # (!\PC[9]~input_o\ & ((\BranchTable[15][9]~q\) # (\PC[8]~input_o\ $ (\BranchTable[15][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[15][9]~q\,
	datad => \BranchTable[15][8]~q\,
	combout => \Predictor~170_combout\);

-- Location: FF_X44_Y29_N27
\BranchTable[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][14]~q\);

-- Location: LCCOMB_X44_Y29_N16
\BranchTable[15][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[15][15]~feeder_combout\);

-- Location: FF_X44_Y29_N17
\BranchTable[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][15]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][15]~q\);

-- Location: LCCOMB_X44_Y29_N26
\Predictor~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~173_combout\ = (\PC[15]~input_o\ & ((\PC[14]~input_o\ $ (\BranchTable[15][14]~q\)) # (!\BranchTable[15][15]~q\))) # (!\PC[15]~input_o\ & ((\BranchTable[15][15]~q\) # (\PC[14]~input_o\ $ (\BranchTable[15][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[15][14]~q\,
	datad => \BranchTable[15][15]~q\,
	combout => \Predictor~173_combout\);

-- Location: FF_X43_Y29_N11
\BranchTable[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][11]~q\);

-- Location: LCCOMB_X43_Y29_N0
\BranchTable[15][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~12_combout\,
	combout => \BranchTable[15][10]~feeder_combout\);

-- Location: FF_X43_Y29_N1
\BranchTable[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][10]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][10]~q\);

-- Location: LCCOMB_X43_Y29_N10
\Predictor~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~171_combout\ = (\PC[10]~input_o\ & ((\PC[11]~input_o\ $ (\BranchTable[15][11]~q\)) # (!\BranchTable[15][10]~q\))) # (!\PC[10]~input_o\ & ((\BranchTable[15][10]~q\) # (\PC[11]~input_o\ $ (\BranchTable[15][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[15][11]~q\,
	datad => \BranchTable[15][10]~q\,
	combout => \Predictor~171_combout\);

-- Location: FF_X44_Y29_N9
\BranchTable[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~13_combout\,
	sload => VCC,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][13]~q\);

-- Location: LCCOMB_X44_Y29_N2
\BranchTable[15][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[15][12]~feeder_combout\ = \BranchTable~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~14_combout\,
	combout => \BranchTable[15][12]~feeder_combout\);

-- Location: FF_X44_Y29_N3
\BranchTable[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[15][12]~feeder_combout\,
	ena => \BranchTable[15][8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[15][12]~q\);

-- Location: LCCOMB_X44_Y29_N8
\Predictor~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~172_combout\ = (\PC[13]~input_o\ & ((\PC[12]~input_o\ $ (\BranchTable[15][12]~q\)) # (!\BranchTable[15][13]~q\))) # (!\PC[13]~input_o\ & ((\BranchTable[15][13]~q\) # (\PC[12]~input_o\ $ (\BranchTable[15][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[15][13]~q\,
	datad => \BranchTable[15][12]~q\,
	combout => \Predictor~172_combout\);

-- Location: LCCOMB_X47_Y29_N6
\Predictor~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~174_combout\ = (\Predictor~170_combout\) # ((\Predictor~173_combout\) # ((\Predictor~171_combout\) # (\Predictor~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~170_combout\,
	datab => \Predictor~173_combout\,
	datac => \Predictor~171_combout\,
	datad => \Predictor~172_combout\,
	combout => \Predictor~174_combout\);

-- Location: LCCOMB_X47_Y29_N28
\Predictor~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~175_combout\ = ((\Predictor~169_combout\) # (\Predictor~174_combout\)) # (!TableBusy(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(15),
	datac => \Predictor~169_combout\,
	datad => \Predictor~174_combout\,
	combout => \Predictor~175_combout\);

-- Location: LCCOMB_X49_Y29_N2
\Decoder1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~14_combout\ = (write_loc(2) & (!write_loc(0) & (write_loc(3) & write_loc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(3),
	datad => write_loc(1),
	combout => \Decoder1~14_combout\);

-- Location: LCCOMB_X49_Y29_N24
\BranchTable[14][2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[14][2]~30_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table_en~q\,
	datab => \reset~input_o\,
	datad => \Decoder1~14_combout\,
	combout => \BranchTable[14][2]~30_combout\);

-- Location: FF_X50_Y29_N31
\BranchTable[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~13_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][13]~q\);

-- Location: LCCOMB_X50_Y29_N20
\BranchTable[14][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[14][12]~feeder_combout\ = \BranchTable~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~14_combout\,
	combout => \BranchTable[14][12]~feeder_combout\);

-- Location: FF_X50_Y29_N21
\BranchTable[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[14][12]~feeder_combout\,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][12]~q\);

-- Location: LCCOMB_X50_Y29_N30
\Predictor~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~150_combout\ = (\PC[13]~input_o\ & (\BranchTable[14][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[14][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[14][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[14][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[14][13]~q\,
	datad => \BranchTable[14][12]~q\,
	combout => \Predictor~150_combout\);

-- Location: FF_X50_Y29_N3
\BranchTable[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][14]~q\);

-- Location: LCCOMB_X50_Y29_N22
\BranchTable[14][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[14][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[14][15]~feeder_combout\);

-- Location: FF_X50_Y29_N23
\BranchTable[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[14][15]~feeder_combout\,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][15]~q\);

-- Location: LCCOMB_X50_Y29_N2
\Predictor~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~151_combout\ = (\PC[15]~input_o\ & (\BranchTable[14][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[14][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[14][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[14][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[14][14]~q\,
	datad => \BranchTable[14][15]~q\,
	combout => \Predictor~151_combout\);

-- Location: FF_X50_Y29_N1
\BranchTable[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][8]~q\);

-- Location: FF_X50_Y29_N27
\BranchTable[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][9]~q\);

-- Location: LCCOMB_X50_Y29_N26
\Predictor~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~148_combout\ = (\BranchTable[14][8]~q\ & (\PC[8]~input_o\ & (\PC[9]~input_o\ $ (!\BranchTable[14][9]~q\)))) # (!\BranchTable[14][8]~q\ & (!\PC[8]~input_o\ & (\PC[9]~input_o\ $ (!\BranchTable[14][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[14][8]~q\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[14][9]~q\,
	datad => \PC[8]~input_o\,
	combout => \Predictor~148_combout\);

-- Location: FF_X41_Y29_N5
\BranchTable[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][11]~q\);

-- Location: LCCOMB_X41_Y29_N10
\BranchTable[14][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[14][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~12_combout\,
	combout => \BranchTable[14][10]~feeder_combout\);

-- Location: FF_X41_Y29_N11
\BranchTable[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[14][10]~feeder_combout\,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][10]~q\);

-- Location: LCCOMB_X41_Y29_N4
\Predictor~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~149_combout\ = (\PC[11]~input_o\ & (\BranchTable[14][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[14][10]~q\)))) # (!\PC[11]~input_o\ & (!\BranchTable[14][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[14][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[11]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \BranchTable[14][11]~q\,
	datad => \BranchTable[14][10]~q\,
	combout => \Predictor~149_combout\);

-- Location: LCCOMB_X50_Y29_N24
\Predictor~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~152_combout\ = (\Predictor~150_combout\ & (\Predictor~151_combout\ & (\Predictor~148_combout\ & \Predictor~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~150_combout\,
	datab => \Predictor~151_combout\,
	datac => \Predictor~148_combout\,
	datad => \Predictor~149_combout\,
	combout => \Predictor~152_combout\);

-- Location: FF_X49_Y29_N15
\BranchTable[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][1]~q\);

-- Location: FF_X49_Y29_N25
\BranchTable[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][0]~q\);

-- Location: LCCOMB_X49_Y29_N14
\Predictor~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~143_combout\ = (\PC[0]~input_o\ & (\BranchTable[14][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[14][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[14][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[14][1]~q\,
	datad => \BranchTable[14][0]~q\,
	combout => \Predictor~143_combout\);

-- Location: FF_X49_Y29_N31
\BranchTable[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~7_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][7]~q\);

-- Location: FF_X49_Y29_N29
\BranchTable[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][6]~q\);

-- Location: LCCOMB_X49_Y29_N30
\Predictor~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~146_combout\ = (\PC[7]~input_o\ & (\BranchTable[14][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[14][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[14][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[14][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[14][7]~q\,
	datad => \BranchTable[14][6]~q\,
	combout => \Predictor~146_combout\);

-- Location: FF_X49_Y29_N7
\BranchTable[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][5]~q\);

-- Location: FF_X49_Y29_N17
\BranchTable[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][4]~q\);

-- Location: LCCOMB_X49_Y29_N6
\Predictor~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~145_combout\ = (\PC[5]~input_o\ & (\BranchTable[14][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[14][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[14][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[14][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[14][5]~q\,
	datad => \BranchTable[14][4]~q\,
	combout => \Predictor~145_combout\);

-- Location: FF_X41_Y29_N17
\BranchTable[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][3]~q\);

-- Location: LCCOMB_X41_Y29_N2
\BranchTable[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[14][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[14][2]~feeder_combout\);

-- Location: FF_X41_Y29_N3
\BranchTable[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[14][2]~feeder_combout\,
	ena => \BranchTable[14][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[14][2]~q\);

-- Location: LCCOMB_X41_Y29_N16
\Predictor~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~144_combout\ = (\PC[2]~input_o\ & (\BranchTable[14][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[14][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[14][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[14][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[14][3]~q\,
	datad => \BranchTable[14][2]~q\,
	combout => \Predictor~144_combout\);

-- Location: LCCOMB_X50_Y29_N12
\Predictor~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~147_combout\ = (\Predictor~143_combout\ & (\Predictor~146_combout\ & (\Predictor~145_combout\ & \Predictor~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~143_combout\,
	datab => \Predictor~146_combout\,
	datac => \Predictor~145_combout\,
	datad => \Predictor~144_combout\,
	combout => \Predictor~147_combout\);

-- Location: LCCOMB_X50_Y29_N0
\Predictor~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~153_combout\ = (TableBusy(14) & (\Predictor~152_combout\ & \Predictor~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(14),
	datab => \Predictor~152_combout\,
	datad => \Predictor~147_combout\,
	combout => \Predictor~153_combout\);

-- Location: LCCOMB_X48_Y29_N20
\Decoder1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~13_combout\ = (write_loc(2) & (write_loc(0) & (!write_loc(1) & write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(1),
	datad => write_loc(3),
	combout => \Decoder1~13_combout\);

-- Location: LCCOMB_X49_Y29_N16
\BranchTable[13][14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][14]~29_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table_en~q\,
	datab => \reset~input_o\,
	datad => \Decoder1~13_combout\,
	combout => \BranchTable[13][14]~29_combout\);

-- Location: FF_X51_Y29_N3
\BranchTable[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][10]~q\);

-- Location: LCCOMB_X51_Y29_N24
\BranchTable[13][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~11_combout\,
	combout => \BranchTable[13][11]~feeder_combout\);

-- Location: FF_X51_Y29_N25
\BranchTable[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][11]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][11]~q\);

-- Location: LCCOMB_X51_Y29_N2
\Predictor~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~160_combout\ = (\PC[11]~input_o\ & (\BranchTable[13][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[13][10]~q\)))) # (!\PC[11]~input_o\ & (!\BranchTable[13][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[13][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[11]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \BranchTable[13][10]~q\,
	datad => \BranchTable[13][11]~q\,
	combout => \Predictor~160_combout\);

-- Location: FF_X50_Y29_N15
\BranchTable[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][12]~q\);

-- Location: LCCOMB_X50_Y29_N8
\BranchTable[13][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~13_combout\,
	combout => \BranchTable[13][13]~feeder_combout\);

-- Location: FF_X50_Y29_N9
\BranchTable[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][13]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][13]~q\);

-- Location: LCCOMB_X50_Y29_N14
\Predictor~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~161_combout\ = (\PC[13]~input_o\ & (\BranchTable[13][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[13][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[13][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[13][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[13][12]~q\,
	datad => \BranchTable[13][13]~q\,
	combout => \Predictor~161_combout\);

-- Location: FF_X50_Y29_N5
\BranchTable[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][9]~q\);

-- Location: FF_X50_Y29_N19
\BranchTable[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][8]~q\);

-- Location: LCCOMB_X50_Y29_N4
\Predictor~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~159_combout\ = (\PC[8]~input_o\ & (\BranchTable[13][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[13][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[13][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[13][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[13][9]~q\,
	datad => \BranchTable[13][8]~q\,
	combout => \Predictor~159_combout\);

-- Location: FF_X50_Y29_N29
\BranchTable[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][14]~q\);

-- Location: FF_X50_Y29_N17
\BranchTable[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~15_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][15]~q\);

-- Location: LCCOMB_X50_Y29_N28
\Predictor~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~162_combout\ = (\PC[15]~input_o\ & (\BranchTable[13][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[13][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[13][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[13][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[13][14]~q\,
	datad => \BranchTable[13][15]~q\,
	combout => \Predictor~162_combout\);

-- Location: LCCOMB_X50_Y29_N6
\Predictor~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~163_combout\ = (\Predictor~160_combout\ & (\Predictor~161_combout\ & (\Predictor~159_combout\ & \Predictor~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~160_combout\,
	datab => \Predictor~161_combout\,
	datac => \Predictor~159_combout\,
	datad => \Predictor~162_combout\,
	combout => \Predictor~163_combout\);

-- Location: FF_X51_Y29_N31
\BranchTable[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][6]~q\);

-- Location: LCCOMB_X51_Y29_N20
\BranchTable[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[13][7]~feeder_combout\);

-- Location: FF_X51_Y29_N21
\BranchTable[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][7]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][7]~q\);

-- Location: LCCOMB_X51_Y29_N30
\Predictor~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~157_combout\ = (\PC[7]~input_o\ & (\BranchTable[13][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[13][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[13][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[13][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[13][6]~q\,
	datad => \BranchTable[13][7]~q\,
	combout => \Predictor~157_combout\);

-- Location: FF_X51_Y29_N17
\BranchTable[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][3]~q\);

-- Location: LCCOMB_X51_Y29_N10
\BranchTable[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[13][2]~feeder_combout\);

-- Location: FF_X51_Y29_N11
\BranchTable[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][2]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][2]~q\);

-- Location: LCCOMB_X51_Y29_N16
\Predictor~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~155_combout\ = (\PC[3]~input_o\ & (\BranchTable[13][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[13][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[13][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[13][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[13][3]~q\,
	datad => \BranchTable[13][2]~q\,
	combout => \Predictor~155_combout\);

-- Location: FF_X51_Y29_N13
\BranchTable[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][1]~q\);

-- Location: LCCOMB_X51_Y29_N6
\BranchTable[13][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[13][0]~feeder_combout\);

-- Location: FF_X51_Y29_N7
\BranchTable[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][0]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][0]~q\);

-- Location: LCCOMB_X51_Y29_N12
\Predictor~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~154_combout\ = (\PC[1]~input_o\ & (\BranchTable[13][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[13][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[13][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[13][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[13][1]~q\,
	datad => \BranchTable[13][0]~q\,
	combout => \Predictor~154_combout\);

-- Location: FF_X46_Y27_N25
\BranchTable[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][5]~q\);

-- Location: LCCOMB_X46_Y27_N30
\BranchTable[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[13][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[13][4]~feeder_combout\);

-- Location: FF_X46_Y27_N31
\BranchTable[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[13][4]~feeder_combout\,
	ena => \BranchTable[13][14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[13][4]~q\);

-- Location: LCCOMB_X46_Y27_N24
\Predictor~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~156_combout\ = (\PC[4]~input_o\ & (\BranchTable[13][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[13][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[13][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[13][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[13][5]~q\,
	datad => \BranchTable[13][4]~q\,
	combout => \Predictor~156_combout\);

-- Location: LCCOMB_X50_Y29_N10
\Predictor~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~158_combout\ = (\Predictor~157_combout\ & (\Predictor~155_combout\ & (\Predictor~154_combout\ & \Predictor~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~157_combout\,
	datab => \Predictor~155_combout\,
	datac => \Predictor~154_combout\,
	datad => \Predictor~156_combout\,
	combout => \Predictor~158_combout\);

-- Location: LCCOMB_X50_Y29_N18
\Predictor~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~164_combout\ = (\Predictor~163_combout\ & (TableBusy(13) & \Predictor~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~163_combout\,
	datab => TableBusy(13),
	datad => \Predictor~158_combout\,
	combout => \Predictor~164_combout\);

-- Location: LCCOMB_X47_Y29_N30
\TableBusy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~0_combout\ = (\Equal0~0_combout\ & (\Predictor~175_combout\ & (!\Predictor~153_combout\ & !\Predictor~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Predictor~175_combout\,
	datac => \Predictor~153_combout\,
	datad => \Predictor~164_combout\,
	combout => \TableBusy~0_combout\);

-- Location: LCCOMB_X46_Y28_N30
\Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (!write_loc(2) & (write_loc(1) & (!write_loc(3) & write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(1),
	datac => write_loc(3),
	datad => write_loc(0),
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X46_Y28_N8
\BranchTable[3][8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][8]~20_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table_en~q\,
	datab => \reset~input_o\,
	datac => \Decoder1~4_combout\,
	combout => \BranchTable[3][8]~20_combout\);

-- Location: FF_X45_Y28_N17
\BranchTable[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][3]~q\);

-- Location: LCCOMB_X45_Y28_N30
\BranchTable[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[3][2]~feeder_combout\);

-- Location: FF_X45_Y28_N31
\BranchTable[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][2]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][2]~q\);

-- Location: LCCOMB_X45_Y28_N16
\Predictor~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~45_combout\ = (\PC[3]~input_o\ & (\BranchTable[3][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[3][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[3][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[3][3]~q\,
	datad => \BranchTable[3][2]~q\,
	combout => \Predictor~45_combout\);

-- Location: FF_X45_Y28_N25
\BranchTable[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][1]~q\);

-- Location: LCCOMB_X45_Y28_N26
\BranchTable[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[3][0]~feeder_combout\);

-- Location: FF_X45_Y28_N27
\BranchTable[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][0]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][0]~q\);

-- Location: LCCOMB_X45_Y28_N24
\Predictor~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~44_combout\ = (\PC[1]~input_o\ & (\BranchTable[3][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[3][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[3][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[3][1]~q\,
	datad => \BranchTable[3][0]~q\,
	combout => \Predictor~44_combout\);

-- Location: FF_X46_Y28_N23
\BranchTable[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][6]~q\);

-- Location: LCCOMB_X46_Y28_N28
\BranchTable[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~7_combout\,
	combout => \BranchTable[3][7]~feeder_combout\);

-- Location: FF_X46_Y28_N29
\BranchTable[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][7]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][7]~q\);

-- Location: LCCOMB_X46_Y28_N22
\Predictor~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~47_combout\ = (\PC[6]~input_o\ & (\BranchTable[3][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[3][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[3][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[3][6]~q\,
	datad => \BranchTable[3][7]~q\,
	combout => \Predictor~47_combout\);

-- Location: FF_X45_Y28_N21
\BranchTable[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][5]~q\);

-- Location: LCCOMB_X45_Y28_N18
\BranchTable[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[3][4]~feeder_combout\);

-- Location: FF_X45_Y28_N19
\BranchTable[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][4]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][4]~q\);

-- Location: LCCOMB_X45_Y28_N20
\Predictor~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~46_combout\ = (\PC[5]~input_o\ & (\BranchTable[3][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[3][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[3][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[3][5]~q\,
	datad => \BranchTable[3][4]~q\,
	combout => \Predictor~46_combout\);

-- Location: LCCOMB_X46_Y29_N22
\Predictor~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~48_combout\ = (\Predictor~45_combout\ & (\Predictor~44_combout\ & (\Predictor~47_combout\ & \Predictor~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~45_combout\,
	datab => \Predictor~44_combout\,
	datac => \Predictor~47_combout\,
	datad => \Predictor~46_combout\,
	combout => \Predictor~48_combout\);

-- Location: FF_X45_Y28_N15
\BranchTable[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][12]~q\);

-- Location: LCCOMB_X45_Y28_N8
\BranchTable[3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[3][13]~feeder_combout\);

-- Location: FF_X45_Y28_N9
\BranchTable[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][13]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][13]~q\);

-- Location: LCCOMB_X45_Y28_N14
\Predictor~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~51_combout\ = (\PC[13]~input_o\ & (\BranchTable[3][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[3][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[3][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[3][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[3][12]~q\,
	datad => \BranchTable[3][13]~q\,
	combout => \Predictor~51_combout\);

-- Location: FF_X45_Y30_N15
\BranchTable[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][14]~q\);

-- Location: LCCOMB_X45_Y30_N28
\BranchTable[3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[3][15]~feeder_combout\);

-- Location: FF_X45_Y30_N29
\BranchTable[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][15]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][15]~q\);

-- Location: LCCOMB_X45_Y30_N14
\Predictor~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~52_combout\ = (\PC[14]~input_o\ & (\BranchTable[3][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[3][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[3][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[3][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[3][14]~q\,
	datad => \BranchTable[3][15]~q\,
	combout => \Predictor~52_combout\);

-- Location: FF_X46_Y28_N5
\BranchTable[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][11]~q\);

-- Location: LCCOMB_X46_Y28_N6
\BranchTable[3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~12_combout\,
	combout => \BranchTable[3][10]~feeder_combout\);

-- Location: FF_X46_Y28_N7
\BranchTable[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][10]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][10]~q\);

-- Location: LCCOMB_X46_Y28_N4
\Predictor~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~50_combout\ = (\PC[10]~input_o\ & (\BranchTable[3][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[3][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[3][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[3][11]~q\,
	datad => \BranchTable[3][10]~q\,
	combout => \Predictor~50_combout\);

-- Location: FF_X46_Y28_N25
\BranchTable[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][9]~q\);

-- Location: LCCOMB_X46_Y28_N10
\BranchTable[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[3][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~10_combout\,
	combout => \BranchTable[3][8]~feeder_combout\);

-- Location: FF_X46_Y28_N11
\BranchTable[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[3][8]~feeder_combout\,
	ena => \BranchTable[3][8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[3][8]~q\);

-- Location: LCCOMB_X46_Y28_N24
\Predictor~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~49_combout\ = (\PC[9]~input_o\ & (\BranchTable[3][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[3][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[3][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[3][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[3][9]~q\,
	datad => \BranchTable[3][8]~q\,
	combout => \Predictor~49_combout\);

-- Location: LCCOMB_X46_Y29_N0
\Predictor~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~53_combout\ = (\Predictor~51_combout\ & (\Predictor~52_combout\ & (\Predictor~50_combout\ & \Predictor~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~51_combout\,
	datab => \Predictor~52_combout\,
	datac => \Predictor~50_combout\,
	datad => \Predictor~49_combout\,
	combout => \Predictor~53_combout\);

-- Location: LCCOMB_X46_Y29_N6
\Predictor~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~54_combout\ = (TableBusy(3) & (\Predictor~48_combout\ & \Predictor~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(3),
	datac => \Predictor~48_combout\,
	datad => \Predictor~53_combout\,
	combout => \Predictor~54_combout\);

-- Location: LCCOMB_X49_Y28_N6
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!write_loc(3) & (write_loc(1) & (!write_loc(0) & !write_loc(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(3),
	datab => write_loc(1),
	datac => write_loc(0),
	datad => write_loc(2),
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X48_Y29_N0
\BranchTable[2][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][0]~17_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table_en~q\,
	datab => \reset~input_o\,
	datad => \Decoder1~1_combout\,
	combout => \BranchTable[2][0]~17_combout\);

-- Location: FF_X49_Y29_N23
\BranchTable[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][6]~q\);

-- Location: LCCOMB_X49_Y29_N0
\BranchTable[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[2][7]~feeder_combout\);

-- Location: FF_X49_Y29_N1
\BranchTable[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][7]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][7]~q\);

-- Location: LCCOMB_X49_Y29_N22
\Predictor~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~14_combout\ = (\PC[7]~input_o\ & (\BranchTable[2][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[2][6]~q\)))) # (!\PC[7]~input_o\ & (!\BranchTable[2][7]~q\ & (\PC[6]~input_o\ $ (!\BranchTable[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \BranchTable[2][6]~q\,
	datad => \BranchTable[2][7]~q\,
	combout => \Predictor~14_combout\);

-- Location: FF_X49_Y29_N21
\BranchTable[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][1]~q\);

-- Location: FF_X49_Y29_N11
\BranchTable[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][0]~q\);

-- Location: LCCOMB_X49_Y29_N20
\Predictor~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~11_combout\ = (\PC[0]~input_o\ & (\BranchTable[2][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[2][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[2][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[2][1]~q\,
	datad => \BranchTable[2][0]~q\,
	combout => \Predictor~11_combout\);

-- Location: FF_X49_Y29_N5
\BranchTable[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][5]~q\);

-- Location: LCCOMB_X49_Y29_N26
\BranchTable[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~6_combout\,
	combout => \BranchTable[2][4]~feeder_combout\);

-- Location: FF_X49_Y29_N27
\BranchTable[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][4]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][4]~q\);

-- Location: LCCOMB_X49_Y29_N4
\Predictor~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~13_combout\ = (\PC[5]~input_o\ & (\BranchTable[2][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[2][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[2][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[2][5]~q\,
	datad => \BranchTable[2][4]~q\,
	combout => \Predictor~13_combout\);

-- Location: FF_X49_Y29_N13
\BranchTable[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][3]~q\);

-- Location: LCCOMB_X49_Y29_N18
\BranchTable[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[2][2]~feeder_combout\);

-- Location: FF_X49_Y29_N19
\BranchTable[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][2]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][2]~q\);

-- Location: LCCOMB_X49_Y29_N12
\Predictor~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~12_combout\ = (\PC[3]~input_o\ & (\BranchTable[2][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[2][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[2][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[2][3]~q\,
	datad => \BranchTable[2][2]~q\,
	combout => \Predictor~12_combout\);

-- Location: LCCOMB_X49_Y29_N8
\Predictor~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~15_combout\ = (\Predictor~14_combout\ & (\Predictor~11_combout\ & (\Predictor~13_combout\ & \Predictor~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~14_combout\,
	datab => \Predictor~11_combout\,
	datac => \Predictor~13_combout\,
	datad => \Predictor~12_combout\,
	combout => \Predictor~15_combout\);

-- Location: FF_X43_Y29_N13
\BranchTable[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][11]~q\);

-- Location: LCCOMB_X43_Y29_N18
\BranchTable[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~12_combout\,
	combout => \BranchTable[2][10]~feeder_combout\);

-- Location: FF_X43_Y29_N19
\BranchTable[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][10]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][10]~q\);

-- Location: LCCOMB_X43_Y29_N12
\Predictor~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~17_combout\ = (\PC[10]~input_o\ & (\BranchTable[2][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[2][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[2][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[2][11]~q\,
	datad => \BranchTable[2][10]~q\,
	combout => \Predictor~17_combout\);

-- Location: FF_X43_Y29_N17
\BranchTable[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][9]~q\);

-- Location: LCCOMB_X43_Y29_N6
\BranchTable[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~10_combout\,
	combout => \BranchTable[2][8]~feeder_combout\);

-- Location: FF_X43_Y29_N7
\BranchTable[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][8]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][8]~q\);

-- Location: LCCOMB_X43_Y29_N16
\Predictor~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~16_combout\ = (\PC[8]~input_o\ & (\BranchTable[2][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[2][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[2][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[2][9]~q\,
	datad => \BranchTable[2][8]~q\,
	combout => \Predictor~16_combout\);

-- Location: FF_X43_Y29_N27
\BranchTable[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][12]~q\);

-- Location: LCCOMB_X43_Y29_N28
\BranchTable[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~13_combout\,
	combout => \BranchTable[2][13]~feeder_combout\);

-- Location: FF_X43_Y29_N29
\BranchTable[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][13]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][13]~q\);

-- Location: LCCOMB_X43_Y29_N26
\Predictor~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~18_combout\ = (\PC[13]~input_o\ & (\BranchTable[2][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[2][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[2][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[2][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[2][12]~q\,
	datad => \BranchTable[2][13]~q\,
	combout => \Predictor~18_combout\);

-- Location: LCCOMB_X43_Y29_N22
\BranchTable[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][14]~feeder_combout\ = \BranchTable~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~16_combout\,
	combout => \BranchTable[2][14]~feeder_combout\);

-- Location: FF_X43_Y29_N23
\BranchTable[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][14]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][14]~q\);

-- Location: LCCOMB_X43_Y29_N20
\BranchTable[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[2][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[2][15]~feeder_combout\);

-- Location: FF_X43_Y29_N21
\BranchTable[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[2][15]~feeder_combout\,
	ena => \BranchTable[2][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[2][15]~q\);

-- Location: LCCOMB_X43_Y29_N24
\Predictor~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~19_combout\ = (\PC[14]~input_o\ & (\BranchTable[2][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[2][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[2][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[2][14]~q\,
	datad => \BranchTable[2][15]~q\,
	combout => \Predictor~19_combout\);

-- Location: LCCOMB_X43_Y29_N14
\Predictor~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~20_combout\ = (\Predictor~17_combout\ & (\Predictor~16_combout\ & (\Predictor~18_combout\ & \Predictor~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~17_combout\,
	datab => \Predictor~16_combout\,
	datac => \Predictor~18_combout\,
	datad => \Predictor~19_combout\,
	combout => \Predictor~20_combout\);

-- Location: LCCOMB_X46_Y29_N30
\Predictor~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~21_combout\ = (TableBusy(2) & (\Predictor~15_combout\ & \Predictor~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(2),
	datac => \Predictor~15_combout\,
	datad => \Predictor~20_combout\,
	combout => \Predictor~21_combout\);

-- Location: LCCOMB_X46_Y28_N16
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!write_loc(3) & (!write_loc(1) & (write_loc(2) & !write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(3),
	datab => write_loc(1),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X46_Y28_N2
\BranchTable[4][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][5]~1_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table_en~q\,
	datab => \reset~input_o\,
	datad => \Decoder1~0_combout\,
	combout => \BranchTable[4][5]~1_combout\);

-- Location: FF_X46_Y29_N13
\BranchTable[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][14]~q\);

-- Location: LCCOMB_X46_Y29_N2
\BranchTable[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[4][15]~feeder_combout\);

-- Location: FF_X46_Y29_N3
\BranchTable[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][15]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][15]~q\);

-- Location: LCCOMB_X46_Y29_N12
\Predictor~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~8_combout\ = (\PC[15]~input_o\ & (\BranchTable[4][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[4][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[4][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[4][14]~q\,
	datad => \BranchTable[4][15]~q\,
	combout => \Predictor~8_combout\);

-- Location: FF_X46_Y28_N1
\BranchTable[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][9]~q\);

-- Location: FF_X46_Y28_N3
\BranchTable[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][8]~q\);

-- Location: LCCOMB_X46_Y28_N0
\Predictor~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~5_combout\ = (\PC[9]~input_o\ & (\BranchTable[4][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[4][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[4][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[4][9]~q\,
	datad => \BranchTable[4][8]~q\,
	combout => \Predictor~5_combout\);

-- Location: FF_X45_Y28_N23
\BranchTable[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][12]~q\);

-- Location: LCCOMB_X45_Y28_N12
\BranchTable[4][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[4][13]~feeder_combout\);

-- Location: FF_X45_Y28_N13
\BranchTable[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][13]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][13]~q\);

-- Location: LCCOMB_X45_Y28_N22
\Predictor~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~7_combout\ = (\PC[13]~input_o\ & (\BranchTable[4][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[4][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[4][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[4][12]~q\,
	datad => \BranchTable[4][13]~q\,
	combout => \Predictor~7_combout\);

-- Location: FF_X46_Y28_N15
\BranchTable[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][10]~q\);

-- Location: LCCOMB_X46_Y28_N20
\BranchTable[4][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[4][11]~feeder_combout\);

-- Location: FF_X46_Y28_N21
\BranchTable[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][11]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][11]~q\);

-- Location: LCCOMB_X46_Y28_N14
\Predictor~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~6_combout\ = (\PC[10]~input_o\ & (\BranchTable[4][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[4][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[4][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[4][10]~q\,
	datad => \BranchTable[4][11]~q\,
	combout => \Predictor~6_combout\);

-- Location: LCCOMB_X46_Y29_N26
\Predictor~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~9_combout\ = (\Predictor~8_combout\ & (\Predictor~5_combout\ & (\Predictor~7_combout\ & \Predictor~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~8_combout\,
	datab => \Predictor~5_combout\,
	datac => \Predictor~7_combout\,
	datad => \Predictor~6_combout\,
	combout => \Predictor~9_combout\);

-- Location: FF_X45_Y28_N5
\BranchTable[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][3]~q\);

-- Location: LCCOMB_X45_Y28_N6
\BranchTable[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[4][2]~feeder_combout\);

-- Location: FF_X45_Y28_N7
\BranchTable[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][2]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][2]~q\);

-- Location: LCCOMB_X45_Y28_N4
\Predictor~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~1_combout\ = (\PC[3]~input_o\ & (\BranchTable[4][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[4][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[4][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[4][3]~q\,
	datad => \BranchTable[4][2]~q\,
	combout => \Predictor~1_combout\);

-- Location: FF_X45_Y28_N29
\BranchTable[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][1]~q\);

-- Location: LCCOMB_X45_Y28_N10
\BranchTable[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[4][0]~feeder_combout\);

-- Location: FF_X45_Y28_N11
\BranchTable[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][0]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][0]~q\);

-- Location: LCCOMB_X45_Y28_N28
\Predictor~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~0_combout\ = (\PC[1]~input_o\ & (\BranchTable[4][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[4][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[4][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[4][1]~q\,
	datad => \BranchTable[4][0]~q\,
	combout => \Predictor~0_combout\);

-- Location: FF_X46_Y28_N19
\BranchTable[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][6]~q\);

-- Location: LCCOMB_X46_Y28_N12
\BranchTable[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~7_combout\,
	combout => \BranchTable[4][7]~feeder_combout\);

-- Location: FF_X46_Y28_N13
\BranchTable[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][7]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][7]~q\);

-- Location: LCCOMB_X46_Y28_N18
\Predictor~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~3_combout\ = (\PC[6]~input_o\ & (\BranchTable[4][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[4][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[4][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[4][6]~q\,
	datad => \BranchTable[4][7]~q\,
	combout => \Predictor~3_combout\);

-- Location: FF_X45_Y28_N1
\BranchTable[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][5]~q\);

-- Location: LCCOMB_X45_Y28_N2
\BranchTable[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[4][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[4][4]~feeder_combout\);

-- Location: FF_X45_Y28_N3
\BranchTable[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[4][4]~feeder_combout\,
	ena => \BranchTable[4][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[4][4]~q\);

-- Location: LCCOMB_X45_Y28_N0
\Predictor~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~2_combout\ = (\PC[5]~input_o\ & (\BranchTable[4][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[4][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[4][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[4][5]~q\,
	datad => \BranchTable[4][4]~q\,
	combout => \Predictor~2_combout\);

-- Location: LCCOMB_X46_Y29_N16
\Predictor~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~4_combout\ = (\Predictor~1_combout\ & (\Predictor~0_combout\ & (\Predictor~3_combout\ & \Predictor~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~1_combout\,
	datab => \Predictor~0_combout\,
	datac => \Predictor~3_combout\,
	datad => \Predictor~2_combout\,
	combout => \Predictor~4_combout\);

-- Location: LCCOMB_X46_Y29_N4
\Predictor~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~10_combout\ = (TableBusy(4) & (\Predictor~9_combout\ & \Predictor~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(4),
	datac => \Predictor~9_combout\,
	datad => \Predictor~4_combout\,
	combout => \Predictor~10_combout\);

-- Location: LCCOMB_X48_Y29_N28
\Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (!write_loc(1) & (!write_loc(2) & (write_loc(0) & !write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(2),
	datac => write_loc(0),
	datad => write_loc(3),
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X48_Y29_N22
\BranchTable[1][12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][12]~19_combout\ = (\reset~input_o\) # ((\Decoder1~3_combout\ & \write_table_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder1~3_combout\,
	datad => \write_table_en~q\,
	combout => \BranchTable[1][12]~19_combout\);

-- Location: FF_X45_Y29_N31
\BranchTable[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][10]~q\);

-- Location: LCCOMB_X45_Y29_N12
\BranchTable[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[1][11]~feeder_combout\);

-- Location: FF_X45_Y29_N13
\BranchTable[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][11]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][11]~q\);

-- Location: LCCOMB_X45_Y29_N30
\Predictor~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~39_combout\ = (\PC[11]~input_o\ & (\BranchTable[1][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[1][10]~q\)))) # (!\PC[11]~input_o\ & (!\BranchTable[1][11]~q\ & (\PC[10]~input_o\ $ (!\BranchTable[1][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[11]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \BranchTable[1][10]~q\,
	datad => \BranchTable[1][11]~q\,
	combout => \Predictor~39_combout\);

-- Location: FF_X45_Y29_N3
\BranchTable[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][8]~q\);

-- Location: LCCOMB_X45_Y29_N28
\BranchTable[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][9]~feeder_combout\ = \BranchTable~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~9_combout\,
	combout => \BranchTable[1][9]~feeder_combout\);

-- Location: FF_X45_Y29_N29
\BranchTable[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][9]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][9]~q\);

-- Location: LCCOMB_X45_Y29_N2
\Predictor~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~38_combout\ = (\PC[8]~input_o\ & (\BranchTable[1][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[1][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[1][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[1][8]~q\,
	datad => \BranchTable[1][9]~q\,
	combout => \Predictor~38_combout\);

-- Location: FF_X45_Y29_N23
\BranchTable[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][12]~q\);

-- Location: LCCOMB_X45_Y29_N24
\BranchTable[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[1][13]~feeder_combout\);

-- Location: FF_X45_Y29_N25
\BranchTable[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][13]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][13]~q\);

-- Location: LCCOMB_X45_Y29_N22
\Predictor~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~40_combout\ = (\PC[13]~input_o\ & (\BranchTable[1][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[1][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[1][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[1][12]~q\,
	datad => \BranchTable[1][13]~q\,
	combout => \Predictor~40_combout\);

-- Location: FF_X45_Y29_N7
\BranchTable[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][14]~q\);

-- Location: LCCOMB_X45_Y29_N20
\BranchTable[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[1][15]~feeder_combout\);

-- Location: FF_X45_Y29_N21
\BranchTable[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][15]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][15]~q\);

-- Location: LCCOMB_X45_Y29_N6
\Predictor~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~41_combout\ = (\PC[14]~input_o\ & (\BranchTable[1][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[1][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[1][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[1][14]~q\,
	datad => \BranchTable[1][15]~q\,
	combout => \Predictor~41_combout\);

-- Location: LCCOMB_X45_Y29_N8
\Predictor~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~42_combout\ = (\Predictor~39_combout\ & (\Predictor~38_combout\ & (\Predictor~40_combout\ & \Predictor~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~39_combout\,
	datab => \Predictor~38_combout\,
	datac => \Predictor~40_combout\,
	datad => \Predictor~41_combout\,
	combout => \Predictor~42_combout\);

-- Location: FF_X45_Y29_N27
\BranchTable[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][4]~q\);

-- Location: LCCOMB_X45_Y29_N16
\BranchTable[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][5]~feeder_combout\ = \BranchTable~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~5_combout\,
	combout => \BranchTable[1][5]~feeder_combout\);

-- Location: FF_X45_Y29_N17
\BranchTable[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][5]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][5]~q\);

-- Location: LCCOMB_X45_Y29_N26
\Predictor~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~35_combout\ = (\PC[4]~input_o\ & (\BranchTable[1][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[1][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[1][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[1][4]~q\,
	datad => \BranchTable[1][5]~q\,
	combout => \Predictor~35_combout\);

-- Location: FF_X45_Y29_N5
\BranchTable[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][1]~q\);

-- Location: FF_X45_Y29_N19
\BranchTable[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][0]~q\);

-- Location: LCCOMB_X45_Y29_N4
\Predictor~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~33_combout\ = (\PC[0]~input_o\ & (\BranchTable[1][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[1][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[1][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[1][1]~q\,
	datad => \BranchTable[1][0]~q\,
	combout => \Predictor~33_combout\);

-- Location: FF_X48_Y27_N7
\BranchTable[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~4_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][2]~q\);

-- Location: LCCOMB_X48_Y27_N12
\BranchTable[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][3]~feeder_combout\ = \BranchTable~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~3_combout\,
	combout => \BranchTable[1][3]~feeder_combout\);

-- Location: FF_X48_Y27_N13
\BranchTable[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][3]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][3]~q\);

-- Location: LCCOMB_X48_Y27_N6
\Predictor~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~34_combout\ = (\PC[2]~input_o\ & (\BranchTable[1][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[1][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[1][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[1][2]~q\,
	datad => \BranchTable[1][3]~q\,
	combout => \Predictor~34_combout\);

-- Location: FF_X45_Y29_N1
\BranchTable[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][6]~q\);

-- Location: LCCOMB_X48_Y27_N8
\BranchTable[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[1][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[1][7]~feeder_combout\);

-- Location: FF_X48_Y27_N9
\BranchTable[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[1][7]~feeder_combout\,
	ena => \BranchTable[1][12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[1][7]~q\);

-- Location: LCCOMB_X45_Y29_N0
\Predictor~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~36_combout\ = (\PC[6]~input_o\ & (\BranchTable[1][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[1][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[1][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[1][6]~q\,
	datad => \BranchTable[1][7]~q\,
	combout => \Predictor~36_combout\);

-- Location: LCCOMB_X45_Y29_N10
\Predictor~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~37_combout\ = (\Predictor~35_combout\ & (\Predictor~33_combout\ & (\Predictor~34_combout\ & \Predictor~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~35_combout\,
	datab => \Predictor~33_combout\,
	datac => \Predictor~34_combout\,
	datad => \Predictor~36_combout\,
	combout => \Predictor~37_combout\);

-- Location: LCCOMB_X45_Y29_N14
\Predictor~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~43_combout\ = (TableBusy(1) & (\Predictor~42_combout\ & \Predictor~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(1),
	datac => \Predictor~42_combout\,
	datad => \Predictor~37_combout\,
	combout => \Predictor~43_combout\);

-- Location: LCCOMB_X46_Y29_N28
\PredictedResult~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~4_combout\ = (!\Predictor~21_combout\ & (!\Predictor~10_combout\ & (!\Predictor~32_combout\ & !\Predictor~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~21_combout\,
	datab => \Predictor~10_combout\,
	datac => \Predictor~32_combout\,
	datad => \Predictor~43_combout\,
	combout => \PredictedResult~4_combout\);

-- Location: LCCOMB_X48_Y28_N18
\Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (!write_loc(1) & (!write_loc(3) & (write_loc(2) & write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(3),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X48_Y28_N20
\BranchTable[5][15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][15]~21_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \write_table_en~q\,
	datad => \Decoder1~5_combout\,
	combout => \BranchTable[5][15]~21_combout\);

-- Location: FF_X45_Y27_N27
\BranchTable[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][10]~q\);

-- Location: LCCOMB_X45_Y27_N24
\BranchTable[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[5][11]~feeder_combout\);

-- Location: FF_X45_Y27_N25
\BranchTable[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][11]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][11]~q\);

-- Location: LCCOMB_X45_Y27_N26
\Predictor~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~61_combout\ = (\PC[10]~input_o\ & (\BranchTable[5][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[5][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[5][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[5][10]~q\,
	datad => \BranchTable[5][11]~q\,
	combout => \Predictor~61_combout\);

-- Location: FF_X45_Y27_N21
\BranchTable[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][9]~q\);

-- Location: LCCOMB_X45_Y27_N2
\BranchTable[5][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[5][8]~feeder_combout\);

-- Location: FF_X45_Y27_N3
\BranchTable[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][8]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][8]~q\);

-- Location: LCCOMB_X45_Y27_N20
\Predictor~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~60_combout\ = (\PC[8]~input_o\ & (\BranchTable[5][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[5][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[5][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[5][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[5][9]~q\,
	datad => \BranchTable[5][8]~q\,
	combout => \Predictor~60_combout\);

-- Location: FF_X45_Y27_N31
\BranchTable[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][14]~q\);

-- Location: LCCOMB_X45_Y27_N28
\BranchTable[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[5][15]~feeder_combout\);

-- Location: FF_X45_Y27_N29
\BranchTable[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][15]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][15]~q\);

-- Location: LCCOMB_X45_Y27_N30
\Predictor~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~63_combout\ = (\PC[14]~input_o\ & (\BranchTable[5][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[5][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[5][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[5][14]~q\,
	datad => \BranchTable[5][15]~q\,
	combout => \Predictor~63_combout\);

-- Location: FF_X45_Y27_N7
\BranchTable[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][12]~q\);

-- Location: LCCOMB_X45_Y27_N12
\BranchTable[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~13_combout\,
	combout => \BranchTable[5][13]~feeder_combout\);

-- Location: FF_X45_Y27_N13
\BranchTable[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][13]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][13]~q\);

-- Location: LCCOMB_X45_Y27_N6
\Predictor~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~62_combout\ = (\PC[13]~input_o\ & (\BranchTable[5][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[5][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[5][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[5][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[5][12]~q\,
	datad => \BranchTable[5][13]~q\,
	combout => \Predictor~62_combout\);

-- Location: LCCOMB_X45_Y27_N8
\Predictor~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~64_combout\ = (\Predictor~61_combout\ & (\Predictor~60_combout\ & (\Predictor~63_combout\ & \Predictor~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~61_combout\,
	datab => \Predictor~60_combout\,
	datac => \Predictor~63_combout\,
	datad => \Predictor~62_combout\,
	combout => \Predictor~64_combout\);

-- Location: FF_X44_Y31_N11
\BranchTable[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][6]~q\);

-- Location: LCCOMB_X44_Y31_N28
\BranchTable[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[5][7]~feeder_combout\);

-- Location: FF_X44_Y31_N29
\BranchTable[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][7]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][7]~q\);

-- Location: LCCOMB_X44_Y31_N10
\Predictor~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~58_combout\ = (\PC[6]~input_o\ & (\BranchTable[5][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[5][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[5][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[5][6]~q\,
	datad => \BranchTable[5][7]~q\,
	combout => \Predictor~58_combout\);

-- Location: FF_X44_Y31_N9
\BranchTable[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][1]~q\);

-- Location: LCCOMB_X44_Y31_N6
\BranchTable[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~2_combout\,
	combout => \BranchTable[5][0]~feeder_combout\);

-- Location: FF_X44_Y31_N7
\BranchTable[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][0]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][0]~q\);

-- Location: LCCOMB_X44_Y31_N8
\Predictor~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~55_combout\ = (\PC[0]~input_o\ & (\BranchTable[5][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[5][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[5][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[5][1]~q\,
	datad => \BranchTable[5][0]~q\,
	combout => \Predictor~55_combout\);

-- Location: FF_X44_Y31_N5
\BranchTable[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][3]~q\);

-- Location: LCCOMB_X44_Y31_N2
\BranchTable[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[5][2]~feeder_combout\);

-- Location: FF_X44_Y31_N3
\BranchTable[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][2]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][2]~q\);

-- Location: LCCOMB_X44_Y31_N4
\Predictor~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~56_combout\ = (\PC[2]~input_o\ & (\BranchTable[5][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[5][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[5][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[5][3]~q\,
	datad => \BranchTable[5][2]~q\,
	combout => \Predictor~56_combout\);

-- Location: FF_X44_Y31_N21
\BranchTable[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][5]~q\);

-- Location: LCCOMB_X44_Y31_N18
\BranchTable[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[5][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[5][4]~feeder_combout\);

-- Location: FF_X44_Y31_N19
\BranchTable[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[5][4]~feeder_combout\,
	ena => \BranchTable[5][15]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[5][4]~q\);

-- Location: LCCOMB_X44_Y31_N20
\Predictor~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~57_combout\ = (\PC[4]~input_o\ & (\BranchTable[5][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[5][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[5][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[5][5]~q\,
	datad => \BranchTable[5][4]~q\,
	combout => \Predictor~57_combout\);

-- Location: LCCOMB_X44_Y31_N0
\Predictor~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~59_combout\ = (\Predictor~58_combout\ & (\Predictor~55_combout\ & (\Predictor~56_combout\ & \Predictor~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~58_combout\,
	datab => \Predictor~55_combout\,
	datac => \Predictor~56_combout\,
	datad => \Predictor~57_combout\,
	combout => \Predictor~59_combout\);

-- Location: LCCOMB_X45_Y27_N22
\Predictor~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~65_combout\ = (TableBusy(5) & (\Predictor~64_combout\ & \Predictor~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(5),
	datac => \Predictor~64_combout\,
	datad => \Predictor~59_combout\,
	combout => \Predictor~65_combout\);

-- Location: LCCOMB_X48_Y28_N14
\Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (write_loc(1) & (!write_loc(3) & (write_loc(2) & !write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(3),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X47_Y27_N8
\BranchTable[6][15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][15]~22_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \write_table_en~q\,
	datad => \Decoder1~6_combout\,
	combout => \BranchTable[6][15]~22_combout\);

-- Location: FF_X46_Y27_N13
\BranchTable[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][5]~q\);

-- Location: LCCOMB_X46_Y27_N14
\BranchTable[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~6_combout\,
	combout => \BranchTable[6][4]~feeder_combout\);

-- Location: FF_X46_Y27_N15
\BranchTable[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][4]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][4]~q\);

-- Location: LCCOMB_X46_Y27_N12
\Predictor~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~68_combout\ = (\PC[4]~input_o\ & (\BranchTable[6][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[6][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[6][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[6][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[6][5]~q\,
	datad => \BranchTable[6][4]~q\,
	combout => \Predictor~68_combout\);

-- Location: FF_X46_Y27_N5
\BranchTable[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][1]~q\);

-- Location: FF_X46_Y27_N3
\BranchTable[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][0]~q\);

-- Location: LCCOMB_X46_Y27_N4
\Predictor~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~66_combout\ = (\PC[0]~input_o\ & (\BranchTable[6][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[6][1]~q\)))) # (!\PC[0]~input_o\ & (!\BranchTable[6][0]~q\ & (\PC[1]~input_o\ $ (!\BranchTable[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[1]~input_o\,
	datac => \BranchTable[6][1]~q\,
	datad => \BranchTable[6][0]~q\,
	combout => \Predictor~66_combout\);

-- Location: FF_X47_Y27_N1
\BranchTable[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][3]~q\);

-- Location: LCCOMB_X47_Y27_N2
\BranchTable[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~4_combout\,
	combout => \BranchTable[6][2]~feeder_combout\);

-- Location: FF_X47_Y27_N3
\BranchTable[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][2]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][2]~q\);

-- Location: LCCOMB_X47_Y27_N0
\Predictor~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~67_combout\ = (\PC[3]~input_o\ & (\BranchTable[6][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[6][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[6][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[6][3]~q\,
	datad => \BranchTable[6][2]~q\,
	combout => \Predictor~67_combout\);

-- Location: FF_X46_Y27_N29
\BranchTable[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~7_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][7]~q\);

-- Location: LCCOMB_X46_Y27_N18
\BranchTable[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][6]~feeder_combout\ = \BranchTable~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~8_combout\,
	combout => \BranchTable[6][6]~feeder_combout\);

-- Location: FF_X46_Y27_N19
\BranchTable[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][6]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][6]~q\);

-- Location: LCCOMB_X46_Y27_N28
\Predictor~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~69_combout\ = (\PC[6]~input_o\ & (\BranchTable[6][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[6][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[6][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[6][7]~q\,
	datad => \BranchTable[6][6]~q\,
	combout => \Predictor~69_combout\);

-- Location: LCCOMB_X46_Y27_N16
\Predictor~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~70_combout\ = (\Predictor~68_combout\ & (\Predictor~66_combout\ & (\Predictor~67_combout\ & \Predictor~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~68_combout\,
	datab => \Predictor~66_combout\,
	datac => \Predictor~67_combout\,
	datad => \Predictor~69_combout\,
	combout => \Predictor~70_combout\);

-- Location: FF_X46_Y27_N23
\BranchTable[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][9]~q\);

-- Location: LCCOMB_X46_Y27_N8
\BranchTable[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[6][8]~feeder_combout\);

-- Location: FF_X46_Y27_N9
\BranchTable[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][8]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][8]~q\);

-- Location: LCCOMB_X46_Y27_N22
\Predictor~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~71_combout\ = (\PC[9]~input_o\ & (\BranchTable[6][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[6][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[6][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[6][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[6][9]~q\,
	datad => \BranchTable[6][8]~q\,
	combout => \Predictor~71_combout\);

-- Location: FF_X47_Y27_N25
\BranchTable[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][11]~q\);

-- Location: LCCOMB_X47_Y27_N18
\BranchTable[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~12_combout\,
	combout => \BranchTable[6][10]~feeder_combout\);

-- Location: FF_X47_Y27_N19
\BranchTable[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][10]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][10]~q\);

-- Location: LCCOMB_X47_Y27_N24
\Predictor~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~72_combout\ = (\PC[10]~input_o\ & (\BranchTable[6][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[6][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[6][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[6][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[6][11]~q\,
	datad => \BranchTable[6][10]~q\,
	combout => \Predictor~72_combout\);

-- Location: FF_X46_Y27_N27
\BranchTable[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~13_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][13]~q\);

-- Location: LCCOMB_X46_Y27_N20
\BranchTable[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[6][12]~feeder_combout\ = \BranchTable~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~14_combout\,
	combout => \BranchTable[6][12]~feeder_combout\);

-- Location: FF_X46_Y27_N21
\BranchTable[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[6][12]~feeder_combout\,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][12]~q\);

-- Location: LCCOMB_X46_Y27_N26
\Predictor~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~73_combout\ = (\PC[13]~input_o\ & (\BranchTable[6][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[6][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[6][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[6][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[6][13]~q\,
	datad => \BranchTable[6][12]~q\,
	combout => \Predictor~73_combout\);

-- Location: FF_X46_Y27_N1
\BranchTable[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][14]~q\);

-- Location: FF_X46_Y27_N11
\BranchTable[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~15_combout\,
	sload => VCC,
	ena => \BranchTable[6][15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[6][15]~q\);

-- Location: LCCOMB_X46_Y27_N0
\Predictor~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~74_combout\ = (\PC[15]~input_o\ & (\BranchTable[6][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[6][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[6][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[6][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[6][14]~q\,
	datad => \BranchTable[6][15]~q\,
	combout => \Predictor~74_combout\);

-- Location: LCCOMB_X46_Y27_N6
\Predictor~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~75_combout\ = (\Predictor~71_combout\ & (\Predictor~72_combout\ & (\Predictor~73_combout\ & \Predictor~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~71_combout\,
	datab => \Predictor~72_combout\,
	datac => \Predictor~73_combout\,
	datad => \Predictor~74_combout\,
	combout => \Predictor~75_combout\);

-- Location: LCCOMB_X46_Y27_N2
\Predictor~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~76_combout\ = (TableBusy(6) & (\Predictor~70_combout\ & \Predictor~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(6),
	datab => \Predictor~70_combout\,
	datad => \Predictor~75_combout\,
	combout => \Predictor~76_combout\);

-- Location: LCCOMB_X46_Y29_N8
\PredictedResult~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~5_combout\ = (!\Predictor~54_combout\ & (\PredictedResult~4_combout\ & (!\Predictor~65_combout\ & !\Predictor~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~54_combout\,
	datab => \PredictedResult~4_combout\,
	datac => \Predictor~65_combout\,
	datad => \Predictor~76_combout\,
	combout => \PredictedResult~5_combout\);

-- Location: LCCOMB_X47_Y29_N26
\write_table[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_table[15]~1_combout\ = (\write_table[15]~0_combout\ & (\PredictedResult~23_combout\ & (\TableBusy~0_combout\ & \PredictedResult~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_table[15]~0_combout\,
	datab => \PredictedResult~23_combout\,
	datac => \TableBusy~0_combout\,
	datad => \PredictedResult~5_combout\,
	combout => \write_table[15]~1_combout\);

-- Location: FF_X48_Y29_N9
\write_table[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \PC[10]~input_o\,
	sload => VCC,
	ena => \write_table[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_table(10));

-- Location: LCCOMB_X51_Y29_N14
\BranchTable~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable~12_combout\ = (!\reset~input_o\ & write_table(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => write_table(10),
	combout => \BranchTable~12_combout\);

-- Location: LCCOMB_X48_Y29_N16
\Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (write_loc(2) & (write_loc(0) & (write_loc(1) & !write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(1),
	datad => write_loc(3),
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X48_Y29_N10
\BranchTable[7][7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][7]~23_combout\ = (\reset~input_o\) # ((\Decoder1~7_combout\ & \write_table_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder1~7_combout\,
	datad => \write_table_en~q\,
	combout => \BranchTable[7][7]~23_combout\);

-- Location: FF_X49_Y31_N7
\BranchTable[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][10]~q\);

-- Location: LCCOMB_X49_Y31_N20
\BranchTable[7][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][11]~feeder_combout\ = \BranchTable~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~11_combout\,
	combout => \BranchTable[7][11]~feeder_combout\);

-- Location: FF_X49_Y31_N21
\BranchTable[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][11]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][11]~q\);

-- Location: LCCOMB_X49_Y31_N6
\Predictor~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~94_combout\ = (\PC[10]~input_o\ & (\BranchTable[7][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[7][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[7][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[7][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[7][10]~q\,
	datad => \BranchTable[7][11]~q\,
	combout => \Predictor~94_combout\);

-- Location: LCCOMB_X49_Y31_N14
\BranchTable[7][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][14]~feeder_combout\ = \BranchTable~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~16_combout\,
	combout => \BranchTable[7][14]~feeder_combout\);

-- Location: FF_X49_Y31_N15
\BranchTable[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][14]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][14]~q\);

-- Location: LCCOMB_X49_Y31_N12
\BranchTable[7][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[7][15]~feeder_combout\);

-- Location: FF_X49_Y31_N13
\BranchTable[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][15]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][15]~q\);

-- Location: LCCOMB_X49_Y31_N8
\Predictor~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~96_combout\ = (\PC[14]~input_o\ & (\BranchTable[7][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[7][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[7][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[7][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[7][14]~q\,
	datad => \BranchTable[7][15]~q\,
	combout => \Predictor~96_combout\);

-- Location: FF_X49_Y31_N27
\BranchTable[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][12]~q\);

-- Location: LCCOMB_X49_Y31_N28
\BranchTable[7][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[7][13]~feeder_combout\);

-- Location: FF_X49_Y31_N29
\BranchTable[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][13]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][13]~q\);

-- Location: LCCOMB_X49_Y31_N26
\Predictor~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~95_combout\ = (\PC[13]~input_o\ & (\BranchTable[7][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[7][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[7][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[7][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[7][12]~q\,
	datad => \BranchTable[7][13]~q\,
	combout => \Predictor~95_combout\);

-- Location: FF_X49_Y31_N11
\BranchTable[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][8]~q\);

-- Location: LCCOMB_X49_Y31_N16
\BranchTable[7][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][9]~feeder_combout\ = \BranchTable~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~9_combout\,
	combout => \BranchTable[7][9]~feeder_combout\);

-- Location: FF_X49_Y31_N17
\BranchTable[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][9]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][9]~q\);

-- Location: LCCOMB_X49_Y31_N10
\Predictor~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~93_combout\ = (\PC[9]~input_o\ & (\BranchTable[7][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[7][8]~q\)))) # (!\PC[9]~input_o\ & (!\BranchTable[7][9]~q\ & (\PC[8]~input_o\ $ (!\BranchTable[7][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[8]~input_o\,
	datac => \BranchTable[7][8]~q\,
	datad => \BranchTable[7][9]~q\,
	combout => \Predictor~93_combout\);

-- Location: LCCOMB_X49_Y31_N22
\Predictor~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~97_combout\ = (\Predictor~94_combout\ & (\Predictor~96_combout\ & (\Predictor~95_combout\ & \Predictor~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~94_combout\,
	datab => \Predictor~96_combout\,
	datac => \Predictor~95_combout\,
	datad => \Predictor~93_combout\,
	combout => \Predictor~97_combout\);

-- Location: FF_X47_Y31_N9
\BranchTable[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~4_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][2]~q\);

-- Location: LCCOMB_X47_Y31_N2
\BranchTable[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][3]~feeder_combout\ = \BranchTable~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~3_combout\,
	combout => \BranchTable[7][3]~feeder_combout\);

-- Location: FF_X47_Y31_N3
\BranchTable[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][3]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][3]~q\);

-- Location: LCCOMB_X47_Y31_N8
\Predictor~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~89_combout\ = (\PC[2]~input_o\ & (\BranchTable[7][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[7][3]~q\)))) # (!\PC[2]~input_o\ & (!\BranchTable[7][2]~q\ & (\PC[3]~input_o\ $ (!\BranchTable[7][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \PC[3]~input_o\,
	datac => \BranchTable[7][2]~q\,
	datad => \BranchTable[7][3]~q\,
	combout => \Predictor~89_combout\);

-- Location: LCCOMB_X47_Y31_N14
\BranchTable[7][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[7][7]~feeder_combout\);

-- Location: FF_X47_Y31_N15
\BranchTable[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][7]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][7]~q\);

-- Location: FF_X47_Y31_N29
\BranchTable[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][6]~q\);

-- Location: LCCOMB_X47_Y31_N28
\Predictor~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~91_combout\ = (\PC[7]~input_o\ & (\BranchTable[7][7]~q\ & (\BranchTable[7][6]~q\ $ (!\PC[6]~input_o\)))) # (!\PC[7]~input_o\ & (!\BranchTable[7][7]~q\ & (\BranchTable[7][6]~q\ $ (!\PC[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \BranchTable[7][7]~q\,
	datac => \BranchTable[7][6]~q\,
	datad => \PC[6]~input_o\,
	combout => \Predictor~91_combout\);

-- Location: FF_X47_Y31_N23
\BranchTable[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][1]~q\);

-- Location: FF_X47_Y31_N1
\BranchTable[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][0]~q\);

-- Location: LCCOMB_X47_Y31_N0
\Predictor~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~88_combout\ = (\BranchTable[7][1]~q\ & (\PC[1]~input_o\ & (\PC[0]~input_o\ $ (!\BranchTable[7][0]~q\)))) # (!\BranchTable[7][1]~q\ & (!\PC[1]~input_o\ & (\PC[0]~input_o\ $ (!\BranchTable[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[7][1]~q\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[7][0]~q\,
	datad => \PC[1]~input_o\,
	combout => \Predictor~88_combout\);

-- Location: FF_X49_Y31_N19
\BranchTable[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][4]~q\);

-- Location: LCCOMB_X49_Y31_N24
\BranchTable[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[7][5]~feeder_combout\ = \BranchTable~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~5_combout\,
	combout => \BranchTable[7][5]~feeder_combout\);

-- Location: FF_X49_Y31_N25
\BranchTable[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[7][5]~feeder_combout\,
	ena => \BranchTable[7][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[7][5]~q\);

-- Location: LCCOMB_X49_Y31_N18
\Predictor~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~90_combout\ = (\PC[4]~input_o\ & (\BranchTable[7][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[7][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[7][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[7][4]~q\,
	datad => \BranchTable[7][5]~q\,
	combout => \Predictor~90_combout\);

-- Location: LCCOMB_X48_Y31_N14
\Predictor~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~92_combout\ = (\Predictor~89_combout\ & (\Predictor~91_combout\ & (\Predictor~88_combout\ & \Predictor~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~89_combout\,
	datab => \Predictor~91_combout\,
	datac => \Predictor~88_combout\,
	datad => \Predictor~90_combout\,
	combout => \Predictor~92_combout\);

-- Location: LCCOMB_X48_Y29_N24
\Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (!write_loc(2) & (!write_loc(0) & (!write_loc(1) & write_loc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(2),
	datab => write_loc(0),
	datac => write_loc(1),
	datad => write_loc(3),
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X48_Y29_N26
\BranchTable[8][15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][15]~24_combout\ = (\reset~input_o\) # ((\Decoder1~8_combout\ & \write_table_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder1~8_combout\,
	datad => \write_table_en~q\,
	combout => \BranchTable[8][15]~24_combout\);

-- Location: FF_X48_Y31_N23
\BranchTable[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~5_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][5]~q\);

-- Location: LCCOMB_X48_Y31_N20
\BranchTable[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][4]~feeder_combout\ = \BranchTable~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~6_combout\,
	combout => \BranchTable[8][4]~feeder_combout\);

-- Location: FF_X48_Y31_N21
\BranchTable[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][4]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][4]~q\);

-- Location: LCCOMB_X48_Y31_N22
\Predictor~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~79_combout\ = (\PC[5]~input_o\ & (\BranchTable[8][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[8][4]~q\)))) # (!\PC[5]~input_o\ & (!\BranchTable[8][5]~q\ & (\PC[4]~input_o\ $ (!\BranchTable[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[4]~input_o\,
	datac => \BranchTable[8][5]~q\,
	datad => \BranchTable[8][4]~q\,
	combout => \Predictor~79_combout\);

-- Location: FF_X48_Y31_N19
\BranchTable[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][1]~q\);

-- Location: FF_X48_Y31_N13
\BranchTable[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~2_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][0]~q\);

-- Location: LCCOMB_X48_Y31_N18
\Predictor~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~77_combout\ = (\PC[1]~input_o\ & (\BranchTable[8][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[8][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[8][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[8][1]~q\,
	datad => \BranchTable[8][0]~q\,
	combout => \Predictor~77_combout\);

-- Location: FF_X45_Y31_N23
\BranchTable[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][6]~q\);

-- Location: LCCOMB_X45_Y31_N0
\BranchTable[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~7_combout\,
	combout => \BranchTable[8][7]~feeder_combout\);

-- Location: FF_X45_Y31_N1
\BranchTable[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][7]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][7]~q\);

-- Location: LCCOMB_X45_Y31_N22
\Predictor~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~80_combout\ = (\PC[6]~input_o\ & (\BranchTable[8][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[8][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[8][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[8][6]~q\,
	datad => \BranchTable[8][7]~q\,
	combout => \Predictor~80_combout\);

-- Location: FF_X45_Y31_N29
\BranchTable[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~3_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][3]~q\);

-- Location: LCCOMB_X45_Y31_N2
\BranchTable[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][2]~feeder_combout\ = \BranchTable~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~4_combout\,
	combout => \BranchTable[8][2]~feeder_combout\);

-- Location: FF_X45_Y31_N3
\BranchTable[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][2]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][2]~q\);

-- Location: LCCOMB_X45_Y31_N28
\Predictor~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~78_combout\ = (\PC[3]~input_o\ & (\BranchTable[8][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[8][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[8][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[8][3]~q\,
	datad => \BranchTable[8][2]~q\,
	combout => \Predictor~78_combout\);

-- Location: LCCOMB_X48_Y31_N26
\Predictor~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~81_combout\ = (\Predictor~79_combout\ & (\Predictor~77_combout\ & (\Predictor~80_combout\ & \Predictor~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~79_combout\,
	datab => \Predictor~77_combout\,
	datac => \Predictor~80_combout\,
	datad => \Predictor~78_combout\,
	combout => \Predictor~81_combout\);

-- Location: FF_X48_Y31_N31
\BranchTable[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][12]~q\);

-- Location: LCCOMB_X48_Y31_N28
\BranchTable[8][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~13_combout\,
	combout => \BranchTable[8][13]~feeder_combout\);

-- Location: FF_X48_Y31_N29
\BranchTable[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][13]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][13]~q\);

-- Location: LCCOMB_X48_Y31_N30
\Predictor~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~84_combout\ = (\PC[12]~input_o\ & (\BranchTable[8][12]~q\ & (\PC[13]~input_o\ $ (!\BranchTable[8][13]~q\)))) # (!\PC[12]~input_o\ & (!\BranchTable[8][12]~q\ & (\PC[13]~input_o\ $ (!\BranchTable[8][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[12]~input_o\,
	datab => \PC[13]~input_o\,
	datac => \BranchTable[8][12]~q\,
	datad => \BranchTable[8][13]~q\,
	combout => \Predictor~84_combout\);

-- Location: FF_X48_Y31_N5
\BranchTable[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][14]~q\);

-- Location: LCCOMB_X48_Y31_N0
\BranchTable[8][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~15_combout\,
	combout => \BranchTable[8][15]~feeder_combout\);

-- Location: FF_X48_Y31_N1
\BranchTable[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][15]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][15]~q\);

-- Location: LCCOMB_X48_Y31_N4
\Predictor~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~85_combout\ = (\PC[15]~input_o\ & (\BranchTable[8][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[8][14]~q\)))) # (!\PC[15]~input_o\ & (!\BranchTable[8][15]~q\ & (\PC[14]~input_o\ $ (!\BranchTable[8][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \PC[14]~input_o\,
	datac => \BranchTable[8][14]~q\,
	datad => \BranchTable[8][15]~q\,
	combout => \Predictor~85_combout\);

-- Location: FF_X45_Y31_N21
\BranchTable[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~9_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][9]~q\);

-- Location: LCCOMB_X45_Y31_N18
\BranchTable[8][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][8]~feeder_combout\ = \BranchTable~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~10_combout\,
	combout => \BranchTable[8][8]~feeder_combout\);

-- Location: FF_X45_Y31_N19
\BranchTable[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][8]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][8]~q\);

-- Location: LCCOMB_X45_Y31_N20
\Predictor~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~82_combout\ = (\PC[8]~input_o\ & (\BranchTable[8][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[8][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[8][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[8][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[8][9]~q\,
	datad => \BranchTable[8][8]~q\,
	combout => \Predictor~82_combout\);

-- Location: FF_X45_Y27_N17
\BranchTable[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][11]~q\);

-- Location: LCCOMB_X45_Y27_N18
\BranchTable[8][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[8][10]~feeder_combout\ = \BranchTable~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~12_combout\,
	combout => \BranchTable[8][10]~feeder_combout\);

-- Location: FF_X45_Y27_N19
\BranchTable[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[8][10]~feeder_combout\,
	ena => \BranchTable[8][15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[8][10]~q\);

-- Location: LCCOMB_X45_Y27_N16
\Predictor~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~83_combout\ = (\PC[10]~input_o\ & (\BranchTable[8][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[8][11]~q\)))) # (!\PC[10]~input_o\ & (!\BranchTable[8][10]~q\ & (\PC[11]~input_o\ $ (!\BranchTable[8][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PC[11]~input_o\,
	datac => \BranchTable[8][11]~q\,
	datad => \BranchTable[8][10]~q\,
	combout => \Predictor~83_combout\);

-- Location: LCCOMB_X48_Y31_N2
\Predictor~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~86_combout\ = (\Predictor~84_combout\ & (\Predictor~85_combout\ & (\Predictor~82_combout\ & \Predictor~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~84_combout\,
	datab => \Predictor~85_combout\,
	datac => \Predictor~82_combout\,
	datad => \Predictor~83_combout\,
	combout => \Predictor~86_combout\);

-- Location: LCCOMB_X48_Y31_N16
\Predictor~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~87_combout\ = (TableBusy(8) & (\Predictor~81_combout\ & \Predictor~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TableBusy(8),
	datac => \Predictor~81_combout\,
	datad => \Predictor~86_combout\,
	combout => \Predictor~87_combout\);

-- Location: LCCOMB_X48_Y31_N10
\PredictedResult~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~23_combout\ = (!\Predictor~87_combout\ & (((!\Predictor~92_combout\) # (!\Predictor~97_combout\)) # (!TableBusy(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(7),
	datab => \Predictor~97_combout\,
	datac => \Predictor~92_combout\,
	datad => \Predictor~87_combout\,
	combout => \PredictedResult~23_combout\);

-- Location: LCCOMB_X47_Y30_N30
\TableBusy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~1_combout\ = (\PredictedResult~23_combout\ & (\PredictedResult~13_combout\ & (\PredictedResult~5_combout\ & \TableBusy~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PredictedResult~23_combout\,
	datab => \PredictedResult~13_combout\,
	datac => \PredictedResult~5_combout\,
	datad => \TableBusy~0_combout\,
	combout => \TableBusy~1_combout\);

-- Location: LCCOMB_X47_Y30_N4
\TableBusy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TableBusy~4_combout\ = (\TableBusy~1_combout\) # (TableBusy(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TableBusy~1_combout\,
	datac => TableBusy(0),
	combout => \TableBusy~4_combout\);

-- Location: FF_X47_Y30_N5
\TableBusy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \TableBusy~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TableBusy(0));

-- Location: LCCOMB_X48_Y28_N10
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!write_loc(1) & (!write_loc(3) & (!write_loc(2) & !write_loc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_loc(1),
	datab => write_loc(3),
	datac => write_loc(2),
	datad => write_loc(0),
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X48_Y28_N4
\BranchTable[0][10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][10]~18_combout\ = (\reset~input_o\) # ((\write_table_en~q\ & \Decoder1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \write_table_en~q\,
	datad => \Decoder1~2_combout\,
	combout => \BranchTable[0][10]~18_combout\);

-- Location: FF_X44_Y30_N17
\BranchTable[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~0_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][1]~q\);

-- Location: LCCOMB_X44_Y30_N2
\BranchTable[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][0]~feeder_combout\ = \BranchTable~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~2_combout\,
	combout => \BranchTable[0][0]~feeder_combout\);

-- Location: FF_X44_Y30_N3
\BranchTable[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][0]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][0]~q\);

-- Location: LCCOMB_X44_Y30_N16
\Predictor~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~22_combout\ = (\PC[1]~input_o\ & (\BranchTable[0][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[0][0]~q\)))) # (!\PC[1]~input_o\ & (!\BranchTable[0][1]~q\ & (\PC[0]~input_o\ $ (!\BranchTable[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[1]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \BranchTable[0][1]~q\,
	datad => \BranchTable[0][0]~q\,
	combout => \Predictor~22_combout\);

-- Location: FF_X45_Y30_N19
\BranchTable[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~6_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][4]~q\);

-- Location: LCCOMB_X45_Y30_N20
\BranchTable[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][5]~feeder_combout\ = \BranchTable~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~5_combout\,
	combout => \BranchTable[0][5]~feeder_combout\);

-- Location: FF_X45_Y30_N21
\BranchTable[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][5]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][5]~q\);

-- Location: LCCOMB_X45_Y30_N18
\Predictor~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~24_combout\ = (\PC[4]~input_o\ & (\BranchTable[0][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[0][5]~q\)))) # (!\PC[4]~input_o\ & (!\BranchTable[0][4]~q\ & (\PC[5]~input_o\ $ (!\BranchTable[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \BranchTable[0][4]~q\,
	datad => \BranchTable[0][5]~q\,
	combout => \Predictor~24_combout\);

-- Location: FF_X45_Y30_N11
\BranchTable[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~8_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][6]~q\);

-- Location: LCCOMB_X45_Y30_N16
\BranchTable[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][7]~feeder_combout\ = \BranchTable~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~7_combout\,
	combout => \BranchTable[0][7]~feeder_combout\);

-- Location: FF_X45_Y30_N17
\BranchTable[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][7]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][7]~q\);

-- Location: LCCOMB_X45_Y30_N10
\Predictor~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~25_combout\ = (\PC[6]~input_o\ & (\BranchTable[0][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[0][7]~q\)))) # (!\PC[6]~input_o\ & (!\BranchTable[0][6]~q\ & (\PC[7]~input_o\ $ (!\BranchTable[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[6]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \BranchTable[0][6]~q\,
	datad => \BranchTable[0][7]~q\,
	combout => \Predictor~25_combout\);

-- Location: FF_X44_Y28_N15
\BranchTable[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~4_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][2]~q\);

-- Location: LCCOMB_X44_Y28_N0
\BranchTable[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][3]~feeder_combout\ = \BranchTable~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~3_combout\,
	combout => \BranchTable[0][3]~feeder_combout\);

-- Location: FF_X44_Y28_N1
\BranchTable[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][3]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][3]~q\);

-- Location: LCCOMB_X44_Y28_N14
\Predictor~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~23_combout\ = (\PC[3]~input_o\ & (\BranchTable[0][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[0][2]~q\)))) # (!\PC[3]~input_o\ & (!\BranchTable[0][3]~q\ & (\PC[2]~input_o\ $ (!\BranchTable[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \BranchTable[0][2]~q\,
	datad => \BranchTable[0][3]~q\,
	combout => \Predictor~23_combout\);

-- Location: LCCOMB_X45_Y30_N24
\Predictor~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~26_combout\ = (\Predictor~22_combout\ & (\Predictor~24_combout\ & (\Predictor~25_combout\ & \Predictor~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~22_combout\,
	datab => \Predictor~24_combout\,
	datac => \Predictor~25_combout\,
	datad => \Predictor~23_combout\,
	combout => \Predictor~26_combout\);

-- Location: FF_X45_Y30_N1
\BranchTable[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~10_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][8]~q\);

-- Location: LCCOMB_X45_Y30_N22
\BranchTable[0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][9]~feeder_combout\ = \BranchTable~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BranchTable~9_combout\,
	combout => \BranchTable[0][9]~feeder_combout\);

-- Location: FF_X45_Y30_N23
\BranchTable[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][9]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][9]~q\);

-- Location: LCCOMB_X45_Y30_N0
\Predictor~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~27_combout\ = (\PC[8]~input_o\ & (\BranchTable[0][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[0][9]~q\)))) # (!\PC[8]~input_o\ & (!\BranchTable[0][8]~q\ & (\PC[9]~input_o\ $ (!\BranchTable[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PC[9]~input_o\,
	datac => \BranchTable[0][8]~q\,
	datad => \BranchTable[0][9]~q\,
	combout => \Predictor~27_combout\);

-- Location: FF_X45_Y30_N5
\BranchTable[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~14_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][12]~q\);

-- Location: LCCOMB_X45_Y30_N26
\BranchTable[0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][13]~feeder_combout\ = \BranchTable~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~13_combout\,
	combout => \BranchTable[0][13]~feeder_combout\);

-- Location: FF_X45_Y30_N27
\BranchTable[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][13]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][13]~q\);

-- Location: LCCOMB_X45_Y30_N4
\Predictor~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~29_combout\ = (\PC[13]~input_o\ & (\BranchTable[0][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[0][12]~q\)))) # (!\PC[13]~input_o\ & (!\BranchTable[0][13]~q\ & (\PC[12]~input_o\ $ (!\BranchTable[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PC[12]~input_o\,
	datac => \BranchTable[0][12]~q\,
	datad => \BranchTable[0][13]~q\,
	combout => \Predictor~29_combout\);

-- Location: FF_X45_Y30_N9
\BranchTable[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~16_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][14]~q\);

-- Location: LCCOMB_X45_Y30_N6
\BranchTable[0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchTable[0][15]~feeder_combout\ = \BranchTable~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BranchTable~15_combout\,
	combout => \BranchTable[0][15]~feeder_combout\);

-- Location: FF_X45_Y30_N7
\BranchTable[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BranchTable[0][15]~feeder_combout\,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][15]~q\);

-- Location: LCCOMB_X45_Y30_N8
\Predictor~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~30_combout\ = (\PC[14]~input_o\ & (\BranchTable[0][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[0][15]~q\)))) # (!\PC[14]~input_o\ & (!\BranchTable[0][14]~q\ & (\PC[15]~input_o\ $ (!\BranchTable[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[14]~input_o\,
	datab => \PC[15]~input_o\,
	datac => \BranchTable[0][14]~q\,
	datad => \BranchTable[0][15]~q\,
	combout => \Predictor~30_combout\);

-- Location: FF_X45_Y30_N31
\BranchTable[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~11_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][11]~q\);

-- Location: FF_X45_Y30_N13
\BranchTable[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \BranchTable~12_combout\,
	sload => VCC,
	ena => \BranchTable[0][10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BranchTable[0][10]~q\);

-- Location: LCCOMB_X45_Y30_N12
\Predictor~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~28_combout\ = (\BranchTable[0][11]~q\ & (\PC[11]~input_o\ & (\PC[10]~input_o\ $ (!\BranchTable[0][10]~q\)))) # (!\BranchTable[0][11]~q\ & (!\PC[11]~input_o\ & (\PC[10]~input_o\ $ (!\BranchTable[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[0][11]~q\,
	datab => \PC[10]~input_o\,
	datac => \BranchTable[0][10]~q\,
	datad => \PC[11]~input_o\,
	combout => \Predictor~28_combout\);

-- Location: LCCOMB_X45_Y30_N2
\Predictor~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~31_combout\ = (\Predictor~27_combout\ & (\Predictor~29_combout\ & (\Predictor~30_combout\ & \Predictor~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~27_combout\,
	datab => \Predictor~29_combout\,
	datac => \Predictor~30_combout\,
	datad => \Predictor~28_combout\,
	combout => \Predictor~31_combout\);

-- Location: LCCOMB_X45_Y30_N30
\Predictor~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~32_combout\ = (TableBusy(0) & (\Predictor~26_combout\ & \Predictor~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(0),
	datab => \Predictor~26_combout\,
	datad => \Predictor~31_combout\,
	combout => \Predictor~32_combout\);

-- Location: LCCOMB_X46_Y27_N10
\PredictedResult~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~16_combout\ = (\Predictor~65_combout\ & (((\BranchTable[5][15]~q\)))) # (!\Predictor~65_combout\ & (\Predictor~76_combout\ & ((\BranchTable[6][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~76_combout\,
	datab => \BranchTable[5][15]~q\,
	datac => \BranchTable[6][15]~q\,
	datad => \Predictor~65_combout\,
	combout => \PredictedResult~16_combout\);

-- Location: LCCOMB_X47_Y29_N4
\PredictedResult~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~17_combout\ = (!\Predictor~54_combout\ & (\PredictedResult~4_combout\ & \PredictedResult~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~54_combout\,
	datac => \PredictedResult~4_combout\,
	datad => \PredictedResult~16_combout\,
	combout => \PredictedResult~17_combout\);

-- Location: LCCOMB_X46_Y29_N18
\PredictedResult~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~18_combout\ = (\Predictor~54_combout\ & (((\BranchTable[3][15]~q\)))) # (!\Predictor~54_combout\ & (\BranchTable[4][15]~q\ & ((\Predictor~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[4][15]~q\,
	datab => \BranchTable[3][15]~q\,
	datac => \Predictor~10_combout\,
	datad => \Predictor~54_combout\,
	combout => \PredictedResult~18_combout\);

-- Location: LCCOMB_X46_Y29_N24
\PredictedResult~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~19_combout\ = (\Predictor~21_combout\ & (\BranchTable[2][15]~q\)) # (!\Predictor~21_combout\ & ((\PredictedResult~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BranchTable[2][15]~q\,
	datac => \Predictor~21_combout\,
	datad => \PredictedResult~18_combout\,
	combout => \PredictedResult~19_combout\);

-- Location: LCCOMB_X45_Y29_N18
\PredictedResult~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~20_combout\ = (\Predictor~43_combout\ & (\BranchTable[1][15]~q\)) # (!\Predictor~43_combout\ & ((\PredictedResult~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[1][15]~q\,
	datab => \Predictor~43_combout\,
	datad => \PredictedResult~19_combout\,
	combout => \PredictedResult~20_combout\);

-- Location: LCCOMB_X47_Y29_N14
\PredictedResult~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~21_combout\ = (\PredictedResult~17_combout\) # ((\Predictor~32_combout\ & (\BranchTable[0][15]~q\)) # (!\Predictor~32_combout\ & ((\PredictedResult~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~32_combout\,
	datab => \BranchTable[0][15]~q\,
	datac => \PredictedResult~17_combout\,
	datad => \PredictedResult~20_combout\,
	combout => \PredictedResult~21_combout\);

-- Location: LCCOMB_X48_Y31_N12
\Predictor~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Predictor~98_combout\ = (TableBusy(7) & (\Predictor~92_combout\ & \Predictor~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TableBusy(7),
	datab => \Predictor~92_combout\,
	datad => \Predictor~97_combout\,
	combout => \Predictor~98_combout\);

-- Location: LCCOMB_X48_Y31_N8
\PredictedResult~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~6_combout\ = (\Predictor~98_combout\ & (\BranchTable[7][15]~q\)) # (!\Predictor~98_combout\ & (((\BranchTable[8][15]~q\ & \Predictor~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[7][15]~q\,
	datab => \BranchTable[8][15]~q\,
	datac => \Predictor~98_combout\,
	datad => \Predictor~87_combout\,
	combout => \PredictedResult~6_combout\);

-- Location: LCCOMB_X46_Y31_N10
\PredictedResult~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~7_combout\ = (\Predictor~120_combout\ & (\BranchTable[11][15]~q\)) # (!\Predictor~120_combout\ & (((\Predictor~109_combout\ & \BranchTable[12][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[11][15]~q\,
	datab => \Predictor~109_combout\,
	datac => \BranchTable[12][15]~q\,
	datad => \Predictor~120_combout\,
	combout => \PredictedResult~7_combout\);

-- Location: LCCOMB_X47_Y29_N2
\PredictedResult~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~8_combout\ = (!\Predictor~131_combout\ & (!\Predictor~142_combout\ & \PredictedResult~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Predictor~131_combout\,
	datac => \Predictor~142_combout\,
	datad => \PredictedResult~7_combout\,
	combout => \PredictedResult~8_combout\);

-- Location: LCCOMB_X48_Y27_N26
\PredictedResult~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~9_combout\ = (\Predictor~131_combout\ & (\BranchTable[9][15]~q\)) # (!\Predictor~131_combout\ & (((\Predictor~142_combout\ & \BranchTable[10][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[9][15]~q\,
	datab => \Predictor~142_combout\,
	datac => \BranchTable[10][15]~q\,
	datad => \Predictor~131_combout\,
	combout => \PredictedResult~9_combout\);

-- Location: IOIBUF_X49_Y34_N8
\Instruction[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(5),
	o => \Instruction[5]~input_o\);

-- Location: LCCOMB_X47_Y29_N22
\PredictedResult~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~11_combout\ = (\Predictor~175_combout\ & (\Instruction[5]~input_o\)) # (!\Predictor~175_combout\ & ((\BranchTable[15][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction[5]~input_o\,
	datac => \BranchTable[15][15]~q\,
	datad => \Predictor~175_combout\,
	combout => \PredictedResult~11_combout\);

-- Location: LCCOMB_X50_Y29_N16
\PredictedResult~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~10_combout\ = (\Predictor~164_combout\ & (((\BranchTable[13][15]~q\)))) # (!\Predictor~164_combout\ & (\BranchTable[14][15]~q\ & (\Predictor~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchTable[14][15]~q\,
	datab => \Predictor~153_combout\,
	datac => \BranchTable[13][15]~q\,
	datad => \Predictor~164_combout\,
	combout => \PredictedResult~10_combout\);

-- Location: LCCOMB_X47_Y29_N24
\PredictedResult~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~12_combout\ = (\PredictedResult~10_combout\) # ((!\Predictor~164_combout\ & (!\Predictor~153_combout\ & \PredictedResult~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Predictor~164_combout\,
	datab => \Predictor~153_combout\,
	datac => \PredictedResult~11_combout\,
	datad => \PredictedResult~10_combout\,
	combout => \PredictedResult~12_combout\);

-- Location: LCCOMB_X47_Y29_N20
\PredictedResult~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~14_combout\ = (\PredictedResult~8_combout\) # ((\PredictedResult~9_combout\) # ((\PredictedResult~13_combout\ & \PredictedResult~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PredictedResult~13_combout\,
	datab => \PredictedResult~8_combout\,
	datac => \PredictedResult~9_combout\,
	datad => \PredictedResult~12_combout\,
	combout => \PredictedResult~14_combout\);

-- Location: LCCOMB_X47_Y29_N18
\PredictedResult~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~15_combout\ = (\PredictedResult~5_combout\ & ((\PredictedResult~6_combout\) # ((\PredictedResult~23_combout\ & \PredictedResult~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PredictedResult~5_combout\,
	datab => \PredictedResult~6_combout\,
	datac => \PredictedResult~23_combout\,
	datad => \PredictedResult~14_combout\,
	combout => \PredictedResult~15_combout\);

-- Location: LCCOMB_X47_Y29_N8
\PredictedResult~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PredictedResult~22_combout\ = (\Equal0~0_combout\ & (!\reset~input_o\ & ((\PredictedResult~21_combout\) # (\PredictedResult~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \reset~input_o\,
	datac => \PredictedResult~21_combout\,
	datad => \PredictedResult~15_combout\,
	combout => \PredictedResult~22_combout\);

-- Location: FF_X47_Y29_N9
\PredictedResult~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \PredictedResult~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PredictedResult~reg0_q\);

-- Location: IOIBUF_X18_Y34_N22
\Instruction[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(0),
	o => \Instruction[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\Instruction[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(1),
	o => \Instruction[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Instruction[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(2),
	o => \Instruction[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Instruction[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(3),
	o => \Instruction[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\Instruction[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(4),
	o => \Instruction[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\Instruction[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(6),
	o => \Instruction[6]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\Instruction[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(7),
	o => \Instruction[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Instruction[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(8),
	o => \Instruction[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Instruction[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(9),
	o => \Instruction[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\Instruction[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(10),
	o => \Instruction[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\Instruction[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(11),
	o => \Instruction[11]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\Address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(0),
	o => \Address[0]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\Address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(1),
	o => \Address[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\Address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(2),
	o => \Address[2]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\Address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(3),
	o => \Address[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\Address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(4),
	o => \Address[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\Address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(5),
	o => \Address[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\Address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(6),
	o => \Address[6]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\Address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(7),
	o => \Address[7]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\Address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(8),
	o => \Address[8]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\Address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(9),
	o => \Address[9]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\Address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(10),
	o => \Address[10]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\Address[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(11),
	o => \Address[11]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Address[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(12),
	o => \Address[12]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\Address[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(13),
	o => \Address[13]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\Address[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(14),
	o => \Address[14]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\Address[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(15),
	o => \Address[15]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\ActualResult~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ActualResult,
	o => \ActualResult~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\AddressValid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddressValid,
	o => \AddressValid~input_o\);

ww_PredictedResult <= \PredictedResult~output_o\;
END structure;


