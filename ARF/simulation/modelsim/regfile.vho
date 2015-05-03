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

-- DATE "05/02/2015 18:04:07"

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

ENTITY 	regfile IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	InA : IN std_logic_vector(2 DOWNTO 0);
	InB : IN std_logic_vector(2 DOWNTO 0);
	outA : OUT std_logic_vector(19 DOWNTO 0);
	outB : OUT std_logic_vector(19 DOWNTO 0);
	data_out_RRF : IN std_logic_vector(15 DOWNTO 0);
	tag_field_RRF : IN std_logic_vector(2 DOWNTO 0);
	WritEn_ROB : IN std_logic;
	tag_in : IN std_logic_vector(2 DOWNTO 0);
	dest_addr : IN std_logic_vector(2 DOWNTO 0);
	tag_en : IN std_logic;
	busy_renamer : IN std_logic
	);
END regfile;

-- Design Ports Information
-- outA[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[13]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[16]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[18]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[19]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[11]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[14]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[17]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[19]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InA[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InA[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InA[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InB[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InB[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InB[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_field_RRF[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_field_RRF[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_field_RRF[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WritEn_ROB	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_RRF[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_addr[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_en	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_addr[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_addr[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy_renamer	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF regfile IS
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
SIGNAL ww_InA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_InB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_outA : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_outB : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_data_out_RRF : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tag_field_RRF : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_WritEn_ROB : std_logic;
SIGNAL ww_tag_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dest_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_en : std_logic;
SIGNAL ww_busy_renamer : std_logic;
SIGNAL \Mux52~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outA[0]~output_o\ : std_logic;
SIGNAL \outA[1]~output_o\ : std_logic;
SIGNAL \outA[2]~output_o\ : std_logic;
SIGNAL \outA[3]~output_o\ : std_logic;
SIGNAL \outA[4]~output_o\ : std_logic;
SIGNAL \outA[5]~output_o\ : std_logic;
SIGNAL \outA[6]~output_o\ : std_logic;
SIGNAL \outA[7]~output_o\ : std_logic;
SIGNAL \outA[8]~output_o\ : std_logic;
SIGNAL \outA[9]~output_o\ : std_logic;
SIGNAL \outA[10]~output_o\ : std_logic;
SIGNAL \outA[11]~output_o\ : std_logic;
SIGNAL \outA[12]~output_o\ : std_logic;
SIGNAL \outA[13]~output_o\ : std_logic;
SIGNAL \outA[14]~output_o\ : std_logic;
SIGNAL \outA[15]~output_o\ : std_logic;
SIGNAL \outA[16]~output_o\ : std_logic;
SIGNAL \outA[17]~output_o\ : std_logic;
SIGNAL \outA[18]~output_o\ : std_logic;
SIGNAL \outA[19]~output_o\ : std_logic;
SIGNAL \outB[0]~output_o\ : std_logic;
SIGNAL \outB[1]~output_o\ : std_logic;
SIGNAL \outB[2]~output_o\ : std_logic;
SIGNAL \outB[3]~output_o\ : std_logic;
SIGNAL \outB[4]~output_o\ : std_logic;
SIGNAL \outB[5]~output_o\ : std_logic;
SIGNAL \outB[6]~output_o\ : std_logic;
SIGNAL \outB[7]~output_o\ : std_logic;
SIGNAL \outB[8]~output_o\ : std_logic;
SIGNAL \outB[9]~output_o\ : std_logic;
SIGNAL \outB[10]~output_o\ : std_logic;
SIGNAL \outB[11]~output_o\ : std_logic;
SIGNAL \outB[12]~output_o\ : std_logic;
SIGNAL \outB[13]~output_o\ : std_logic;
SIGNAL \outB[14]~output_o\ : std_logic;
SIGNAL \outB[15]~output_o\ : std_logic;
SIGNAL \outB[16]~output_o\ : std_logic;
SIGNAL \outB[17]~output_o\ : std_logic;
SIGNAL \outB[18]~output_o\ : std_logic;
SIGNAL \outB[19]~output_o\ : std_logic;
SIGNAL \InA[0]~input_o\ : std_logic;
SIGNAL \InA[2]~input_o\ : std_logic;
SIGNAL \InA[1]~input_o\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~0clkctrl_outclk\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_out_RRF[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reg~0_combout\ : std_logic;
SIGNAL \tag_field_RRF[2]~input_o\ : std_logic;
SIGNAL \WritEn_ROB~input_o\ : std_logic;
SIGNAL \tag_in[2]~input_o\ : std_logic;
SIGNAL \tag~9_combout\ : std_logic;
SIGNAL \dest_addr[0]~input_o\ : std_logic;
SIGNAL \dest_addr[2]~input_o\ : std_logic;
SIGNAL \tag_en~input_o\ : std_logic;
SIGNAL \dest_addr[1]~input_o\ : std_logic;
SIGNAL \busy~18_combout\ : std_logic;
SIGNAL \tag[6][0]~7_combout\ : std_logic;
SIGNAL \tag[6][2]~q\ : std_logic;
SIGNAL \reg[6][6]~20_combout\ : std_logic;
SIGNAL \tag_field_RRF[0]~input_o\ : std_logic;
SIGNAL \tag_field_RRF[1]~input_o\ : std_logic;
SIGNAL \tag_in[0]~input_o\ : std_logic;
SIGNAL \tag~0_combout\ : std_logic;
SIGNAL \tag[6][0]~q\ : std_logic;
SIGNAL \tag_in[1]~input_o\ : std_logic;
SIGNAL \tag~8_combout\ : std_logic;
SIGNAL \tag[6][1]~q\ : std_logic;
SIGNAL \reg[6][6]~19_combout\ : std_logic;
SIGNAL \reg[6][6]~21_combout\ : std_logic;
SIGNAL \reg[6][0]~q\ : std_logic;
SIGNAL \reg[5][0]~feeder_combout\ : std_logic;
SIGNAL \tag[5][2]~feeder_combout\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \tag[5][0]~5_combout\ : std_logic;
SIGNAL \tag[5][2]~q\ : std_logic;
SIGNAL \reg[5][13]~2_combout\ : std_logic;
SIGNAL \tag[5][1]~feeder_combout\ : std_logic;
SIGNAL \tag[5][1]~q\ : std_logic;
SIGNAL \tag[5][0]~q\ : std_logic;
SIGNAL \reg[5][13]~1_combout\ : std_logic;
SIGNAL \reg[5][13]~3_combout\ : std_logic;
SIGNAL \reg[5][0]~q\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \busy~15_combout\ : std_logic;
SIGNAL \tag[4][0]~6_combout\ : std_logic;
SIGNAL \tag[4][2]~q\ : std_logic;
SIGNAL \reg[4][2]~17_combout\ : std_logic;
SIGNAL \tag[4][0]~q\ : std_logic;
SIGNAL \tag[4][1]~q\ : std_logic;
SIGNAL \reg[4][2]~16_combout\ : std_logic;
SIGNAL \reg[4][2]~18_combout\ : std_logic;
SIGNAL \reg[4][0]~q\ : std_logic;
SIGNAL \tag[3][2]~feeder_combout\ : std_logic;
SIGNAL \busy~12_combout\ : std_logic;
SIGNAL \tag[3][0]~4_combout\ : std_logic;
SIGNAL \tag[3][2]~q\ : std_logic;
SIGNAL \reg[3][13]~14_combout\ : std_logic;
SIGNAL \tag[3][0]~q\ : std_logic;
SIGNAL \tag[3][1]~q\ : std_logic;
SIGNAL \reg[3][13]~13_combout\ : std_logic;
SIGNAL \reg[3][13]~15_combout\ : std_logic;
SIGNAL \reg[3][0]~q\ : std_logic;
SIGNAL \busy~3_combout\ : std_logic;
SIGNAL \tag[2][0]~2_combout\ : std_logic;
SIGNAL \tag[2][2]~q\ : std_logic;
SIGNAL \reg[2][2]~5_combout\ : std_logic;
SIGNAL \tag[2][1]~feeder_combout\ : std_logic;
SIGNAL \tag[2][1]~q\ : std_logic;
SIGNAL \tag[2][0]~q\ : std_logic;
SIGNAL \reg[2][2]~4_combout\ : std_logic;
SIGNAL \reg[2][2]~6_combout\ : std_logic;
SIGNAL \reg[2][0]~q\ : std_logic;
SIGNAL \busy~6_combout\ : std_logic;
SIGNAL \tag[1][0]~1_combout\ : std_logic;
SIGNAL \tag[1][2]~q\ : std_logic;
SIGNAL \reg[1][5]~8_combout\ : std_logic;
SIGNAL \tag[1][1]~q\ : std_logic;
SIGNAL \tag[1][0]~q\ : std_logic;
SIGNAL \reg[1][5]~7_combout\ : std_logic;
SIGNAL \reg[1][5]~9_combout\ : std_logic;
SIGNAL \reg[1][0]~q\ : std_logic;
SIGNAL \busy~9_combout\ : std_logic;
SIGNAL \tag[0][2]~3_combout\ : std_logic;
SIGNAL \tag[0][2]~q\ : std_logic;
SIGNAL \reg[0][6]~11_combout\ : std_logic;
SIGNAL \tag[0][1]~q\ : std_logic;
SIGNAL \tag[0][0]~q\ : std_logic;
SIGNAL \reg[0][6]~10_combout\ : std_logic;
SIGNAL \reg[0][6]~12_combout\ : std_logic;
SIGNAL \reg[0][0]~q\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \data_out_RRF[1]~input_o\ : std_logic;
SIGNAL \reg~22_combout\ : std_logic;
SIGNAL \reg[6][1]~feeder_combout\ : std_logic;
SIGNAL \reg[6][1]~q\ : std_logic;
SIGNAL \reg[4][1]~q\ : std_logic;
SIGNAL \reg[5][1]~feeder_combout\ : std_logic;
SIGNAL \reg[5][1]~q\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \reg[1][1]~q\ : std_logic;
SIGNAL \reg[3][1]~q\ : std_logic;
SIGNAL \reg[2][1]~q\ : std_logic;
SIGNAL \reg[0][1]~q\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \data_out_RRF[2]~input_o\ : std_logic;
SIGNAL \reg~23_combout\ : std_logic;
SIGNAL \reg[6][2]~q\ : std_logic;
SIGNAL \reg[5][2]~feeder_combout\ : std_logic;
SIGNAL \reg[5][2]~q\ : std_logic;
SIGNAL \reg[4][2]~q\ : std_logic;
SIGNAL \reg[3][2]~q\ : std_logic;
SIGNAL \reg[2][2]~q\ : std_logic;
SIGNAL \reg[0][2]~q\ : std_logic;
SIGNAL \reg[1][2]~q\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \data_out_RRF[3]~input_o\ : std_logic;
SIGNAL \reg~24_combout\ : std_logic;
SIGNAL \reg[2][3]~q\ : std_logic;
SIGNAL \reg[0][3]~q\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \reg[3][3]~q\ : std_logic;
SIGNAL \reg[1][3]~q\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \reg[6][3]~feeder_combout\ : std_logic;
SIGNAL \reg[6][3]~q\ : std_logic;
SIGNAL \reg[4][3]~q\ : std_logic;
SIGNAL \reg[5][3]~feeder_combout\ : std_logic;
SIGNAL \reg[5][3]~q\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \data_out_RRF[4]~input_o\ : std_logic;
SIGNAL \reg~25_combout\ : std_logic;
SIGNAL \reg[5][4]~feeder_combout\ : std_logic;
SIGNAL \reg[5][4]~q\ : std_logic;
SIGNAL \reg[6][4]~feeder_combout\ : std_logic;
SIGNAL \reg[6][4]~q\ : std_logic;
SIGNAL \reg[4][4]~q\ : std_logic;
SIGNAL \reg[3][4]~q\ : std_logic;
SIGNAL \reg[2][4]~q\ : std_logic;
SIGNAL \reg[1][4]~q\ : std_logic;
SIGNAL \reg[0][4]~q\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \data_out_RRF[5]~input_o\ : std_logic;
SIGNAL \reg~26_combout\ : std_logic;
SIGNAL \reg[5][5]~feeder_combout\ : std_logic;
SIGNAL \reg[5][5]~q\ : std_logic;
SIGNAL \reg[4][5]~q\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \reg[6][5]~feeder_combout\ : std_logic;
SIGNAL \reg[6][5]~q\ : std_logic;
SIGNAL \reg[1][5]~q\ : std_logic;
SIGNAL \reg[3][5]~q\ : std_logic;
SIGNAL \reg[2][5]~q\ : std_logic;
SIGNAL \reg[0][5]~q\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \data_out_RRF[6]~input_o\ : std_logic;
SIGNAL \reg~27_combout\ : std_logic;
SIGNAL \reg[5][6]~feeder_combout\ : std_logic;
SIGNAL \reg[5][6]~q\ : std_logic;
SIGNAL \reg[6][6]~q\ : std_logic;
SIGNAL \reg[4][6]~q\ : std_logic;
SIGNAL \reg[3][6]~q\ : std_logic;
SIGNAL \reg[2][6]~q\ : std_logic;
SIGNAL \reg[1][6]~q\ : std_logic;
SIGNAL \reg[0][6]~q\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \data_out_RRF[7]~input_o\ : std_logic;
SIGNAL \reg~28_combout\ : std_logic;
SIGNAL \reg[6][7]~feeder_combout\ : std_logic;
SIGNAL \reg[6][7]~q\ : std_logic;
SIGNAL \reg[2][7]~q\ : std_logic;
SIGNAL \reg[0][7]~q\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \reg[3][7]~q\ : std_logic;
SIGNAL \reg[1][7]~q\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \reg[4][7]~q\ : std_logic;
SIGNAL \reg[5][7]~feeder_combout\ : std_logic;
SIGNAL \reg[5][7]~q\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \data_out_RRF[8]~input_o\ : std_logic;
SIGNAL \reg~29_combout\ : std_logic;
SIGNAL \reg[5][8]~feeder_combout\ : std_logic;
SIGNAL \reg[5][8]~q\ : std_logic;
SIGNAL \reg[4][8]~q\ : std_logic;
SIGNAL \reg[2][8]~q\ : std_logic;
SIGNAL \reg[0][8]~q\ : std_logic;
SIGNAL \reg[1][8]~feeder_combout\ : std_logic;
SIGNAL \reg[1][8]~q\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \reg[3][8]~q\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \reg[6][8]~feeder_combout\ : std_logic;
SIGNAL \reg[6][8]~q\ : std_logic;
SIGNAL \Mux62~3_combout\ : std_logic;
SIGNAL \data_out_RRF[9]~input_o\ : std_logic;
SIGNAL \reg~30_combout\ : std_logic;
SIGNAL \reg[6][9]~feeder_combout\ : std_logic;
SIGNAL \reg[6][9]~q\ : std_logic;
SIGNAL \reg[1][9]~q\ : std_logic;
SIGNAL \reg[3][9]~q\ : std_logic;
SIGNAL \reg[2][9]~q\ : std_logic;
SIGNAL \reg[0][9]~q\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \reg[5][9]~feeder_combout\ : std_logic;
SIGNAL \reg[5][9]~q\ : std_logic;
SIGNAL \reg[4][9]~q\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \Mux63~3_combout\ : std_logic;
SIGNAL \data_out_RRF[10]~input_o\ : std_logic;
SIGNAL \reg~31_combout\ : std_logic;
SIGNAL \reg[6][10]~q\ : std_logic;
SIGNAL \reg[5][10]~feeder_combout\ : std_logic;
SIGNAL \reg[5][10]~q\ : std_logic;
SIGNAL \reg[4][10]~q\ : std_logic;
SIGNAL \reg[3][10]~q\ : std_logic;
SIGNAL \reg[2][10]~feeder_combout\ : std_logic;
SIGNAL \reg[2][10]~q\ : std_logic;
SIGNAL \reg[1][10]~feeder_combout\ : std_logic;
SIGNAL \reg[1][10]~q\ : std_logic;
SIGNAL \reg[0][10]~q\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux64~2_combout\ : std_logic;
SIGNAL \Mux64~3_combout\ : std_logic;
SIGNAL \data_out_RRF[11]~input_o\ : std_logic;
SIGNAL \reg~32_combout\ : std_logic;
SIGNAL \reg[6][11]~q\ : std_logic;
SIGNAL \reg[5][11]~feeder_combout\ : std_logic;
SIGNAL \reg[5][11]~q\ : std_logic;
SIGNAL \reg[4][11]~q\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \reg[1][11]~q\ : std_logic;
SIGNAL \reg[3][11]~q\ : std_logic;
SIGNAL \reg[2][11]~q\ : std_logic;
SIGNAL \reg[0][11]~q\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux65~3_combout\ : std_logic;
SIGNAL \data_out_RRF[12]~input_o\ : std_logic;
SIGNAL \reg~33_combout\ : std_logic;
SIGNAL \reg[6][12]~feeder_combout\ : std_logic;
SIGNAL \reg[6][12]~q\ : std_logic;
SIGNAL \reg[4][12]~q\ : std_logic;
SIGNAL \reg[2][12]~feeder_combout\ : std_logic;
SIGNAL \reg[2][12]~q\ : std_logic;
SIGNAL \reg[3][12]~feeder_combout\ : std_logic;
SIGNAL \reg[3][12]~q\ : std_logic;
SIGNAL \reg[1][12]~q\ : std_logic;
SIGNAL \reg[0][12]~q\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux66~2_combout\ : std_logic;
SIGNAL \reg[5][12]~feeder_combout\ : std_logic;
SIGNAL \reg[5][12]~q\ : std_logic;
SIGNAL \Mux66~3_combout\ : std_logic;
SIGNAL \data_out_RRF[13]~input_o\ : std_logic;
SIGNAL \reg~34_combout\ : std_logic;
SIGNAL \reg[1][13]~q\ : std_logic;
SIGNAL \reg[3][13]~q\ : std_logic;
SIGNAL \reg[2][13]~q\ : std_logic;
SIGNAL \reg[0][13]~q\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \reg[6][13]~feeder_combout\ : std_logic;
SIGNAL \reg[6][13]~q\ : std_logic;
SIGNAL \reg[4][13]~q\ : std_logic;
SIGNAL \reg[5][13]~feeder_combout\ : std_logic;
SIGNAL \reg[5][13]~q\ : std_logic;
SIGNAL \Mux67~2_combout\ : std_logic;
SIGNAL \Mux67~3_combout\ : std_logic;
SIGNAL \data_out_RRF[14]~input_o\ : std_logic;
SIGNAL \reg~35_combout\ : std_logic;
SIGNAL \reg[6][14]~feeder_combout\ : std_logic;
SIGNAL \reg[6][14]~q\ : std_logic;
SIGNAL \reg[5][14]~feeder_combout\ : std_logic;
SIGNAL \reg[5][14]~q\ : std_logic;
SIGNAL \reg[4][14]~q\ : std_logic;
SIGNAL \reg[3][14]~q\ : std_logic;
SIGNAL \reg[2][14]~feeder_combout\ : std_logic;
SIGNAL \reg[2][14]~q\ : std_logic;
SIGNAL \reg[0][14]~q\ : std_logic;
SIGNAL \reg[1][14]~feeder_combout\ : std_logic;
SIGNAL \reg[1][14]~q\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux68~3_combout\ : std_logic;
SIGNAL \data_out_RRF[15]~input_o\ : std_logic;
SIGNAL \reg~36_combout\ : std_logic;
SIGNAL \reg[4][15]~q\ : std_logic;
SIGNAL \reg[5][15]~q\ : std_logic;
SIGNAL \Mux69~4_combout\ : std_logic;
SIGNAL \reg[6][15]~feeder_combout\ : std_logic;
SIGNAL \reg[6][15]~q\ : std_logic;
SIGNAL \reg[1][15]~q\ : std_logic;
SIGNAL \reg[3][15]~q\ : std_logic;
SIGNAL \reg[2][15]~q\ : std_logic;
SIGNAL \reg[0][15]~q\ : std_logic;
SIGNAL \Mux69~2_combout\ : std_logic;
SIGNAL \Mux69~3_combout\ : std_logic;
SIGNAL \Mux69~5_combout\ : std_logic;
SIGNAL \busy_renamer~input_o\ : std_logic;
SIGNAL \busy~19_combout\ : std_logic;
SIGNAL \busy~20_combout\ : std_logic;
SIGNAL \busy~16_combout\ : std_logic;
SIGNAL \busy~17_combout\ : std_logic;
SIGNAL \busy~10_combout\ : std_logic;
SIGNAL \busy~11_combout\ : std_logic;
SIGNAL \busy~7_combout\ : std_logic;
SIGNAL \busy~8_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \busy~13_combout\ : std_logic;
SIGNAL \busy~14_combout\ : std_logic;
SIGNAL \busy~4_combout\ : std_logic;
SIGNAL \busy~5_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \busy~1_combout\ : std_logic;
SIGNAL \busy~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \busyA~combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \InB[0]~input_o\ : std_logic;
SIGNAL \InB[1]~input_o\ : std_logic;
SIGNAL \InB[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \busyB~combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL busy : std_logic_vector(6 DOWNTO 0);
SIGNAL temp_outB : std_logic_vector(19 DOWNTO 0);
SIGNAL tagB : std_logic_vector(2 DOWNTO 0);
SIGNAL temp_outA : std_logic_vector(19 DOWNTO 0);
SIGNAL tagA : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_InA <= InA;
ww_InB <= InB;
outA <= ww_outA;
outB <= ww_outB;
ww_data_out_RRF <= data_out_RRF;
ww_tag_field_RRF <= tag_field_RRF;
ww_WritEn_ROB <= WritEn_ROB;
ww_tag_in <= tag_in;
ww_dest_addr <= dest_addr;
ww_tag_en <= tag_en;
ww_busy_renamer <= busy_renamer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux52~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux52~0_combout\);

\Mux1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux1~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X53_Y13_N9
\outA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(0),
	devoe => ww_devoe,
	o => \outA[0]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\outA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(1),
	devoe => ww_devoe,
	o => \outA[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\outA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(2),
	devoe => ww_devoe,
	o => \outA[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\outA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(3),
	devoe => ww_devoe,
	o => \outA[3]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\outA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(4),
	devoe => ww_devoe,
	o => \outA[4]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\outA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(5),
	devoe => ww_devoe,
	o => \outA[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\outA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(6),
	devoe => ww_devoe,
	o => \outA[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\outA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(7),
	devoe => ww_devoe,
	o => \outA[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\outA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(8),
	devoe => ww_devoe,
	o => \outA[8]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\outA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(9),
	devoe => ww_devoe,
	o => \outA[9]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\outA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(10),
	devoe => ww_devoe,
	o => \outA[10]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\outA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(11),
	devoe => ww_devoe,
	o => \outA[11]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\outA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(12),
	devoe => ww_devoe,
	o => \outA[12]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\outA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(13),
	devoe => ww_devoe,
	o => \outA[13]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\outA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(14),
	devoe => ww_devoe,
	o => \outA[14]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\outA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outA(15),
	devoe => ww_devoe,
	o => \outA[15]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\outA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busyA~combout\,
	devoe => ww_devoe,
	o => \outA[16]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\outA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagA(0),
	devoe => ww_devoe,
	o => \outA[17]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\outA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagA(1),
	devoe => ww_devoe,
	o => \outA[18]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\outA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagA(2),
	devoe => ww_devoe,
	o => \outA[19]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\outB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(0),
	devoe => ww_devoe,
	o => \outB[0]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\outB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(1),
	devoe => ww_devoe,
	o => \outB[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\outB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(2),
	devoe => ww_devoe,
	o => \outB[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\outB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(3),
	devoe => ww_devoe,
	o => \outB[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\outB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(4),
	devoe => ww_devoe,
	o => \outB[4]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\outB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(5),
	devoe => ww_devoe,
	o => \outB[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\outB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(6),
	devoe => ww_devoe,
	o => \outB[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\outB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(7),
	devoe => ww_devoe,
	o => \outB[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\outB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(8),
	devoe => ww_devoe,
	o => \outB[8]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\outB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(9),
	devoe => ww_devoe,
	o => \outB[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\outB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(10),
	devoe => ww_devoe,
	o => \outB[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\outB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(11),
	devoe => ww_devoe,
	o => \outB[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\outB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(12),
	devoe => ww_devoe,
	o => \outB[12]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\outB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(13),
	devoe => ww_devoe,
	o => \outB[13]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\outB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(14),
	devoe => ww_devoe,
	o => \outB[14]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\outB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_outB(15),
	devoe => ww_devoe,
	o => \outB[15]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\outB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busyB~combout\,
	devoe => ww_devoe,
	o => \outB[16]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\outB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagB(0),
	devoe => ww_devoe,
	o => \outB[17]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\outB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagB(1),
	devoe => ww_devoe,
	o => \outB[18]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\outB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tagB(2),
	devoe => ww_devoe,
	o => \outB[19]~output_o\);

-- Location: IOIBUF_X45_Y34_N8
\InA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InA(0),
	o => \InA[0]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\InA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InA(2),
	o => \InA[2]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\InA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InA(1),
	o => \InA[1]~input_o\);

-- Location: LCCOMB_X44_Y31_N2
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\InA[0]~input_o\ & (\InA[2]~input_o\ & \InA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \InA[2]~input_o\,
	datad => \InA[1]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: CLKCTRL_G13
\Mux52~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux52~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux52~0clkctrl_outclk\);

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

-- Location: IOIBUF_X16_Y34_N15
\data_out_RRF[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(0),
	o => \data_out_RRF[0]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X43_Y32_N30
\reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~0_combout\ = (\data_out_RRF[0]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[0]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~0_combout\);

-- Location: IOIBUF_X49_Y34_N8
\tag_field_RRF[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_field_RRF(2),
	o => \tag_field_RRF[2]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\WritEn_ROB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WritEn_ROB,
	o => \WritEn_ROB~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\tag_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(2),
	o => \tag_in[2]~input_o\);

-- Location: LCCOMB_X45_Y30_N20
\tag~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag~9_combout\ = (\tag_in[2]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_in[2]~input_o\,
	datad => \reset~input_o\,
	combout => \tag~9_combout\);

-- Location: IOIBUF_X53_Y22_N1
\dest_addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_addr(0),
	o => \dest_addr[0]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\dest_addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_addr(2),
	o => \dest_addr[2]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\tag_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_en,
	o => \tag_en~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\dest_addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_addr(1),
	o => \dest_addr[1]~input_o\);

-- Location: LCCOMB_X44_Y30_N2
\busy~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~18_combout\ = (!\dest_addr[0]~input_o\ & (\dest_addr[2]~input_o\ & (\tag_en~input_o\ & \dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~18_combout\);

-- Location: LCCOMB_X45_Y30_N16
\tag[6][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[6][0]~7_combout\ = (\busy~18_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~18_combout\,
	datad => \reset~input_o\,
	combout => \tag[6][0]~7_combout\);

-- Location: FF_X45_Y30_N25
\tag[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~9_combout\,
	sload => VCC,
	ena => \tag[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[6][2]~q\);

-- Location: LCCOMB_X45_Y30_N26
\reg[6][6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][6]~20_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[6][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[2]~input_o\,
	datac => \WritEn_ROB~input_o\,
	datad => \tag[6][2]~q\,
	combout => \reg[6][6]~20_combout\);

-- Location: IOIBUF_X53_Y30_N8
\tag_field_RRF[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_field_RRF(0),
	o => \tag_field_RRF[0]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\tag_field_RRF[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_field_RRF(1),
	o => \tag_field_RRF[1]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\tag_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(0),
	o => \tag_in[0]~input_o\);

-- Location: LCCOMB_X45_Y30_N24
\tag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag~0_combout\ = (!\reset~input_o\ & \tag_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \tag_in[0]~input_o\,
	combout => \tag~0_combout\);

-- Location: FF_X45_Y30_N23
\tag[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[6][0]~q\);

-- Location: IOIBUF_X7_Y34_N15
\tag_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in(1),
	o => \tag_in[1]~input_o\);

-- Location: LCCOMB_X45_Y30_N10
\tag~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag~8_combout\ = (\tag_in[1]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_in[1]~input_o\,
	datad => \reset~input_o\,
	combout => \tag~8_combout\);

-- Location: FF_X45_Y30_N17
\tag[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~8_combout\,
	sload => VCC,
	ena => \tag[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[6][1]~q\);

-- Location: LCCOMB_X45_Y30_N12
\reg[6][6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][6]~19_combout\ = (\tag_field_RRF[0]~input_o\ & ((\tag_field_RRF[1]~input_o\ $ (\tag[6][1]~q\)) # (!\tag[6][0]~q\))) # (!\tag_field_RRF[0]~input_o\ & ((\tag[6][0]~q\) # (\tag_field_RRF[1]~input_o\ $ (\tag[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[0]~input_o\,
	datab => \tag_field_RRF[1]~input_o\,
	datac => \tag[6][0]~q\,
	datad => \tag[6][1]~q\,
	combout => \reg[6][6]~19_combout\);

-- Location: LCCOMB_X45_Y30_N28
\reg[6][6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][6]~21_combout\ = (\reset~input_o\) # ((!\reg[6][6]~20_combout\ & !\reg[6][6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg[6][6]~20_combout\,
	datad => \reg[6][6]~19_combout\,
	combout => \reg[6][6]~21_combout\);

-- Location: FF_X43_Y30_N21
\reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][0]~q\);

-- Location: LCCOMB_X47_Y31_N2
\reg[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][0]~feeder_combout\ = \reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~0_combout\,
	combout => \reg[5][0]~feeder_combout\);

-- Location: LCCOMB_X48_Y31_N18
\tag[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[5][2]~feeder_combout\ = \tag~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag~9_combout\,
	combout => \tag[5][2]~feeder_combout\);

-- Location: LCCOMB_X44_Y30_N26
\busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = (\dest_addr[0]~input_o\ & (\dest_addr[2]~input_o\ & (\tag_en~input_o\ & !\dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~0_combout\);

-- Location: LCCOMB_X47_Y31_N20
\tag[5][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[5][0]~5_combout\ = (\busy~0_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \busy~0_combout\,
	datad => \reset~input_o\,
	combout => \tag[5][0]~5_combout\);

-- Location: FF_X48_Y31_N19
\tag[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag[5][2]~feeder_combout\,
	ena => \tag[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[5][2]~q\);

-- Location: LCCOMB_X48_Y31_N8
\reg[5][13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][13]~2_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[5][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_field_RRF[2]~input_o\,
	datac => \WritEn_ROB~input_o\,
	datad => \tag[5][2]~q\,
	combout => \reg[5][13]~2_combout\);

-- Location: LCCOMB_X46_Y30_N8
\tag[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[5][1]~feeder_combout\ = \tag~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag~8_combout\,
	combout => \tag[5][1]~feeder_combout\);

-- Location: FF_X46_Y30_N9
\tag[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag[5][1]~feeder_combout\,
	ena => \tag[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[5][1]~q\);

-- Location: FF_X46_Y30_N11
\tag[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[5][0]~q\);

-- Location: LCCOMB_X46_Y30_N22
\reg[5][13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][13]~1_combout\ = (\tag_field_RRF[1]~input_o\ & ((\tag_field_RRF[0]~input_o\ $ (\tag[5][0]~q\)) # (!\tag[5][1]~q\))) # (!\tag_field_RRF[1]~input_o\ & ((\tag[5][1]~q\) # (\tag_field_RRF[0]~input_o\ $ (\tag[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[1]~input_o\,
	datab => \tag_field_RRF[0]~input_o\,
	datac => \tag[5][1]~q\,
	datad => \tag[5][0]~q\,
	combout => \reg[5][13]~1_combout\);

-- Location: LCCOMB_X47_Y31_N4
\reg[5][13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][13]~3_combout\ = (\reset~input_o\) # ((!\reg[5][13]~2_combout\ & !\reg[5][13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg[5][13]~2_combout\,
	datad => \reg[5][13]~1_combout\,
	combout => \reg[5][13]~3_combout\);

-- Location: FF_X47_Y31_N3
\reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][0]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][0]~q\);

-- Location: LCCOMB_X44_Y31_N10
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\InA[2]~input_o\ & ((\InA[0]~input_o\) # (\InA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \InA[2]~input_o\,
	datac => \InA[1]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X44_Y31_N0
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\InA[1]~input_o\) # (!\InA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[2]~input_o\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X44_Y30_N20
\busy~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~15_combout\ = (!\dest_addr[0]~input_o\ & (\dest_addr[2]~input_o\ & (\tag_en~input_o\ & !\dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~15_combout\);

-- Location: LCCOMB_X44_Y30_N6
\tag[4][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[4][0]~6_combout\ = (\busy~15_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~15_combout\,
	datad => \reset~input_o\,
	combout => \tag[4][0]~6_combout\);

-- Location: FF_X46_Y31_N27
\tag[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~9_combout\,
	sload => VCC,
	ena => \tag[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[4][2]~q\);

-- Location: LCCOMB_X46_Y31_N26
\reg[4][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[4][2]~17_combout\ = (\tag[4][2]~q\ $ (\tag_field_RRF[2]~input_o\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WritEn_ROB~input_o\,
	datac => \tag[4][2]~q\,
	datad => \tag_field_RRF[2]~input_o\,
	combout => \reg[4][2]~17_combout\);

-- Location: FF_X46_Y31_N19
\tag[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[4][0]~q\);

-- Location: FF_X46_Y31_N29
\tag[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~8_combout\,
	sload => VCC,
	ena => \tag[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[4][1]~q\);

-- Location: LCCOMB_X46_Y31_N18
\reg[4][2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[4][2]~16_combout\ = (\tag_field_RRF[0]~input_o\ & ((\tag_field_RRF[1]~input_o\ $ (\tag[4][1]~q\)) # (!\tag[4][0]~q\))) # (!\tag_field_RRF[0]~input_o\ & ((\tag[4][0]~q\) # (\tag_field_RRF[1]~input_o\ $ (\tag[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[0]~input_o\,
	datab => \tag_field_RRF[1]~input_o\,
	datac => \tag[4][0]~q\,
	datad => \tag[4][1]~q\,
	combout => \reg[4][2]~16_combout\);

-- Location: LCCOMB_X46_Y31_N0
\reg[4][2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[4][2]~18_combout\ = (\reset~input_o\) # ((!\reg[4][2]~17_combout\ & !\reg[4][2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg[4][2]~17_combout\,
	datad => \reg[4][2]~16_combout\,
	combout => \reg[4][2]~18_combout\);

-- Location: FF_X46_Y31_N21
\reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][0]~q\);

-- Location: LCCOMB_X48_Y31_N24
\tag[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[3][2]~feeder_combout\ = \tag~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag~9_combout\,
	combout => \tag[3][2]~feeder_combout\);

-- Location: LCCOMB_X44_Y30_N10
\busy~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~12_combout\ = (\dest_addr[0]~input_o\ & (!\dest_addr[2]~input_o\ & (\tag_en~input_o\ & \dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~12_combout\);

-- Location: LCCOMB_X44_Y30_N0
\tag[3][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[3][0]~4_combout\ = (\busy~12_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~12_combout\,
	datad => \reset~input_o\,
	combout => \tag[3][0]~4_combout\);

-- Location: FF_X48_Y31_N25
\tag[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag[3][2]~feeder_combout\,
	ena => \tag[3][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[3][2]~q\);

-- Location: LCCOMB_X48_Y31_N30
\reg[3][13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][13]~14_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[3][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_field_RRF[2]~input_o\,
	datac => \WritEn_ROB~input_o\,
	datad => \tag[3][2]~q\,
	combout => \reg[3][13]~14_combout\);

-- Location: FF_X44_Y30_N23
\tag[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[3][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[3][0]~q\);

-- Location: FF_X44_Y30_N7
\tag[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~8_combout\,
	sload => VCC,
	ena => \tag[3][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[3][1]~q\);

-- Location: LCCOMB_X44_Y30_N24
\reg[3][13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][13]~13_combout\ = (\tag_field_RRF[0]~input_o\ & ((\tag_field_RRF[1]~input_o\ $ (\tag[3][1]~q\)) # (!\tag[3][0]~q\))) # (!\tag_field_RRF[0]~input_o\ & ((\tag[3][0]~q\) # (\tag_field_RRF[1]~input_o\ $ (\tag[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[0]~input_o\,
	datab => \tag_field_RRF[1]~input_o\,
	datac => \tag[3][0]~q\,
	datad => \tag[3][1]~q\,
	combout => \reg[3][13]~13_combout\);

-- Location: LCCOMB_X45_Y31_N16
\reg[3][13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][13]~15_combout\ = (\reset~input_o\) # ((!\reg[3][13]~14_combout\ & !\reg[3][13]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][13]~14_combout\,
	datab => \reset~input_o\,
	datad => \reg[3][13]~13_combout\,
	combout => \reg[3][13]~15_combout\);

-- Location: FF_X45_Y31_N25
\reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][0]~q\);

-- Location: LCCOMB_X44_Y30_N16
\busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~3_combout\ = (!\dest_addr[0]~input_o\ & (!\dest_addr[2]~input_o\ & (\tag_en~input_o\ & \dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~3_combout\);

-- Location: LCCOMB_X46_Y30_N18
\tag[2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[2][0]~2_combout\ = (\reset~input_o\) # (\busy~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \busy~3_combout\,
	combout => \tag[2][0]~2_combout\);

-- Location: FF_X46_Y30_N19
\tag[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~9_combout\,
	sload => VCC,
	ena => \tag[2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[2][2]~q\);

-- Location: LCCOMB_X46_Y30_N30
\reg[2][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][2]~5_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[2][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[2]~input_o\,
	datab => \WritEn_ROB~input_o\,
	datad => \tag[2][2]~q\,
	combout => \reg[2][2]~5_combout\);

-- Location: LCCOMB_X46_Y30_N26
\tag[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[2][1]~feeder_combout\ = \tag~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag~8_combout\,
	combout => \tag[2][1]~feeder_combout\);

-- Location: FF_X46_Y30_N27
\tag[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag[2][1]~feeder_combout\,
	ena => \tag[2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[2][1]~q\);

-- Location: FF_X46_Y30_N17
\tag[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[2][0]~q\);

-- Location: LCCOMB_X46_Y30_N24
\reg[2][2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][2]~4_combout\ = (\tag_field_RRF[1]~input_o\ & ((\tag_field_RRF[0]~input_o\ $ (\tag[2][0]~q\)) # (!\tag[2][1]~q\))) # (!\tag_field_RRF[1]~input_o\ & ((\tag[2][1]~q\) # (\tag_field_RRF[0]~input_o\ $ (\tag[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[1]~input_o\,
	datab => \tag_field_RRF[0]~input_o\,
	datac => \tag[2][1]~q\,
	datad => \tag[2][0]~q\,
	combout => \reg[2][2]~4_combout\);

-- Location: LCCOMB_X46_Y30_N0
\reg[2][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][2]~6_combout\ = (\reset~input_o\) # ((!\reg[2][2]~5_combout\ & !\reg[2][2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg[2][2]~5_combout\,
	datad => \reg[2][2]~4_combout\,
	combout => \reg[2][2]~6_combout\);

-- Location: FF_X45_Y31_N1
\reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][0]~q\);

-- Location: LCCOMB_X44_Y30_N18
\busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~6_combout\ = (\dest_addr[0]~input_o\ & (!\dest_addr[2]~input_o\ & (\tag_en~input_o\ & !\dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~6_combout\);

-- Location: LCCOMB_X45_Y30_N22
\tag[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[1][0]~1_combout\ = (\busy~6_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~6_combout\,
	datad => \reset~input_o\,
	combout => \tag[1][0]~1_combout\);

-- Location: FF_X45_Y30_N11
\tag[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~9_combout\,
	sload => VCC,
	ena => \tag[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[1][2]~q\);

-- Location: LCCOMB_X45_Y30_N8
\reg[1][5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][5]~8_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[1][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[2]~input_o\,
	datac => \WritEn_ROB~input_o\,
	datad => \tag[1][2]~q\,
	combout => \reg[1][5]~8_combout\);

-- Location: FF_X45_Y30_N5
\tag[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~8_combout\,
	sload => VCC,
	ena => \tag[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[1][1]~q\);

-- Location: FF_X45_Y30_N21
\tag[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[1][0]~q\);

-- Location: LCCOMB_X45_Y30_N18
\reg[1][5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][5]~7_combout\ = (\tag_field_RRF[0]~input_o\ & ((\tag_field_RRF[1]~input_o\ $ (\tag[1][1]~q\)) # (!\tag[1][0]~q\))) # (!\tag_field_RRF[0]~input_o\ & ((\tag[1][0]~q\) # (\tag_field_RRF[1]~input_o\ $ (\tag[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[0]~input_o\,
	datab => \tag_field_RRF[1]~input_o\,
	datac => \tag[1][1]~q\,
	datad => \tag[1][0]~q\,
	combout => \reg[1][5]~7_combout\);

-- Location: LCCOMB_X45_Y30_N6
\reg[1][5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][5]~9_combout\ = (\reset~input_o\) # ((!\reg[1][5]~8_combout\ & !\reg[1][5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg[1][5]~8_combout\,
	datad => \reg[1][5]~7_combout\,
	combout => \reg[1][5]~9_combout\);

-- Location: FF_X45_Y32_N1
\reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][0]~q\);

-- Location: LCCOMB_X44_Y30_N12
\busy~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~9_combout\ = (!\dest_addr[0]~input_o\ & (!\dest_addr[2]~input_o\ & (\tag_en~input_o\ & !\dest_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_addr[0]~input_o\,
	datab => \dest_addr[2]~input_o\,
	datac => \tag_en~input_o\,
	datad => \dest_addr[1]~input_o\,
	combout => \busy~9_combout\);

-- Location: LCCOMB_X44_Y30_N22
\tag[0][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag[0][2]~3_combout\ = (\busy~9_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~9_combout\,
	datad => \reset~input_o\,
	combout => \tag[0][2]~3_combout\);

-- Location: FF_X44_Y30_N29
\tag[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~9_combout\,
	sload => VCC,
	ena => \tag[0][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[0][2]~q\);

-- Location: LCCOMB_X44_Y30_N30
\reg[0][6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[0][6]~11_combout\ = (\tag_field_RRF[2]~input_o\ $ (\tag[0][2]~q\)) # (!\WritEn_ROB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WritEn_ROB~input_o\,
	datac => \tag_field_RRF[2]~input_o\,
	datad => \tag[0][2]~q\,
	combout => \reg[0][6]~11_combout\);

-- Location: FF_X44_Y30_N9
\tag[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~8_combout\,
	sload => VCC,
	ena => \tag[0][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[0][1]~q\);

-- Location: FF_X44_Y30_N1
\tag[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \tag~0_combout\,
	sload => VCC,
	ena => \tag[0][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag[0][0]~q\);

-- Location: LCCOMB_X44_Y30_N4
\reg[0][6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[0][6]~10_combout\ = (\tag_field_RRF[0]~input_o\ & ((\tag_field_RRF[1]~input_o\ $ (\tag[0][1]~q\)) # (!\tag[0][0]~q\))) # (!\tag_field_RRF[0]~input_o\ & ((\tag[0][0]~q\) # (\tag_field_RRF[1]~input_o\ $ (\tag[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_field_RRF[0]~input_o\,
	datab => \tag_field_RRF[1]~input_o\,
	datac => \tag[0][1]~q\,
	datad => \tag[0][0]~q\,
	combout => \reg[0][6]~10_combout\);

-- Location: LCCOMB_X45_Y32_N2
\reg[0][6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[0][6]~12_combout\ = (\reset~input_o\) # ((!\reg[0][6]~11_combout\ & !\reg[0][6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg[0][6]~11_combout\,
	datad => \reg[0][6]~10_combout\,
	combout => \reg[0][6]~12_combout\);

-- Location: FF_X45_Y32_N19
\reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~0_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][0]~q\);

-- Location: LCCOMB_X45_Y31_N6
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\InA[1]~input_o\ & (\InA[0]~input_o\)) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\reg[1][0]~q\)) # (!\InA[0]~input_o\ & ((\reg[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[1][0]~q\,
	datad => \reg[0][0]~q\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X45_Y31_N0
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\InA[1]~input_o\ & ((\Mux54~0_combout\ & (\reg[3][0]~q\)) # (!\Mux54~0_combout\ & ((\reg[2][0]~q\))))) # (!\InA[1]~input_o\ & (((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[3][0]~q\,
	datac => \reg[2][0]~q\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X44_Y32_N0
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux69~0_combout\ & (\Mux69~1_combout\)) # (!\Mux69~0_combout\ & ((\Mux69~1_combout\ & ((\Mux54~1_combout\))) # (!\Mux69~1_combout\ & (\reg[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \Mux69~1_combout\,
	datac => \reg[4][0]~q\,
	datad => \Mux54~1_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X44_Y32_N6
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux69~0_combout\ & ((\Mux54~2_combout\ & (\reg[6][0]~q\)) # (!\Mux54~2_combout\ & ((\reg[5][0]~q\))))) # (!\Mux69~0_combout\ & (((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][0]~q\,
	datab => \reg[5][0]~q\,
	datac => \Mux69~0_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X44_Y32_N16
\temp_outA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(0) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(0))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux54~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0clkctrl_outclk\,
	datab => temp_outA(0),
	datad => \Mux54~3_combout\,
	combout => temp_outA(0));

-- Location: IOIBUF_X9_Y34_N22
\data_out_RRF[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(1),
	o => \data_out_RRF[1]~input_o\);

-- Location: LCCOMB_X43_Y32_N16
\reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~22_combout\ = (\data_out_RRF[1]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[1]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~22_combout\);

-- Location: LCCOMB_X43_Y30_N22
\reg[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][1]~feeder_combout\ = \reg~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~22_combout\,
	combout => \reg[6][1]~feeder_combout\);

-- Location: FF_X43_Y30_N23
\reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][1]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][1]~q\);

-- Location: FF_X46_Y31_N11
\reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~22_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][1]~q\);

-- Location: LCCOMB_X47_Y31_N0
\reg[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][1]~feeder_combout\ = \reg~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~22_combout\,
	combout => \reg[5][1]~feeder_combout\);

-- Location: FF_X47_Y31_N1
\reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][1]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][1]~q\);

-- Location: LCCOMB_X47_Y31_N26
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux69~0_combout\ & (((\reg[5][1]~q\) # (\Mux69~1_combout\)))) # (!\Mux69~0_combout\ & (\reg[4][1]~q\ & ((!\Mux69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][1]~q\,
	datab => \Mux69~0_combout\,
	datac => \reg[5][1]~q\,
	datad => \Mux69~1_combout\,
	combout => \Mux55~2_combout\);

-- Location: FF_X44_Y31_N21
\reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~22_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][1]~q\);

-- Location: FF_X43_Y31_N29
\reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~22_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][1]~q\);

-- Location: FF_X44_Y31_N1
\reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~22_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][1]~q\);

-- Location: FF_X45_Y32_N25
\reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~22_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][1]~q\);

-- Location: LCCOMB_X44_Y31_N18
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\InA[1]~input_o\ & ((\reg[2][1]~q\) # ((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & (((!\InA[0]~input_o\ & \reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[2][1]~q\,
	datac => \InA[0]~input_o\,
	datad => \reg[0][1]~q\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X43_Y31_N28
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\InA[0]~input_o\ & ((\Mux55~0_combout\ & ((\reg[3][1]~q\))) # (!\Mux55~0_combout\ & (\reg[1][1]~q\)))) # (!\InA[0]~input_o\ & (((\Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \reg[1][1]~q\,
	datac => \reg[3][1]~q\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X43_Y31_N26
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux69~1_combout\ & ((\Mux55~2_combout\ & (\reg[6][1]~q\)) # (!\Mux55~2_combout\ & ((\Mux55~1_combout\))))) # (!\Mux69~1_combout\ & (((\Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][1]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux55~2_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X43_Y31_N10
\temp_outA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(1) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(1))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux55~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(1),
	datac => \Mux55~3_combout\,
	datad => \Mux52~0clkctrl_outclk\,
	combout => temp_outA(1));

-- Location: IOIBUF_X16_Y34_N1
\data_out_RRF[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(2),
	o => \data_out_RRF[2]~input_o\);

-- Location: LCCOMB_X43_Y32_N6
\reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~23_combout\ = (\data_out_RRF[2]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out_RRF[2]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~23_combout\);

-- Location: FF_X43_Y30_N9
\reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][2]~q\);

-- Location: LCCOMB_X47_Y31_N8
\reg[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][2]~feeder_combout\ = \reg~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg~23_combout\,
	combout => \reg[5][2]~feeder_combout\);

-- Location: FF_X47_Y31_N9
\reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][2]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][2]~q\);

-- Location: FF_X41_Y31_N29
\reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][2]~q\);

-- Location: FF_X45_Y31_N17
\reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][2]~q\);

-- Location: FF_X45_Y31_N23
\reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][2]~q\);

-- Location: FF_X45_Y32_N5
\reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][2]~q\);

-- Location: FF_X45_Y32_N31
\reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~23_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][2]~q\);

-- Location: LCCOMB_X45_Y32_N30
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\InA[0]~input_o\ & (((\reg[1][2]~q\) # (\InA[1]~input_o\)))) # (!\InA[0]~input_o\ & (\reg[0][2]~q\ & ((!\InA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \reg[0][2]~q\,
	datac => \reg[1][2]~q\,
	datad => \InA[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X45_Y31_N22
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\InA[1]~input_o\ & ((\Mux56~0_combout\ & (\reg[3][2]~q\)) # (!\Mux56~0_combout\ & ((\reg[2][2]~q\))))) # (!\InA[1]~input_o\ & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][2]~q\,
	datab => \InA[1]~input_o\,
	datac => \reg[2][2]~q\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X40_Y31_N16
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\) # (\Mux56~1_combout\)))) # (!\Mux69~1_combout\ & (\reg[4][2]~q\ & (!\Mux69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][2]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux69~0_combout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X40_Y31_N2
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux69~0_combout\ & ((\Mux56~2_combout\ & (\reg[6][2]~q\)) # (!\Mux56~2_combout\ & ((\reg[5][2]~q\))))) # (!\Mux69~0_combout\ & (((\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \reg[6][2]~q\,
	datac => \reg[5][2]~q\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X40_Y31_N4
\temp_outA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(2) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(2))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outA(2),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux56~3_combout\,
	combout => temp_outA(2));

-- Location: IOIBUF_X14_Y34_N22
\data_out_RRF[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(3),
	o => \data_out_RRF[3]~input_o\);

-- Location: LCCOMB_X43_Y32_N24
\reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~24_combout\ = (\data_out_RRF[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out_RRF[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~24_combout\);

-- Location: FF_X43_Y31_N21
\reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~24_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][3]~q\);

-- Location: FF_X43_Y32_N9
\reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~24_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][3]~q\);

-- Location: LCCOMB_X43_Y31_N20
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\reg[2][3]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\reg[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[2][3]~q\,
	datad => \reg[0][3]~q\,
	combout => \Mux57~0_combout\);

-- Location: FF_X43_Y31_N15
\reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~24_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][3]~q\);

-- Location: FF_X44_Y31_N29
\reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~24_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][3]~q\);

-- Location: LCCOMB_X43_Y31_N14
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\InA[0]~input_o\ & ((\Mux57~0_combout\ & (\reg[3][3]~q\)) # (!\Mux57~0_combout\ & ((\reg[1][3]~q\))))) # (!\InA[0]~input_o\ & (\Mux57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \reg[3][3]~q\,
	datad => \reg[1][3]~q\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X43_Y30_N14
\reg[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][3]~feeder_combout\ = \reg~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~24_combout\,
	combout => \reg[6][3]~feeder_combout\);

-- Location: FF_X43_Y30_N15
\reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][3]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][3]~q\);

-- Location: FF_X46_Y31_N9
\reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~24_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][3]~q\);

-- Location: LCCOMB_X41_Y31_N30
\reg[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][3]~feeder_combout\ = \reg~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~24_combout\,
	combout => \reg[5][3]~feeder_combout\);

-- Location: FF_X41_Y31_N31
\reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][3]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][3]~q\);

-- Location: LCCOMB_X41_Y31_N16
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux69~0_combout\ & (((\reg[5][3]~q\) # (\Mux69~1_combout\)))) # (!\Mux69~0_combout\ & (\reg[4][3]~q\ & ((!\Mux69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][3]~q\,
	datab => \Mux69~0_combout\,
	datac => \reg[5][3]~q\,
	datad => \Mux69~1_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X43_Y31_N4
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux69~1_combout\ & ((\Mux57~2_combout\ & ((\reg[6][3]~q\))) # (!\Mux57~2_combout\ & (\Mux57~1_combout\)))) # (!\Mux69~1_combout\ & (((\Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux57~1_combout\,
	datac => \reg[6][3]~q\,
	datad => \Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X43_Y31_N24
\temp_outA[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(3) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(3))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux57~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outA(3),
	datac => \Mux57~3_combout\,
	datad => \Mux52~0clkctrl_outclk\,
	combout => temp_outA(3));

-- Location: IOIBUF_X43_Y0_N22
\data_out_RRF[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(4),
	o => \data_out_RRF[4]~input_o\);

-- Location: LCCOMB_X43_Y32_N22
\reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~25_combout\ = (\data_out_RRF[4]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[4]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~25_combout\);

-- Location: LCCOMB_X47_Y31_N14
\reg[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][4]~feeder_combout\ = \reg~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~25_combout\,
	combout => \reg[5][4]~feeder_combout\);

-- Location: FF_X47_Y31_N15
\reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][4]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][4]~q\);

-- Location: LCCOMB_X43_Y30_N0
\reg[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][4]~feeder_combout\ = \reg~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~25_combout\,
	combout => \reg[6][4]~feeder_combout\);

-- Location: FF_X43_Y30_N1
\reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][4]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][4]~q\);

-- Location: FF_X46_Y31_N15
\reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~25_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][4]~q\);

-- Location: FF_X45_Y31_N15
\reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~25_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][4]~q\);

-- Location: FF_X44_Y31_N31
\reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~25_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][4]~q\);

-- Location: FF_X44_Y31_N3
\reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~25_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][4]~q\);

-- Location: FF_X44_Y33_N5
\reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~25_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][4]~q\);

-- Location: LCCOMB_X44_Y31_N8
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\InA[1]~input_o\ & (\InA[0]~input_o\)) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\reg[1][4]~q\)) # (!\InA[0]~input_o\ & ((\reg[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[1][4]~q\,
	datad => \reg[0][4]~q\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X44_Y31_N30
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\InA[1]~input_o\ & ((\Mux58~0_combout\ & (\reg[3][4]~q\)) # (!\Mux58~0_combout\ & ((\reg[2][4]~q\))))) # (!\InA[1]~input_o\ & (((\Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[3][4]~q\,
	datac => \reg[2][4]~q\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X44_Y31_N22
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux69~1_combout\ & (((\Mux58~1_combout\) # (\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & (\reg[4][4]~q\ & ((!\Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][4]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux58~1_combout\,
	datad => \Mux69~0_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X44_Y31_N4
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux58~2_combout\ & (((\reg[6][4]~q\) # (!\Mux69~0_combout\)))) # (!\Mux58~2_combout\ & (\reg[5][4]~q\ & ((\Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[5][4]~q\,
	datab => \reg[6][4]~q\,
	datac => \Mux58~2_combout\,
	datad => \Mux69~0_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X44_Y31_N6
\temp_outA[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(4) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(4))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(4),
	datac => \Mux58~3_combout\,
	datad => \Mux52~0clkctrl_outclk\,
	combout => temp_outA(4));

-- Location: IOIBUF_X20_Y34_N15
\data_out_RRF[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(5),
	o => \data_out_RRF[5]~input_o\);

-- Location: LCCOMB_X44_Y32_N28
\reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~26_combout\ = (!\reset~input_o\ & \data_out_RRF[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data_out_RRF[5]~input_o\,
	combout => \reg~26_combout\);

-- Location: LCCOMB_X43_Y33_N0
\reg[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][5]~feeder_combout\ = \reg~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~26_combout\,
	combout => \reg[5][5]~feeder_combout\);

-- Location: FF_X43_Y33_N1
\reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][5]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][5]~q\);

-- Location: FF_X45_Y33_N5
\reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~26_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][5]~q\);

-- Location: LCCOMB_X43_Y33_N22
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux69~0_combout\ & ((\reg[5][5]~q\) # ((\Mux69~1_combout\)))) # (!\Mux69~0_combout\ & (((\reg[4][5]~q\ & !\Mux69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[5][5]~q\,
	datab => \Mux69~0_combout\,
	datac => \reg[4][5]~q\,
	datad => \Mux69~1_combout\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X43_Y32_N2
\reg[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][5]~feeder_combout\ = \reg~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~26_combout\,
	combout => \reg[6][5]~feeder_combout\);

-- Location: FF_X43_Y32_N3
\reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][5]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][5]~q\);

-- Location: FF_X45_Y32_N27
\reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~26_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][5]~q\);

-- Location: FF_X45_Y31_N31
\reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~26_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][5]~q\);

-- Location: FF_X45_Y31_N13
\reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~26_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][5]~q\);

-- Location: FF_X45_Y32_N13
\reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~26_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][5]~q\);

-- Location: LCCOMB_X45_Y31_N12
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\reg[2][5]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[2][5]~q\,
	datad => \reg[0][5]~q\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X45_Y31_N30
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\InA[0]~input_o\ & ((\Mux59~0_combout\ & ((\reg[3][5]~q\))) # (!\Mux59~0_combout\ & (\reg[1][5]~q\)))) # (!\InA[0]~input_o\ & (((\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][5]~q\,
	datab => \InA[0]~input_o\,
	datac => \reg[3][5]~q\,
	datad => \Mux59~0_combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X43_Y33_N24
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux59~2_combout\ & ((\reg[6][5]~q\) # ((!\Mux69~1_combout\)))) # (!\Mux59~2_combout\ & (((\Mux69~1_combout\ & \Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~2_combout\,
	datab => \reg[6][5]~q\,
	datac => \Mux69~1_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X43_Y33_N20
\temp_outA[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(5) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(5))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux59~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outA(5),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux59~3_combout\,
	combout => temp_outA(5));

-- Location: IOIBUF_X43_Y34_N15
\data_out_RRF[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(6),
	o => \data_out_RRF[6]~input_o\);

-- Location: LCCOMB_X43_Y32_N8
\reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~27_combout\ = (\data_out_RRF[6]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[6]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~27_combout\);

-- Location: LCCOMB_X47_Y31_N16
\reg[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][6]~feeder_combout\ = \reg~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~27_combout\,
	combout => \reg[5][6]~feeder_combout\);

-- Location: FF_X47_Y31_N17
\reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][6]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][6]~q\);

-- Location: FF_X43_Y32_N13
\reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][6]~q\);

-- Location: FF_X44_Y32_N11
\reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][6]~q\);

-- Location: FF_X44_Y32_N17
\reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][6]~q\);

-- Location: FF_X47_Y32_N17
\reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][6]~q\);

-- Location: FF_X47_Y32_N11
\reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][6]~q\);

-- Location: FF_X45_Y32_N7
\reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~27_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][6]~q\);

-- Location: LCCOMB_X47_Y32_N24
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\InA[1]~input_o\ & (((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\reg[1][6]~q\)) # (!\InA[0]~input_o\ & ((\reg[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[1][6]~q\,
	datac => \InA[0]~input_o\,
	datad => \reg[0][6]~q\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X47_Y32_N16
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\InA[1]~input_o\ & ((\Mux60~0_combout\ & (\reg[3][6]~q\)) # (!\Mux60~0_combout\ & ((\reg[2][6]~q\))))) # (!\InA[1]~input_o\ & (((\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[3][6]~q\,
	datac => \reg[2][6]~q\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X44_Y32_N20
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\Mux69~0_combout\ & (\Mux69~1_combout\)) # (!\Mux69~0_combout\ & ((\Mux69~1_combout\ & ((\Mux60~1_combout\))) # (!\Mux69~1_combout\ & (\reg[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \Mux69~1_combout\,
	datac => \reg[4][6]~q\,
	datad => \Mux60~1_combout\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X44_Y32_N18
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = (\Mux69~0_combout\ & ((\Mux60~2_combout\ & ((\reg[6][6]~q\))) # (!\Mux60~2_combout\ & (\reg[5][6]~q\)))) # (!\Mux69~0_combout\ & (((\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[5][6]~q\,
	datab => \reg[6][6]~q\,
	datac => \Mux69~0_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X44_Y32_N30
\temp_outA[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(6) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(6))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0clkctrl_outclk\,
	datac => temp_outA(6),
	datad => \Mux60~3_combout\,
	combout => temp_outA(6));

-- Location: IOIBUF_X34_Y34_N1
\data_out_RRF[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(7),
	o => \data_out_RRF[7]~input_o\);

-- Location: LCCOMB_X43_Y32_N20
\reg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~28_combout\ = (\data_out_RRF[7]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out_RRF[7]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~28_combout\);

-- Location: LCCOMB_X41_Y30_N0
\reg[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][7]~feeder_combout\ = \reg~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~28_combout\,
	combout => \reg[6][7]~feeder_combout\);

-- Location: FF_X41_Y30_N1
\reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][7]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][7]~q\);

-- Location: FF_X43_Y31_N7
\reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~28_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][7]~q\);

-- Location: FF_X45_Y32_N23
\reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~28_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][7]~q\);

-- Location: LCCOMB_X43_Y31_N16
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\InA[1]~input_o\ & ((\reg[2][7]~q\) # ((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & (((!\InA[0]~input_o\ & \reg[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][7]~q\,
	datab => \InA[1]~input_o\,
	datac => \InA[0]~input_o\,
	datad => \reg[0][7]~q\,
	combout => \Mux61~0_combout\);

-- Location: FF_X43_Y31_N19
\reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~28_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][7]~q\);

-- Location: FF_X45_Y32_N21
\reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~28_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][7]~q\);

-- Location: LCCOMB_X43_Y31_N18
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\InA[0]~input_o\ & ((\Mux61~0_combout\ & (\reg[3][7]~q\)) # (!\Mux61~0_combout\ & ((\reg[1][7]~q\))))) # (!\InA[0]~input_o\ & (\Mux61~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \Mux61~0_combout\,
	datac => \reg[3][7]~q\,
	datad => \reg[1][7]~q\,
	combout => \Mux61~1_combout\);

-- Location: FF_X45_Y33_N19
\reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~28_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][7]~q\);

-- Location: LCCOMB_X43_Y33_N30
\reg[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][7]~feeder_combout\ = \reg~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~28_combout\,
	combout => \reg[5][7]~feeder_combout\);

-- Location: FF_X43_Y33_N31
\reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][7]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][7]~q\);

-- Location: LCCOMB_X43_Y33_N28
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & ((\reg[5][7]~q\))) # (!\Mux69~0_combout\ & (\reg[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][7]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux69~0_combout\,
	datad => \reg[5][7]~q\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X43_Y31_N12
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\Mux69~1_combout\ & ((\Mux61~2_combout\ & (\reg[6][7]~q\)) # (!\Mux61~2_combout\ & ((\Mux61~1_combout\))))) # (!\Mux69~1_combout\ & (((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \reg[6][7]~q\,
	datac => \Mux61~1_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X43_Y31_N30
\temp_outA[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(7) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(7))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux61~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(7),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux61~3_combout\,
	combout => temp_outA(7));

-- Location: IOIBUF_X43_Y34_N22
\data_out_RRF[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(8),
	o => \data_out_RRF[8]~input_o\);

-- Location: LCCOMB_X43_Y30_N24
\reg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~29_combout\ = (\data_out_RRF[8]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out_RRF[8]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~29_combout\);

-- Location: LCCOMB_X47_Y31_N22
\reg[5][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][8]~feeder_combout\ = \reg~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg~29_combout\,
	combout => \reg[5][8]~feeder_combout\);

-- Location: FF_X47_Y31_N23
\reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][8]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][8]~q\);

-- Location: FF_X46_Y31_N5
\reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~29_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][8]~q\);

-- Location: FF_X47_Y32_N7
\reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~29_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][8]~q\);

-- Location: FF_X46_Y33_N31
\reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~29_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][8]~q\);

-- Location: LCCOMB_X47_Y32_N12
\reg[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][8]~feeder_combout\ = \reg~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~29_combout\,
	combout => \reg[1][8]~feeder_combout\);

-- Location: FF_X47_Y32_N13
\reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[1][8]~feeder_combout\,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][8]~q\);

-- Location: LCCOMB_X47_Y32_N14
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\InA[1]~input_o\ & (\InA[0]~input_o\)) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & ((\reg[1][8]~q\))) # (!\InA[0]~input_o\ & (\reg[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[0][8]~q\,
	datad => \reg[1][8]~q\,
	combout => \Mux62~0_combout\);

-- Location: FF_X46_Y33_N7
\reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~29_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][8]~q\);

-- Location: LCCOMB_X47_Y32_N4
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\InA[1]~input_o\ & ((\Mux62~0_combout\ & ((\reg[3][8]~q\))) # (!\Mux62~0_combout\ & (\reg[2][8]~q\)))) # (!\InA[1]~input_o\ & (((\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][8]~q\,
	datab => \InA[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \reg[3][8]~q\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X47_Y32_N30
\Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = (\Mux69~1_combout\ & (((\Mux62~1_combout\) # (\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & (\reg[4][8]~q\ & ((!\Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][8]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux62~1_combout\,
	datad => \Mux69~0_combout\,
	combout => \Mux62~2_combout\);

-- Location: LCCOMB_X43_Y30_N26
\reg[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][8]~feeder_combout\ = \reg~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~29_combout\,
	combout => \reg[6][8]~feeder_combout\);

-- Location: FF_X43_Y30_N27
\reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][8]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][8]~q\);

-- Location: LCCOMB_X47_Y32_N8
\Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~3_combout\ = (\Mux69~0_combout\ & ((\Mux62~2_combout\ & ((\reg[6][8]~q\))) # (!\Mux62~2_combout\ & (\reg[5][8]~q\)))) # (!\Mux69~0_combout\ & (((\Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \reg[5][8]~q\,
	datac => \Mux62~2_combout\,
	datad => \reg[6][8]~q\,
	combout => \Mux62~3_combout\);

-- Location: LCCOMB_X47_Y32_N6
\temp_outA[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(8) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(8))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux62~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(8),
	datab => \Mux52~0clkctrl_outclk\,
	datad => \Mux62~3_combout\,
	combout => temp_outA(8));

-- Location: IOIBUF_X51_Y34_N1
\data_out_RRF[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(9),
	o => \data_out_RRF[9]~input_o\);

-- Location: LCCOMB_X45_Y33_N28
\reg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~30_combout\ = (!\reset~input_o\ & \data_out_RRF[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \data_out_RRF[9]~input_o\,
	combout => \reg~30_combout\);

-- Location: LCCOMB_X43_Y30_N12
\reg[6][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][9]~feeder_combout\ = \reg~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~30_combout\,
	combout => \reg[6][9]~feeder_combout\);

-- Location: FF_X43_Y30_N13
\reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][9]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][9]~q\);

-- Location: FF_X44_Y33_N23
\reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~30_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][9]~q\);

-- Location: FF_X45_Y31_N11
\reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~30_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][9]~q\);

-- Location: FF_X45_Y31_N21
\reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~30_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][9]~q\);

-- Location: FF_X44_Y33_N9
\reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~30_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][9]~q\);

-- Location: LCCOMB_X45_Y31_N20
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\reg[2][9]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\reg[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[2][9]~q\,
	datad => \reg[0][9]~q\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X45_Y31_N10
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\InA[0]~input_o\ & ((\Mux63~0_combout\ & ((\reg[3][9]~q\))) # (!\Mux63~0_combout\ & (\reg[1][9]~q\)))) # (!\InA[0]~input_o\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][9]~q\,
	datab => \InA[0]~input_o\,
	datac => \reg[3][9]~q\,
	datad => \Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X43_Y33_N14
\reg[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][9]~feeder_combout\ = \reg~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~30_combout\,
	combout => \reg[5][9]~feeder_combout\);

-- Location: FF_X43_Y33_N15
\reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][9]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][9]~q\);

-- Location: FF_X45_Y33_N21
\reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~30_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][9]~q\);

-- Location: LCCOMB_X43_Y33_N16
\Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = (\Mux69~1_combout\ & (\Mux69~0_combout\)) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & (\reg[5][9]~q\)) # (!\Mux69~0_combout\ & ((\reg[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux69~0_combout\,
	datac => \reg[5][9]~q\,
	datad => \reg[4][9]~q\,
	combout => \Mux63~2_combout\);

-- Location: LCCOMB_X44_Y33_N18
\Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~3_combout\ = (\Mux69~1_combout\ & ((\Mux63~2_combout\ & (\reg[6][9]~q\)) # (!\Mux63~2_combout\ & ((\Mux63~1_combout\))))) # (!\Mux69~1_combout\ & (((\Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][9]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux63~1_combout\,
	datad => \Mux63~2_combout\,
	combout => \Mux63~3_combout\);

-- Location: LCCOMB_X44_Y33_N26
\temp_outA[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(9) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(9))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(9),
	datab => \Mux52~0clkctrl_outclk\,
	datad => \Mux63~3_combout\,
	combout => temp_outA(9));

-- Location: IOIBUF_X25_Y34_N1
\data_out_RRF[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(10),
	o => \data_out_RRF[10]~input_o\);

-- Location: LCCOMB_X43_Y32_N18
\reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~31_combout\ = (\data_out_RRF[10]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out_RRF[10]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~31_combout\);

-- Location: FF_X43_Y30_N31
\reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~31_combout\,
	sload => VCC,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][10]~q\);

-- Location: LCCOMB_X47_Y31_N28
\reg[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][10]~feeder_combout\ = \reg~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~31_combout\,
	combout => \reg[5][10]~feeder_combout\);

-- Location: FF_X47_Y31_N29
\reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][10]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][10]~q\);

-- Location: FF_X44_Y32_N27
\reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~31_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][10]~q\);

-- Location: FF_X44_Y32_N29
\reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~31_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][10]~q\);

-- Location: LCCOMB_X44_Y29_N20
\reg[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][10]~feeder_combout\ = \reg~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~31_combout\,
	combout => \reg[2][10]~feeder_combout\);

-- Location: FF_X44_Y29_N21
\reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[2][10]~feeder_combout\,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][10]~q\);

-- Location: LCCOMB_X44_Y29_N10
\reg[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][10]~feeder_combout\ = \reg~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~31_combout\,
	combout => \reg[1][10]~feeder_combout\);

-- Location: FF_X44_Y29_N11
\reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[1][10]~feeder_combout\,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][10]~q\);

-- Location: FF_X45_Y32_N17
\reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~31_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][10]~q\);

-- Location: LCCOMB_X44_Y29_N28
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\InA[1]~input_o\ & (\InA[0]~input_o\)) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\reg[1][10]~q\)) # (!\InA[0]~input_o\ & ((\reg[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[1][10]~q\,
	datad => \reg[0][10]~q\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X44_Y29_N2
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\InA[1]~input_o\ & ((\Mux64~0_combout\ & (\reg[3][10]~q\)) # (!\Mux64~0_combout\ & ((\reg[2][10]~q\))))) # (!\InA[1]~input_o\ & (((\Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[3][10]~q\,
	datac => \reg[2][10]~q\,
	datad => \Mux64~0_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X44_Y32_N24
\Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~2_combout\ = (\Mux69~0_combout\ & (\Mux69~1_combout\)) # (!\Mux69~0_combout\ & ((\Mux69~1_combout\ & ((\Mux64~1_combout\))) # (!\Mux69~1_combout\ & (\reg[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \Mux69~1_combout\,
	datac => \reg[4][10]~q\,
	datad => \Mux64~1_combout\,
	combout => \Mux64~2_combout\);

-- Location: LCCOMB_X44_Y32_N2
\Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~3_combout\ = (\Mux69~0_combout\ & ((\Mux64~2_combout\ & (\reg[6][10]~q\)) # (!\Mux64~2_combout\ & ((\reg[5][10]~q\))))) # (!\Mux69~0_combout\ & (((\Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][10]~q\,
	datab => \reg[5][10]~q\,
	datac => \Mux69~0_combout\,
	datad => \Mux64~2_combout\,
	combout => \Mux64~3_combout\);

-- Location: LCCOMB_X44_Y32_N12
\temp_outA[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(10) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(10))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0clkctrl_outclk\,
	datac => temp_outA(10),
	datad => \Mux64~3_combout\,
	combout => temp_outA(10));

-- Location: IOIBUF_X25_Y34_N8
\data_out_RRF[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(11),
	o => \data_out_RRF[11]~input_o\);

-- Location: LCCOMB_X45_Y33_N26
\reg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~32_combout\ = (!\reset~input_o\ & \data_out_RRF[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \data_out_RRF[11]~input_o\,
	combout => \reg~32_combout\);

-- Location: FF_X43_Y30_N29
\reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][11]~q\);

-- Location: LCCOMB_X43_Y33_N18
\reg[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][11]~feeder_combout\ = \reg~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~32_combout\,
	combout => \reg[5][11]~feeder_combout\);

-- Location: FF_X43_Y33_N19
\reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][11]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][11]~q\);

-- Location: FF_X45_Y33_N15
\reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][11]~q\);

-- Location: LCCOMB_X43_Y33_N4
\Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = (\Mux69~1_combout\ & (\Mux69~0_combout\)) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & (\reg[5][11]~q\)) # (!\Mux69~0_combout\ & ((\reg[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux69~0_combout\,
	datac => \reg[5][11]~q\,
	datad => \reg[4][11]~q\,
	combout => \Mux65~2_combout\);

-- Location: FF_X44_Y33_N17
\reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][11]~q\);

-- Location: FF_X45_Y31_N19
\reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][11]~q\);

-- Location: FF_X45_Y31_N29
\reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][11]~q\);

-- Location: FF_X44_Y33_N15
\reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~32_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][11]~q\);

-- Location: LCCOMB_X45_Y31_N28
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\reg[2][11]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\reg[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[2][11]~q\,
	datad => \reg[0][11]~q\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X45_Y31_N18
\Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\InA[0]~input_o\ & ((\Mux65~0_combout\ & ((\reg[3][11]~q\))) # (!\Mux65~0_combout\ & (\reg[1][11]~q\)))) # (!\InA[0]~input_o\ & (((\Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][11]~q\,
	datab => \InA[0]~input_o\,
	datac => \reg[3][11]~q\,
	datad => \Mux65~0_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X44_Y33_N0
\Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~3_combout\ = (\Mux69~1_combout\ & ((\Mux65~2_combout\ & (\reg[6][11]~q\)) # (!\Mux65~2_combout\ & ((\Mux65~1_combout\))))) # (!\Mux69~1_combout\ & (((\Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][11]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux65~2_combout\,
	datad => \Mux65~1_combout\,
	combout => \Mux65~3_combout\);

-- Location: LCCOMB_X44_Y33_N4
\temp_outA[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(11) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(11))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux65~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0clkctrl_outclk\,
	datab => temp_outA(11),
	datad => \Mux65~3_combout\,
	combout => temp_outA(11));

-- Location: IOIBUF_X38_Y0_N8
\data_out_RRF[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(12),
	o => \data_out_RRF[12]~input_o\);

-- Location: LCCOMB_X43_Y32_N28
\reg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~33_combout\ = (\data_out_RRF[12]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[12]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~33_combout\);

-- Location: LCCOMB_X41_Y30_N10
\reg[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][12]~feeder_combout\ = \reg~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~33_combout\,
	combout => \reg[6][12]~feeder_combout\);

-- Location: FF_X41_Y30_N11
\reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][12]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][12]~q\);

-- Location: FF_X40_Y31_N25
\reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~33_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][12]~q\);

-- Location: LCCOMB_X40_Y31_N12
\reg[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][12]~feeder_combout\ = \reg~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~33_combout\,
	combout => \reg[2][12]~feeder_combout\);

-- Location: FF_X40_Y31_N13
\reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[2][12]~feeder_combout\,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][12]~q\);

-- Location: LCCOMB_X45_Y31_N4
\reg[3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][12]~feeder_combout\ = \reg~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~33_combout\,
	combout => \reg[3][12]~feeder_combout\);

-- Location: FF_X45_Y31_N5
\reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[3][12]~feeder_combout\,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][12]~q\);

-- Location: FF_X44_Y33_N27
\reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~33_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][12]~q\);

-- Location: FF_X44_Y33_N25
\reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~33_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][12]~q\);

-- Location: LCCOMB_X44_Y33_N6
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\InA[1]~input_o\ & (((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\reg[1][12]~q\)) # (!\InA[0]~input_o\ & ((\reg[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][12]~q\,
	datab => \InA[1]~input_o\,
	datac => \InA[0]~input_o\,
	datad => \reg[0][12]~q\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X40_Y31_N10
\Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\InA[1]~input_o\ & ((\Mux66~0_combout\ & ((\reg[3][12]~q\))) # (!\Mux66~0_combout\ & (\reg[2][12]~q\)))) # (!\InA[1]~input_o\ & (((\Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][12]~q\,
	datab => \InA[1]~input_o\,
	datac => \reg[3][12]~q\,
	datad => \Mux66~0_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X40_Y31_N14
\Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\) # (\Mux66~1_combout\)))) # (!\Mux69~1_combout\ & (\reg[4][12]~q\ & (!\Mux69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][12]~q\,
	datab => \Mux69~1_combout\,
	datac => \Mux69~0_combout\,
	datad => \Mux66~1_combout\,
	combout => \Mux66~2_combout\);

-- Location: LCCOMB_X47_Y31_N6
\reg[5][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][12]~feeder_combout\ = \reg~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~33_combout\,
	combout => \reg[5][12]~feeder_combout\);

-- Location: FF_X47_Y31_N7
\reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][12]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][12]~q\);

-- Location: LCCOMB_X40_Y31_N28
\Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~3_combout\ = (\Mux69~0_combout\ & ((\Mux66~2_combout\ & (\reg[6][12]~q\)) # (!\Mux66~2_combout\ & ((\reg[5][12]~q\))))) # (!\Mux69~0_combout\ & (((\Mux66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][12]~q\,
	datab => \Mux69~0_combout\,
	datac => \Mux66~2_combout\,
	datad => \reg[5][12]~q\,
	combout => \Mux66~3_combout\);

-- Location: LCCOMB_X40_Y31_N26
\temp_outA[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(12) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(12))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux66~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outA(12),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux66~3_combout\,
	combout => temp_outA(12));

-- Location: IOIBUF_X25_Y34_N15
\data_out_RRF[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(13),
	o => \data_out_RRF[13]~input_o\);

-- Location: LCCOMB_X44_Y33_N24
\reg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~34_combout\ = (!\reset~input_o\ & \data_out_RRF[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \data_out_RRF[13]~input_o\,
	combout => \reg~34_combout\);

-- Location: FF_X44_Y31_N13
\reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~34_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][13]~q\);

-- Location: FF_X45_Y31_N27
\reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~34_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][13]~q\);

-- Location: FF_X45_Y31_N3
\reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~34_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][13]~q\);

-- Location: FF_X45_Y32_N11
\reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~34_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][13]~q\);

-- Location: LCCOMB_X45_Y31_N8
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\InA[1]~input_o\ & ((\reg[2][13]~q\) # ((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & (((!\InA[0]~input_o\ & \reg[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \reg[2][13]~q\,
	datac => \InA[0]~input_o\,
	datad => \reg[0][13]~q\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X45_Y31_N26
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\InA[0]~input_o\ & ((\Mux67~0_combout\ & ((\reg[3][13]~q\))) # (!\Mux67~0_combout\ & (\reg[1][13]~q\)))) # (!\InA[0]~input_o\ & (((\Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][13]~q\,
	datab => \InA[0]~input_o\,
	datac => \reg[3][13]~q\,
	datad => \Mux67~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X43_Y30_N6
\reg[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][13]~feeder_combout\ = \reg~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~34_combout\,
	combout => \reg[6][13]~feeder_combout\);

-- Location: FF_X43_Y30_N7
\reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][13]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][13]~q\);

-- Location: FF_X45_Y33_N29
\reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~34_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][13]~q\);

-- Location: LCCOMB_X43_Y33_N10
\reg[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][13]~feeder_combout\ = \reg~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~34_combout\,
	combout => \reg[5][13]~feeder_combout\);

-- Location: FF_X43_Y33_N11
\reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][13]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][13]~q\);

-- Location: LCCOMB_X43_Y33_N12
\Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & ((\reg[5][13]~q\))) # (!\Mux69~0_combout\ & (\reg[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \reg[4][13]~q\,
	datac => \Mux69~0_combout\,
	datad => \reg[5][13]~q\,
	combout => \Mux67~2_combout\);

-- Location: LCCOMB_X43_Y31_N2
\Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~3_combout\ = (\Mux69~1_combout\ & ((\Mux67~2_combout\ & ((\reg[6][13]~q\))) # (!\Mux67~2_combout\ & (\Mux67~1_combout\)))) # (!\Mux69~1_combout\ & (((\Mux67~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~1_combout\,
	datab => \Mux69~1_combout\,
	datac => \reg[6][13]~q\,
	datad => \Mux67~2_combout\,
	combout => \Mux67~3_combout\);

-- Location: LCCOMB_X43_Y31_N8
\temp_outA[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(13) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(13))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux67~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outA(13),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux67~3_combout\,
	combout => temp_outA(13));

-- Location: IOIBUF_X25_Y34_N22
\data_out_RRF[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(14),
	o => \data_out_RRF[14]~input_o\);

-- Location: LCCOMB_X43_Y32_N26
\reg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~35_combout\ = (\data_out_RRF[14]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out_RRF[14]~input_o\,
	datad => \reset~input_o\,
	combout => \reg~35_combout\);

-- Location: LCCOMB_X43_Y30_N16
\reg[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][14]~feeder_combout\ = \reg~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~35_combout\,
	combout => \reg[6][14]~feeder_combout\);

-- Location: FF_X43_Y30_N17
\reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][14]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][14]~q\);

-- Location: LCCOMB_X47_Y31_N12
\reg[5][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[5][14]~feeder_combout\ = \reg~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg~35_combout\,
	combout => \reg[5][14]~feeder_combout\);

-- Location: FF_X47_Y31_N13
\reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[5][14]~feeder_combout\,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][14]~q\);

-- Location: FF_X45_Y33_N27
\reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~35_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][14]~q\);

-- Location: FF_X46_Y32_N19
\reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~35_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][14]~q\);

-- Location: LCCOMB_X47_Y32_N18
\reg[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][14]~feeder_combout\ = \reg~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~35_combout\,
	combout => \reg[2][14]~feeder_combout\);

-- Location: FF_X47_Y32_N19
\reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[2][14]~feeder_combout\,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][14]~q\);

-- Location: FF_X46_Y32_N17
\reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~35_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][14]~q\);

-- Location: LCCOMB_X47_Y32_N20
\reg[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][14]~feeder_combout\ = \reg~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~35_combout\,
	combout => \reg[1][14]~feeder_combout\);

-- Location: FF_X47_Y32_N21
\reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[1][14]~feeder_combout\,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][14]~q\);

-- Location: LCCOMB_X47_Y32_N26
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\InA[1]~input_o\ & (\InA[0]~input_o\)) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & ((\reg[1][14]~q\))) # (!\InA[0]~input_o\ & (\reg[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[0][14]~q\,
	datad => \reg[1][14]~q\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X47_Y32_N28
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\InA[1]~input_o\ & ((\Mux68~0_combout\ & (\reg[3][14]~q\)) # (!\Mux68~0_combout\ & ((\reg[2][14]~q\))))) # (!\InA[1]~input_o\ & (((\Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][14]~q\,
	datab => \InA[1]~input_o\,
	datac => \reg[2][14]~q\,
	datad => \Mux68~0_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X47_Y32_N22
\Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = (\Mux69~0_combout\ & (\Mux69~1_combout\)) # (!\Mux69~0_combout\ & ((\Mux69~1_combout\ & ((\Mux68~1_combout\))) # (!\Mux69~1_combout\ & (\reg[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \Mux69~1_combout\,
	datac => \reg[4][14]~q\,
	datad => \Mux68~1_combout\,
	combout => \Mux68~2_combout\);

-- Location: LCCOMB_X47_Y32_N0
\Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~3_combout\ = (\Mux69~0_combout\ & ((\Mux68~2_combout\ & (\reg[6][14]~q\)) # (!\Mux68~2_combout\ & ((\reg[5][14]~q\))))) # (!\Mux69~0_combout\ & (((\Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \reg[6][14]~q\,
	datac => \reg[5][14]~q\,
	datad => \Mux68~2_combout\,
	combout => \Mux68~3_combout\);

-- Location: LCCOMB_X47_Y32_N2
\temp_outA[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(14) = (GLOBAL(\Mux52~0clkctrl_outclk\) & ((temp_outA(14)))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & (\Mux68~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux68~3_combout\,
	datac => \Mux52~0clkctrl_outclk\,
	datad => temp_outA(14),
	combout => temp_outA(14));

-- Location: IOIBUF_X23_Y34_N22
\data_out_RRF[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_out_RRF(15),
	o => \data_out_RRF[15]~input_o\);

-- Location: LCCOMB_X45_Y33_N18
\reg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg~36_combout\ = (!\reset~input_o\ & \data_out_RRF[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \data_out_RRF[15]~input_o\,
	combout => \reg~36_combout\);

-- Location: FF_X45_Y33_N3
\reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[4][15]~q\);

-- Location: FF_X43_Y33_N7
\reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[5][13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[5][15]~q\);

-- Location: LCCOMB_X45_Y33_N0
\Mux69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~4_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & ((\reg[5][15]~q\))) # (!\Mux69~0_combout\ & (\reg[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \reg[4][15]~q\,
	datac => \Mux69~0_combout\,
	datad => \reg[5][15]~q\,
	combout => \Mux69~4_combout\);

-- Location: LCCOMB_X43_Y30_N10
\reg[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[6][15]~feeder_combout\ = \reg~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg~36_combout\,
	combout => \reg[6][15]~feeder_combout\);

-- Location: FF_X43_Y30_N11
\reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg[6][15]~feeder_combout\,
	ena => \reg[6][6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[6][15]~q\);

-- Location: FF_X45_Y33_N13
\reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[1][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][15]~q\);

-- Location: FF_X46_Y33_N29
\reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[3][13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][15]~q\);

-- Location: FF_X43_Y33_N27
\reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[2][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][15]~q\);

-- Location: FF_X46_Y33_N11
\reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg~36_combout\,
	sload => VCC,
	ena => \reg[0][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][15]~q\);

-- Location: LCCOMB_X43_Y33_N8
\Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\reg[2][15]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\reg[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \reg[2][15]~q\,
	datad => \reg[0][15]~q\,
	combout => \Mux69~2_combout\);

-- Location: LCCOMB_X46_Y33_N28
\Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = (\InA[0]~input_o\ & ((\Mux69~2_combout\ & ((\reg[3][15]~q\))) # (!\Mux69~2_combout\ & (\reg[1][15]~q\)))) # (!\InA[0]~input_o\ & (((\Mux69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][15]~q\,
	datab => \InA[0]~input_o\,
	datac => \reg[3][15]~q\,
	datad => \Mux69~2_combout\,
	combout => \Mux69~3_combout\);

-- Location: LCCOMB_X45_Y33_N6
\Mux69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~5_combout\ = (\Mux69~1_combout\ & ((\Mux69~4_combout\ & (\reg[6][15]~q\)) # (!\Mux69~4_combout\ & ((\Mux69~3_combout\))))) # (!\Mux69~1_combout\ & (\Mux69~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux69~4_combout\,
	datac => \reg[6][15]~q\,
	datad => \Mux69~3_combout\,
	combout => \Mux69~5_combout\);

-- Location: LCCOMB_X45_Y33_N8
\temp_outA[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outA(15) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (temp_outA(15))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux69~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outA(15),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux69~5_combout\,
	combout => temp_outA(15));

-- Location: IOIBUF_X53_Y22_N8
\busy_renamer~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_busy_renamer,
	o => \busy_renamer~input_o\);

-- Location: LCCOMB_X46_Y30_N4
\busy~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~19_combout\ = (!\busy~18_combout\ & (busy(6) & ((\reg[6][6]~19_combout\) # (\reg[6][6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][6]~19_combout\,
	datab => \busy~18_combout\,
	datac => \reg[6][6]~20_combout\,
	datad => busy(6),
	combout => \busy~19_combout\);

-- Location: LCCOMB_X47_Y33_N2
\busy~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~20_combout\ = (\busy~19_combout\) # ((\busy~18_combout\ & \busy_renamer~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~18_combout\,
	datab => \busy_renamer~input_o\,
	datad => \busy~19_combout\,
	combout => \busy~20_combout\);

-- Location: FF_X47_Y33_N3
\busy[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~20_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(6));

-- Location: LCCOMB_X46_Y31_N30
\busy~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~16_combout\ = (!\busy~15_combout\ & (busy(4) & ((\reg[4][2]~17_combout\) # (\reg[4][2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[4][2]~17_combout\,
	datab => \reg[4][2]~16_combout\,
	datac => \busy~15_combout\,
	datad => busy(4),
	combout => \busy~16_combout\);

-- Location: LCCOMB_X47_Y30_N18
\busy~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~17_combout\ = (\busy~16_combout\) # ((\busy_renamer~input_o\ & \busy~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy_renamer~input_o\,
	datac => \busy~16_combout\,
	datad => \busy~15_combout\,
	combout => \busy~17_combout\);

-- Location: FF_X47_Y30_N19
\busy[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~17_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(4));

-- Location: LCCOMB_X47_Y30_N10
\busy~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~10_combout\ = (!\busy~9_combout\ & (busy(0) & ((\reg[0][6]~11_combout\) # (\reg[0][6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~9_combout\,
	datab => \reg[0][6]~11_combout\,
	datac => busy(0),
	datad => \reg[0][6]~10_combout\,
	combout => \busy~10_combout\);

-- Location: LCCOMB_X47_Y30_N14
\busy~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~11_combout\ = (\busy~10_combout\) # ((\busy~9_combout\ & \busy_renamer~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~9_combout\,
	datac => \busy_renamer~input_o\,
	datad => \busy~10_combout\,
	combout => \busy~11_combout\);

-- Location: FF_X47_Y30_N15
\busy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(0));

-- Location: LCCOMB_X46_Y30_N14
\busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~7_combout\ = (!\busy~6_combout\ & (busy(1) & ((\reg[1][5]~7_combout\) # (\reg[1][5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~6_combout\,
	datab => \reg[1][5]~7_combout\,
	datac => busy(1),
	datad => \reg[1][5]~8_combout\,
	combout => \busy~7_combout\);

-- Location: LCCOMB_X47_Y30_N0
\busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~8_combout\ = (\busy~7_combout\) # ((\busy_renamer~input_o\ & \busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy_renamer~input_o\,
	datac => \busy~6_combout\,
	datad => \busy~7_combout\,
	combout => \busy~8_combout\);

-- Location: FF_X47_Y30_N1
\busy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(1));

-- Location: LCCOMB_X47_Y30_N12
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\InA[1]~input_o\ & (((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & ((busy(1)))) # (!\InA[0]~input_o\ & (busy(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => busy(0),
	datac => busy(1),
	datad => \InA[0]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X47_Y30_N24
\busy~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~13_combout\ = (!\busy~12_combout\ & (busy(3) & ((\reg[3][13]~14_combout\) # (\reg[3][13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~12_combout\,
	datab => busy(3),
	datac => \reg[3][13]~14_combout\,
	datad => \reg[3][13]~13_combout\,
	combout => \busy~13_combout\);

-- Location: LCCOMB_X47_Y30_N16
\busy~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~14_combout\ = (\busy~13_combout\) # ((\busy~12_combout\ & \busy_renamer~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy~12_combout\,
	datac => \busy_renamer~input_o\,
	datad => \busy~13_combout\,
	combout => \busy~14_combout\);

-- Location: FF_X47_Y30_N17
\busy[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~14_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(3));

-- Location: LCCOMB_X47_Y33_N20
\busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~4_combout\ = (!\busy~3_combout\ & (busy(2) & ((\reg[2][2]~4_combout\) # (\reg[2][2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~3_combout\,
	datab => busy(2),
	datac => \reg[2][2]~4_combout\,
	datad => \reg[2][2]~5_combout\,
	combout => \busy~4_combout\);

-- Location: LCCOMB_X47_Y33_N16
\busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~5_combout\ = (\busy~4_combout\) # ((\busy_renamer~input_o\ & \busy~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busy_renamer~input_o\,
	datac => \busy~3_combout\,
	datad => \busy~4_combout\,
	combout => \busy~5_combout\);

-- Location: FF_X47_Y33_N17
\busy[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~5_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(2));

-- Location: LCCOMB_X47_Y30_N26
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux53~0_combout\ & ((busy(3)) # ((!\InA[1]~input_o\)))) # (!\Mux53~0_combout\ & (((busy(2) & \InA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~0_combout\,
	datab => busy(3),
	datac => busy(2),
	datad => \InA[1]~input_o\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X47_Y30_N4
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux69~0_combout\ & (\Mux69~1_combout\)) # (!\Mux69~0_combout\ & ((\Mux69~1_combout\ & ((\Mux53~1_combout\))) # (!\Mux69~1_combout\ & (busy(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \Mux69~1_combout\,
	datac => busy(4),
	datad => \Mux53~1_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X47_Y31_N10
\busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~1_combout\ = (busy(5) & (!\busy~0_combout\ & ((\reg[5][13]~2_combout\) # (\reg[5][13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => busy(5),
	datab => \busy~0_combout\,
	datac => \reg[5][13]~2_combout\,
	datad => \reg[5][13]~1_combout\,
	combout => \busy~1_combout\);

-- Location: LCCOMB_X47_Y31_N24
\busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~2_combout\ = (\busy~1_combout\) # ((\busy_renamer~input_o\ & \busy~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~1_combout\,
	datab => \busy_renamer~input_o\,
	datac => \busy~0_combout\,
	combout => \busy~2_combout\);

-- Location: FF_X47_Y31_N25
\busy[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => busy(5));

-- Location: LCCOMB_X47_Y30_N30
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux69~0_combout\ & ((\Mux53~2_combout\ & (busy(6))) # (!\Mux53~2_combout\ & ((busy(5)))))) # (!\Mux69~0_combout\ & (((\Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => busy(6),
	datac => \Mux53~2_combout\,
	datad => busy(5),
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X47_Y30_N6
busyA : cycloneive_lcell_comb
-- Equation(s):
-- \busyA~combout\ = (GLOBAL(\Mux52~0clkctrl_outclk\) & (\busyA~combout\)) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux53~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busyA~combout\,
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux53~3_combout\,
	combout => \busyA~combout\);

-- Location: LCCOMB_X46_Y32_N0
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & ((\tag[5][0]~q\))) # (!\Mux69~0_combout\ & (\tag[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[4][0]~q\,
	datab => \tag[5][0]~q\,
	datac => \Mux69~1_combout\,
	datad => \Mux69~0_combout\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X46_Y32_N4
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\InA[0]~input_o\ & (\InA[1]~input_o\)) # (!\InA[0]~input_o\ & ((\InA[1]~input_o\ & ((\tag[2][0]~q\))) # (!\InA[1]~input_o\ & (\tag[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \InA[1]~input_o\,
	datac => \tag[0][0]~q\,
	datad => \tag[2][0]~q\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X46_Y32_N14
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\InA[0]~input_o\ & ((\Mux49~0_combout\ & ((\tag[3][0]~q\))) # (!\Mux49~0_combout\ & (\tag[1][0]~q\)))) # (!\InA[0]~input_o\ & (((\Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[0]~input_o\,
	datab => \tag[1][0]~q\,
	datac => \Mux49~0_combout\,
	datad => \tag[3][0]~q\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X46_Y32_N26
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux49~2_combout\ & ((\tag[6][0]~q\) # ((!\Mux69~1_combout\)))) # (!\Mux49~2_combout\ & (((\Mux49~1_combout\ & \Mux69~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[6][0]~q\,
	datab => \Mux49~2_combout\,
	datac => \Mux49~1_combout\,
	datad => \Mux69~1_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X46_Y32_N28
\tagA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagA(0) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (tagA(0))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tagA(0),
	datac => \Mux49~3_combout\,
	datad => \Mux52~0clkctrl_outclk\,
	combout => tagA(0));

-- Location: LCCOMB_X45_Y30_N14
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\InA[1]~input_o\ & (((\InA[0]~input_o\)))) # (!\InA[1]~input_o\ & ((\InA[0]~input_o\ & (\tag[1][1]~q\)) # (!\InA[0]~input_o\ & ((\tag[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \tag[1][1]~q\,
	datac => \InA[0]~input_o\,
	datad => \tag[0][1]~q\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X46_Y30_N12
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\InA[1]~input_o\ & ((\Mux50~0_combout\ & (\tag[3][1]~q\)) # (!\Mux50~0_combout\ & ((\tag[2][1]~q\))))) # (!\InA[1]~input_o\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[3][1]~q\,
	datab => \InA[1]~input_o\,
	datac => \tag[2][1]~q\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X46_Y32_N24
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux69~1_combout\ & ((\Mux69~0_combout\) # ((\Mux50~1_combout\)))) # (!\Mux69~1_combout\ & (!\Mux69~0_combout\ & (\tag[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux69~0_combout\,
	datac => \tag[4][1]~q\,
	datad => \Mux50~1_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X46_Y32_N2
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux69~0_combout\ & ((\Mux50~2_combout\ & (\tag[6][1]~q\)) # (!\Mux50~2_combout\ & ((\tag[5][1]~q\))))) # (!\Mux69~0_combout\ & (((\Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[6][1]~q\,
	datab => \tag[5][1]~q\,
	datac => \Mux69~0_combout\,
	datad => \Mux50~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X46_Y32_N30
\tagA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagA(1) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (tagA(1))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux50~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tagA(1),
	datac => \Mux52~0clkctrl_outclk\,
	datad => \Mux50~3_combout\,
	combout => tagA(1));

-- Location: LCCOMB_X46_Y30_N20
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\InA[1]~input_o\ & ((\InA[0]~input_o\) # ((\tag[2][2]~q\)))) # (!\InA[1]~input_o\ & (!\InA[0]~input_o\ & ((\tag[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA[1]~input_o\,
	datab => \InA[0]~input_o\,
	datac => \tag[2][2]~q\,
	datad => \tag[0][2]~q\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X48_Y30_N8
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\InA[0]~input_o\ & ((\Mux51~0_combout\ & ((\tag[3][2]~q\))) # (!\Mux51~0_combout\ & (\tag[1][2]~q\)))) # (!\InA[0]~input_o\ & (((\Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[1][2]~q\,
	datab => \InA[0]~input_o\,
	datac => \Mux51~0_combout\,
	datad => \tag[3][2]~q\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X48_Y30_N26
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux69~1_combout\ & (((\Mux69~0_combout\)))) # (!\Mux69~1_combout\ & ((\Mux69~0_combout\ & ((\tag[5][2]~q\))) # (!\Mux69~0_combout\ & (\tag[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[4][2]~q\,
	datab => \Mux69~1_combout\,
	datac => \tag[5][2]~q\,
	datad => \Mux69~0_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X48_Y30_N4
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux69~1_combout\ & ((\Mux51~2_combout\ & (\tag[6][2]~q\)) # (!\Mux51~2_combout\ & ((\Mux51~1_combout\))))) # (!\Mux69~1_combout\ & (((\Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \tag[6][2]~q\,
	datac => \Mux51~1_combout\,
	datad => \Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X48_Y30_N2
\tagA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagA(2) = (GLOBAL(\Mux52~0clkctrl_outclk\) & (tagA(2))) # (!GLOBAL(\Mux52~0clkctrl_outclk\) & ((\Mux51~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tagA(2),
	datac => \Mux51~3_combout\,
	datad => \Mux52~0clkctrl_outclk\,
	combout => tagA(2));

-- Location: IOIBUF_X45_Y34_N1
\InB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InB(0),
	o => \InB[0]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\InB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InB(1),
	o => \InB[1]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\InB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InB(2),
	o => \InB[2]~input_o\);

-- Location: LCCOMB_X46_Y33_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\ & \InB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datad => \InB[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: CLKCTRL_G5
\Mux1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux1~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y33_N2
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\InB[2]~input_o\ & ((\InB[1]~input_o\) # (\InB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InB[1]~input_o\,
	datac => \InB[0]~input_o\,
	datad => \InB[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X46_Y33_N10
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\InB[1]~input_o\) # (!\InB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InB[1]~input_o\,
	datad => \InB[2]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X45_Y32_N0
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\InB[0]~input_o\ & ((\InB[1]~input_o\) # ((\reg[1][0]~q\)))) # (!\InB[0]~input_o\ & (!\InB[1]~input_o\ & ((\reg[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[1][0]~q\,
	datad => \reg[0][0]~q\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X45_Y31_N24
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\InB[1]~input_o\ & ((\Mux33~0_combout\ & ((\reg[3][0]~q\))) # (!\Mux33~0_combout\ & (\reg[2][0]~q\)))) # (!\InB[1]~input_o\ & (((\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][0]~q\,
	datab => \InB[1]~input_o\,
	datac => \reg[3][0]~q\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X46_Y31_N20
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux4~0_combout\ & (\Mux4~1_combout\)) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux33~1_combout\))) # (!\Mux4~1_combout\ & (\reg[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][0]~q\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X46_Y31_N12
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux4~0_combout\ & ((\Mux33~2_combout\ & (\reg[6][0]~q\)) # (!\Mux33~2_combout\ & ((\reg[5][0]~q\))))) # (!\Mux4~0_combout\ & (((\Mux33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][0]~q\,
	datab => \reg[5][0]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X46_Y31_N28
\temp_outB[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(0) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(0))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0clkctrl_outclk\,
	datab => temp_outB(0),
	datad => \Mux33~3_combout\,
	combout => temp_outB(0));

-- Location: LCCOMB_X45_Y32_N24
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][1]~q\))) # (!\InB[1]~input_o\ & (\reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][1]~q\,
	datad => \reg[2][1]~q\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X44_Y31_N20
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\InB[0]~input_o\ & ((\Mux34~0_combout\ & (\reg[3][1]~q\)) # (!\Mux34~0_combout\ & ((\reg[1][1]~q\))))) # (!\InB[0]~input_o\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[3][1]~q\,
	datac => \reg[1][1]~q\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X46_Y31_N10
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & (\reg[5][1]~q\)) # (!\Mux4~0_combout\ & ((\reg[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[5][1]~q\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][1]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X44_Y31_N14
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux4~1_combout\ & ((\Mux34~2_combout\ & ((\reg[6][1]~q\))) # (!\Mux34~2_combout\ & (\Mux34~1_combout\)))) # (!\Mux4~1_combout\ & (((\Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \reg[6][1]~q\,
	datad => \Mux34~2_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X44_Y31_N16
\temp_outB[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(1) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(1))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux34~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outB(1),
	datac => \Mux34~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(1));

-- Location: LCCOMB_X45_Y32_N4
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\InB[0]~input_o\ & ((\InB[1]~input_o\) # ((\reg[1][2]~q\)))) # (!\InB[0]~input_o\ & (!\InB[1]~input_o\ & (\reg[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][2]~q\,
	datad => \reg[1][2]~q\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X40_Y31_N18
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\InB[1]~input_o\ & ((\Mux35~0_combout\ & (\reg[3][2]~q\)) # (!\Mux35~0_combout\ & ((\reg[2][2]~q\))))) # (!\InB[1]~input_o\ & (((\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][2]~q\,
	datab => \InB[1]~input_o\,
	datac => \reg[2][2]~q\,
	datad => \Mux35~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X40_Y31_N0
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux4~0_combout\ & (\Mux4~1_combout\)) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux35~1_combout\))) # (!\Mux4~1_combout\ & (\reg[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][2]~q\,
	datad => \Mux35~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X40_Y31_N6
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux4~0_combout\ & ((\Mux35~2_combout\ & (\reg[6][2]~q\)) # (!\Mux35~2_combout\ & ((\reg[5][2]~q\))))) # (!\Mux4~0_combout\ & (((\Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][2]~q\,
	datab => \reg[5][2]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X40_Y31_N8
\temp_outB[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(2) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(2))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outB(2),
	datac => \Mux1~0clkctrl_outclk\,
	datad => \Mux35~3_combout\,
	combout => temp_outB(2));

-- Location: LCCOMB_X43_Y32_N14
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\InB[1]~input_o\ & (((\reg[2][3]~q\) # (\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & (\reg[0][3]~q\ & ((!\InB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => \reg[0][3]~q\,
	datac => \reg[2][3]~q\,
	datad => \InB[0]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X44_Y31_N28
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\InB[0]~input_o\ & ((\Mux36~0_combout\ & (\reg[3][3]~q\)) # (!\Mux36~0_combout\ & ((\reg[1][3]~q\))))) # (!\InB[0]~input_o\ & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[3][3]~q\,
	datac => \reg[1][3]~q\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X46_Y31_N8
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & (\reg[5][3]~q\)) # (!\Mux4~0_combout\ & ((\reg[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[5][3]~q\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X44_Y31_N26
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux4~1_combout\ & ((\Mux36~2_combout\ & ((\reg[6][3]~q\))) # (!\Mux36~2_combout\ & (\Mux36~1_combout\)))) # (!\Mux4~1_combout\ & (((\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux36~1_combout\,
	datac => \reg[6][3]~q\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X44_Y31_N24
\temp_outB[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(3) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(3))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outB(3),
	datac => \Mux36~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(3));

-- Location: LCCOMB_X44_Y33_N28
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\InB[1]~input_o\ & (((\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & ((\InB[0]~input_o\ & ((\reg[1][4]~q\))) # (!\InB[0]~input_o\ & (\reg[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][4]~q\,
	datab => \InB[1]~input_o\,
	datac => \InB[0]~input_o\,
	datad => \reg[1][4]~q\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X45_Y31_N14
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\InB[1]~input_o\ & ((\Mux37~0_combout\ & ((\reg[3][4]~q\))) # (!\Mux37~0_combout\ & (\reg[2][4]~q\)))) # (!\InB[1]~input_o\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => \reg[2][4]~q\,
	datac => \reg[3][4]~q\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X46_Y31_N14
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux4~0_combout\ & (\Mux4~1_combout\)) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux37~1_combout\))) # (!\Mux4~1_combout\ & (\reg[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][4]~q\,
	datad => \Mux37~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X47_Y31_N18
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux4~0_combout\ & ((\Mux37~2_combout\ & (\reg[6][4]~q\)) # (!\Mux37~2_combout\ & ((\reg[5][4]~q\))))) # (!\Mux4~0_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \reg[6][4]~q\,
	datac => \reg[5][4]~q\,
	datad => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X47_Y31_N30
\temp_outB[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(4) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(4))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux37~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(4),
	datac => \Mux1~0clkctrl_outclk\,
	datad => \Mux37~3_combout\,
	combout => temp_outB(4));

-- Location: LCCOMB_X45_Y32_N12
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][5]~q\))) # (!\InB[1]~input_o\ & (\reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][5]~q\,
	datad => \reg[2][5]~q\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X45_Y32_N26
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\InB[0]~input_o\ & ((\Mux38~0_combout\ & (\reg[3][5]~q\)) # (!\Mux38~0_combout\ & ((\reg[1][5]~q\))))) # (!\InB[0]~input_o\ & (((\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[3][5]~q\,
	datac => \reg[1][5]~q\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X45_Y33_N4
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux4~0_combout\ & ((\Mux4~1_combout\) # ((\reg[5][5]~q\)))) # (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & (\reg[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][5]~q\,
	datad => \reg[5][5]~q\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X45_Y32_N8
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\Mux4~1_combout\ & ((\Mux38~2_combout\ & ((\reg[6][5]~q\))) # (!\Mux38~2_combout\ & (\Mux38~1_combout\)))) # (!\Mux4~1_combout\ & (((\Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux38~1_combout\,
	datac => \Mux38~2_combout\,
	datad => \reg[6][5]~q\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X45_Y32_N18
\temp_outB[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(5) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(5))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux38~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(5),
	datab => \Mux1~0clkctrl_outclk\,
	datad => \Mux38~3_combout\,
	combout => temp_outB(5));

-- Location: LCCOMB_X45_Y32_N14
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\InB[0]~input_o\ & (((\reg[1][6]~q\) # (\InB[1]~input_o\)))) # (!\InB[0]~input_o\ & (\reg[0][6]~q\ & ((!\InB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[0][6]~q\,
	datac => \reg[1][6]~q\,
	datad => \InB[1]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X44_Y32_N8
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\InB[1]~input_o\ & ((\Mux39~0_combout\ & (\reg[3][6]~q\)) # (!\Mux39~0_combout\ & ((\reg[2][6]~q\))))) # (!\InB[1]~input_o\ & (((\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][6]~q\,
	datab => \InB[1]~input_o\,
	datac => \Mux39~0_combout\,
	datad => \reg[2][6]~q\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X44_Y32_N10
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux4~1_combout\ & ((\Mux4~0_combout\) # ((\Mux39~1_combout\)))) # (!\Mux4~1_combout\ & (!\Mux4~0_combout\ & (\reg[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \reg[4][6]~q\,
	datad => \Mux39~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X43_Y32_N4
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux4~0_combout\ & ((\Mux39~2_combout\ & ((\reg[6][6]~q\))) # (!\Mux39~2_combout\ & (\reg[5][6]~q\)))) # (!\Mux4~0_combout\ & (((\Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \reg[5][6]~q\,
	datac => \Mux39~2_combout\,
	datad => \reg[6][6]~q\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X43_Y32_N0
\temp_outB[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(6) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(6))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outB(6),
	datac => \Mux39~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(6));

-- Location: LCCOMB_X45_Y32_N22
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][7]~q\))) # (!\InB[1]~input_o\ & (\reg[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][7]~q\,
	datad => \reg[2][7]~q\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X45_Y32_N20
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux40~0_combout\ & ((\reg[3][7]~q\) # ((!\InB[0]~input_o\)))) # (!\Mux40~0_combout\ & (((\reg[1][7]~q\ & \InB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datab => \reg[3][7]~q\,
	datac => \reg[1][7]~q\,
	datad => \InB[0]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X45_Y33_N16
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux4~0_combout\ & ((\Mux4~1_combout\) # ((\reg[5][7]~q\)))) # (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & ((\reg[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[5][7]~q\,
	datad => \reg[4][7]~q\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X45_Y32_N28
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux4~1_combout\ & ((\Mux40~2_combout\ & ((\reg[6][7]~q\))) # (!\Mux40~2_combout\ & (\Mux40~1_combout\)))) # (!\Mux4~1_combout\ & (((\Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux40~1_combout\,
	datac => \Mux40~2_combout\,
	datad => \reg[6][7]~q\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X45_Y32_N6
\temp_outB[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(7) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(7))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux40~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(7),
	datab => \Mux40~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(7));

-- Location: LCCOMB_X46_Y33_N0
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\InB[0]~input_o\ & ((\InB[1]~input_o\) # ((\reg[1][8]~q\)))) # (!\InB[0]~input_o\ & (!\InB[1]~input_o\ & ((\reg[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[1][8]~q\,
	datad => \reg[0][8]~q\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X46_Y33_N6
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\InB[1]~input_o\ & ((\Mux41~0_combout\ & ((\reg[3][8]~q\))) # (!\Mux41~0_combout\ & (\reg[2][8]~q\)))) # (!\InB[1]~input_o\ & (((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][8]~q\,
	datab => \InB[1]~input_o\,
	datac => \reg[3][8]~q\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X46_Y31_N4
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux4~0_combout\ & (\Mux4~1_combout\)) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux41~1_combout\))) # (!\Mux4~1_combout\ & (\reg[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][8]~q\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X46_Y31_N22
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux4~0_combout\ & ((\Mux41~2_combout\ & (\reg[6][8]~q\)) # (!\Mux41~2_combout\ & ((\reg[5][8]~q\))))) # (!\Mux4~0_combout\ & (((\Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \reg[6][8]~q\,
	datac => \Mux41~2_combout\,
	datad => \reg[5][8]~q\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X46_Y31_N24
\temp_outB[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(8) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(8))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0clkctrl_outclk\,
	datab => temp_outB(8),
	datac => \Mux41~3_combout\,
	combout => temp_outB(8));

-- Location: LCCOMB_X45_Y33_N20
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux4~0_combout\ & ((\Mux4~1_combout\) # ((\reg[5][9]~q\)))) # (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & (\reg[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][9]~q\,
	datad => \reg[5][9]~q\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X44_Y33_N8
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][9]~q\))) # (!\InB[1]~input_o\ & (\reg[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][9]~q\,
	datad => \reg[2][9]~q\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X44_Y33_N22
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\InB[0]~input_o\ & ((\Mux42~0_combout\ & ((\reg[3][9]~q\))) # (!\Mux42~0_combout\ & (\reg[1][9]~q\)))) # (!\InB[0]~input_o\ & (\Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \Mux42~0_combout\,
	datac => \reg[1][9]~q\,
	datad => \reg[3][9]~q\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X44_Y33_N30
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux4~1_combout\ & ((\Mux42~2_combout\ & (\reg[6][9]~q\)) # (!\Mux42~2_combout\ & ((\Mux42~1_combout\))))) # (!\Mux4~1_combout\ & (((\Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][9]~q\,
	datab => \Mux4~1_combout\,
	datac => \Mux42~2_combout\,
	datad => \Mux42~1_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X44_Y33_N20
\temp_outB[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(9) = (GLOBAL(\Mux1~0clkctrl_outclk\) & ((temp_outB(9)))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & (\Mux42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => temp_outB(9),
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(9));

-- Location: LCCOMB_X45_Y32_N16
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\InB[0]~input_o\ & ((\reg[1][10]~q\) # ((\InB[1]~input_o\)))) # (!\InB[0]~input_o\ & (((\reg[0][10]~q\ & !\InB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[1][10]~q\,
	datac => \reg[0][10]~q\,
	datad => \InB[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X44_Y32_N22
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\InB[1]~input_o\ & ((\Mux43~0_combout\ & (\reg[3][10]~q\)) # (!\Mux43~0_combout\ & ((\reg[2][10]~q\))))) # (!\InB[1]~input_o\ & (((\Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][10]~q\,
	datab => \reg[2][10]~q\,
	datac => \InB[1]~input_o\,
	datad => \Mux43~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X44_Y32_N26
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux4~1_combout\ & ((\Mux4~0_combout\) # ((\Mux43~1_combout\)))) # (!\Mux4~1_combout\ & (!\Mux4~0_combout\ & (\reg[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \reg[4][10]~q\,
	datad => \Mux43~1_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X44_Y32_N4
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux43~2_combout\ & ((\reg[6][10]~q\) # ((!\Mux4~0_combout\)))) # (!\Mux43~2_combout\ & (((\reg[5][10]~q\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][10]~q\,
	datab => \reg[5][10]~q\,
	datac => \Mux43~2_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X44_Y32_N14
\temp_outB[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(10) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(10))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux43~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_outB(10),
	datac => \Mux43~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(10));

-- Location: LCCOMB_X45_Y33_N14
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux4~0_combout\ & ((\reg[5][11]~q\) # ((\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & (((\reg[4][11]~q\ & !\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \reg[5][11]~q\,
	datac => \reg[4][11]~q\,
	datad => \Mux4~1_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X44_Y33_N14
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][11]~q\))) # (!\InB[1]~input_o\ & (\reg[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][11]~q\,
	datad => \reg[2][11]~q\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X44_Y33_N16
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\InB[0]~input_o\ & ((\Mux44~0_combout\ & ((\reg[3][11]~q\))) # (!\Mux44~0_combout\ & (\reg[1][11]~q\)))) # (!\InB[0]~input_o\ & (\Mux44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \Mux44~0_combout\,
	datac => \reg[1][11]~q\,
	datad => \reg[3][11]~q\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X44_Y33_N12
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux44~2_combout\ & (((\reg[6][11]~q\) # (!\Mux4~1_combout\)))) # (!\Mux44~2_combout\ & (\Mux44~1_combout\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~2_combout\,
	datab => \Mux44~1_combout\,
	datac => \reg[6][11]~q\,
	datad => \Mux4~1_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X44_Y33_N2
\temp_outB[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(11) = (GLOBAL(\Mux1~0clkctrl_outclk\) & ((temp_outB(11)))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & (\Mux44~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~3_combout\,
	datab => temp_outB(11),
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(11));

-- Location: LCCOMB_X44_Y33_N10
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\InB[0]~input_o\ & (((\reg[1][12]~q\) # (\InB[1]~input_o\)))) # (!\InB[0]~input_o\ & (\reg[0][12]~q\ & ((!\InB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[0][12]~q\,
	datac => \reg[1][12]~q\,
	datad => \InB[1]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X40_Y31_N20
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\InB[1]~input_o\ & ((\Mux45~0_combout\ & (\reg[3][12]~q\)) # (!\Mux45~0_combout\ & ((\reg[2][12]~q\))))) # (!\InB[1]~input_o\ & (((\Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][12]~q\,
	datab => \InB[1]~input_o\,
	datac => \reg[2][12]~q\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X40_Y31_N24
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux4~0_combout\ & (\Mux4~1_combout\)) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux45~1_combout\))) # (!\Mux4~1_combout\ & (\reg[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][12]~q\,
	datad => \Mux45~1_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X40_Y31_N30
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux4~0_combout\ & ((\Mux45~2_combout\ & (\reg[6][12]~q\)) # (!\Mux45~2_combout\ & ((\reg[5][12]~q\))))) # (!\Mux4~0_combout\ & (((\Mux45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][12]~q\,
	datab => \reg[5][12]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X40_Y31_N22
\temp_outB[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(12) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(12))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(12),
	datac => \Mux45~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(12));

-- Location: LCCOMB_X45_Y32_N10
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\InB[0]~input_o\ & (\InB[1]~input_o\)) # (!\InB[0]~input_o\ & ((\InB[1]~input_o\ & ((\reg[2][13]~q\))) # (!\InB[1]~input_o\ & (\reg[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \InB[1]~input_o\,
	datac => \reg[0][13]~q\,
	datad => \reg[2][13]~q\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X44_Y31_N12
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\InB[0]~input_o\ & ((\Mux46~0_combout\ & (\reg[3][13]~q\)) # (!\Mux46~0_combout\ & ((\reg[1][13]~q\))))) # (!\InB[0]~input_o\ & (((\Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \reg[3][13]~q\,
	datac => \reg[1][13]~q\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X45_Y33_N22
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux4~0_combout\ & (((\Mux4~1_combout\) # (\reg[5][13]~q\)))) # (!\Mux4~0_combout\ & (\reg[4][13]~q\ & (!\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \reg[4][13]~q\,
	datac => \Mux4~1_combout\,
	datad => \reg[5][13]~q\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X43_Y31_N0
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux4~1_combout\ & ((\Mux46~2_combout\ & (\reg[6][13]~q\)) # (!\Mux46~2_combout\ & ((\Mux46~1_combout\))))) # (!\Mux4~1_combout\ & (((\Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][13]~q\,
	datab => \Mux4~1_combout\,
	datac => \Mux46~1_combout\,
	datad => \Mux46~2_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X43_Y31_N22
\temp_outB[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(13) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(13))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux46~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(13),
	datac => \Mux1~0clkctrl_outclk\,
	datad => \Mux46~3_combout\,
	combout => temp_outB(13));

-- Location: LCCOMB_X46_Y32_N20
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\InB[0]~input_o\ & ((\reg[1][14]~q\) # ((\InB[1]~input_o\)))) # (!\InB[0]~input_o\ & (((!\InB[1]~input_o\ & \reg[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][14]~q\,
	datab => \InB[0]~input_o\,
	datac => \InB[1]~input_o\,
	datad => \reg[0][14]~q\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X46_Y32_N10
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\InB[1]~input_o\ & ((\Mux47~0_combout\ & ((\reg[3][14]~q\))) # (!\Mux47~0_combout\ & (\reg[2][14]~q\)))) # (!\InB[1]~input_o\ & (((\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][14]~q\,
	datab => \reg[3][14]~q\,
	datac => \InB[1]~input_o\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X45_Y33_N24
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\) # (\Mux47~1_combout\)))) # (!\Mux4~1_combout\ & (\reg[4][14]~q\ & (!\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \reg[4][14]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux47~1_combout\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X47_Y33_N0
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\Mux4~0_combout\ & ((\Mux47~2_combout\ & (\reg[6][14]~q\)) # (!\Mux47~2_combout\ & ((\reg[5][14]~q\))))) # (!\Mux4~0_combout\ & (((\Mux47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[6][14]~q\,
	datab => \Mux4~0_combout\,
	datac => \reg[5][14]~q\,
	datad => \Mux47~2_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X47_Y33_N26
\temp_outB[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(14) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (temp_outB(14))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux47~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_outB(14),
	datac => \Mux1~0clkctrl_outclk\,
	datad => \Mux47~3_combout\,
	combout => temp_outB(14));

-- Location: LCCOMB_X46_Y33_N18
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\InB[1]~input_o\ & (((\reg[2][15]~q\) # (\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & (\reg[0][15]~q\ & ((!\InB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][15]~q\,
	datab => \InB[1]~input_o\,
	datac => \reg[2][15]~q\,
	datad => \InB[0]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X45_Y33_N12
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\InB[0]~input_o\ & ((\Mux48~0_combout\ & (\reg[3][15]~q\)) # (!\Mux48~0_combout\ & ((\reg[1][15]~q\))))) # (!\InB[0]~input_o\ & (((\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][15]~q\,
	datab => \InB[0]~input_o\,
	datac => \reg[1][15]~q\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X45_Y33_N2
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux4~0_combout\ & ((\Mux4~1_combout\) # ((\reg[5][15]~q\)))) # (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & (\reg[4][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \reg[4][15]~q\,
	datad => \reg[5][15]~q\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X45_Y33_N10
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux48~2_combout\ & (((\reg[6][15]~q\) # (!\Mux4~1_combout\)))) # (!\Mux48~2_combout\ & (\Mux48~1_combout\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux48~2_combout\,
	datac => \reg[6][15]~q\,
	datad => \Mux4~1_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X45_Y33_N30
\temp_outB[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp_outB(15) = (GLOBAL(\Mux1~0clkctrl_outclk\) & ((temp_outB(15)))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & (\Mux48~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~3_combout\,
	datac => temp_outB(15),
	datad => \Mux1~0clkctrl_outclk\,
	combout => temp_outB(15));

-- Location: LCCOMB_X47_Y30_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\InB[1]~input_o\ & (((\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & ((\InB[0]~input_o\ & (busy(1))) # (!\InB[0]~input_o\ & ((busy(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => busy(1),
	datac => busy(0),
	datad => \InB[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X47_Y30_N22
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\InB[1]~input_o\ & ((\Mux0~0_combout\ & (busy(3))) # (!\Mux0~0_combout\ & ((busy(2)))))) # (!\InB[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => busy(3),
	datac => busy(2),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X47_Y30_N20
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux4~1_combout\ & (((\Mux0~1_combout\) # (\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & (busy(4) & ((!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => busy(4),
	datab => \Mux4~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X47_Y33_N22
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux4~0_combout\ & ((\Mux0~2_combout\ & (busy(6))) # (!\Mux0~2_combout\ & ((busy(5)))))) # (!\Mux4~0_combout\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => busy(6),
	datab => \Mux4~0_combout\,
	datac => busy(5),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X47_Y33_N24
busyB : cycloneive_lcell_comb
-- Equation(s):
-- \busyB~combout\ = (GLOBAL(\Mux1~0clkctrl_outclk\) & (\busyB~combout\)) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \busyB~combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => \busyB~combout\);

-- Location: LCCOMB_X46_Y33_N16
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & ((\tag[5][0]~q\))) # (!\Mux4~0_combout\ & (\tag[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \tag[4][0]~q\,
	datac => \Mux4~0_combout\,
	datad => \tag[5][0]~q\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X46_Y33_N12
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\InB[1]~input_o\ & ((\tag[2][0]~q\) # ((\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & (((!\InB[0]~input_o\ & \tag[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[2][0]~q\,
	datab => \InB[1]~input_o\,
	datac => \InB[0]~input_o\,
	datad => \tag[0][0]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X46_Y33_N20
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\tag[3][0]~q\) # (!\InB[0]~input_o\)))) # (!\Mux4~2_combout\ & (\tag[1][0]~q\ & ((\InB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \tag[1][0]~q\,
	datac => \tag[3][0]~q\,
	datad => \InB[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X46_Y33_N26
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~1_combout\ & ((\Mux4~4_combout\ & ((\tag[6][0]~q\))) # (!\Mux4~4_combout\ & (\Mux4~3_combout\)))) # (!\Mux4~1_combout\ & (\Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux4~3_combout\,
	datad => \tag[6][0]~q\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X46_Y33_N8
\tagB[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagB(0) = (GLOBAL(\Mux1~0clkctrl_outclk\) & ((tagB(0)))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & (\Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datac => tagB(0),
	datad => \Mux1~0clkctrl_outclk\,
	combout => tagB(0));

-- Location: LCCOMB_X44_Y30_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\InB[1]~input_o\ & (((\InB[0]~input_o\)))) # (!\InB[1]~input_o\ & ((\InB[0]~input_o\ & (\tag[1][1]~q\)) # (!\InB[0]~input_o\ & ((\tag[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[1][1]~q\,
	datab => \InB[1]~input_o\,
	datac => \tag[0][1]~q\,
	datad => \InB[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X44_Y30_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\InB[1]~input_o\ & ((\Mux3~0_combout\ & (\tag[3][1]~q\)) # (!\Mux3~0_combout\ & ((\tag[2][1]~q\))))) # (!\InB[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => \tag[3][1]~q\,
	datac => \tag[2][1]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X46_Y31_N16
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux4~0_combout\ & (((\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & ((\Mux4~1_combout\ & ((\Mux3~1_combout\))) # (!\Mux4~1_combout\ & (\tag[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[4][1]~q\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X46_Y31_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux4~0_combout\ & ((\Mux3~2_combout\ & ((\tag[6][1]~q\))) # (!\Mux3~2_combout\ & (\tag[5][1]~q\)))) # (!\Mux4~0_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag[5][1]~q\,
	datab => \tag[6][1]~q\,
	datac => \Mux4~0_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X46_Y31_N2
\tagB[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagB(1) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (tagB(1))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tagB(1),
	datac => \Mux1~0clkctrl_outclk\,
	datad => \Mux3~3_combout\,
	combout => tagB(1));

-- Location: LCCOMB_X46_Y33_N4
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux4~1_combout\ & (\Mux4~0_combout\)) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & (\tag[5][2]~q\)) # (!\Mux4~0_combout\ & ((\tag[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \tag[5][2]~q\,
	datad => \tag[4][2]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X44_Y30_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\InB[1]~input_o\ & ((\InB[0]~input_o\) # ((\tag[2][2]~q\)))) # (!\InB[1]~input_o\ & (!\InB[0]~input_o\ & (\tag[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[1]~input_o\,
	datab => \InB[0]~input_o\,
	datac => \tag[0][2]~q\,
	datad => \tag[2][2]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X46_Y33_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\InB[0]~input_o\ & ((\Mux2~0_combout\ & (\tag[3][2]~q\)) # (!\Mux2~0_combout\ & ((\tag[1][2]~q\))))) # (!\InB[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InB[0]~input_o\,
	datab => \tag[3][2]~q\,
	datac => \Mux2~0_combout\,
	datad => \tag[1][2]~q\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X46_Y33_N22
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\tag[6][2]~q\) # ((!\Mux4~1_combout\)))) # (!\Mux2~2_combout\ & (((\Mux2~1_combout\ & \Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \tag[6][2]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X46_Y33_N24
\tagB[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- tagB(2) = (GLOBAL(\Mux1~0clkctrl_outclk\) & (tagB(2))) # (!GLOBAL(\Mux1~0clkctrl_outclk\) & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tagB(2),
	datac => \Mux2~3_combout\,
	datad => \Mux1~0clkctrl_outclk\,
	combout => tagB(2));

ww_outA(0) <= \outA[0]~output_o\;

ww_outA(1) <= \outA[1]~output_o\;

ww_outA(2) <= \outA[2]~output_o\;

ww_outA(3) <= \outA[3]~output_o\;

ww_outA(4) <= \outA[4]~output_o\;

ww_outA(5) <= \outA[5]~output_o\;

ww_outA(6) <= \outA[6]~output_o\;

ww_outA(7) <= \outA[7]~output_o\;

ww_outA(8) <= \outA[8]~output_o\;

ww_outA(9) <= \outA[9]~output_o\;

ww_outA(10) <= \outA[10]~output_o\;

ww_outA(11) <= \outA[11]~output_o\;

ww_outA(12) <= \outA[12]~output_o\;

ww_outA(13) <= \outA[13]~output_o\;

ww_outA(14) <= \outA[14]~output_o\;

ww_outA(15) <= \outA[15]~output_o\;

ww_outA(16) <= \outA[16]~output_o\;

ww_outA(17) <= \outA[17]~output_o\;

ww_outA(18) <= \outA[18]~output_o\;

ww_outA(19) <= \outA[19]~output_o\;

ww_outB(0) <= \outB[0]~output_o\;

ww_outB(1) <= \outB[1]~output_o\;

ww_outB(2) <= \outB[2]~output_o\;

ww_outB(3) <= \outB[3]~output_o\;

ww_outB(4) <= \outB[4]~output_o\;

ww_outB(5) <= \outB[5]~output_o\;

ww_outB(6) <= \outB[6]~output_o\;

ww_outB(7) <= \outB[7]~output_o\;

ww_outB(8) <= \outB[8]~output_o\;

ww_outB(9) <= \outB[9]~output_o\;

ww_outB(10) <= \outB[10]~output_o\;

ww_outB(11) <= \outB[11]~output_o\;

ww_outB(12) <= \outB[12]~output_o\;

ww_outB(13) <= \outB[13]~output_o\;

ww_outB(14) <= \outB[14]~output_o\;

ww_outB(15) <= \outB[15]~output_o\;

ww_outB(16) <= \outB[16]~output_o\;

ww_outB(17) <= \outB[17]~output_o\;

ww_outB(18) <= \outB[18]~output_o\;

ww_outB(19) <= \outB[19]~output_o\;
END structure;


