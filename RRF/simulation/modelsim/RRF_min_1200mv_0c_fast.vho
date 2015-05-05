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

-- DATE "05/04/2015 00:37:29"

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

ENTITY 	RRF IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tag_A1 : IN std_logic_vector(2 DOWNTO 0);
	tag_B1 : IN std_logic_vector(2 DOWNTO 0);
	tag_A2 : IN std_logic_vector(2 DOWNTO 0);
	tag_B2 : IN std_logic_vector(2 DOWNTO 0);
	data_RRFA1 : OUT std_logic_vector(15 DOWNTO 0);
	data_RRFB1 : OUT std_logic_vector(15 DOWNTO 0);
	data_RRFA2 : OUT std_logic_vector(15 DOWNTO 0);
	data_RRFB2 : OUT std_logic_vector(15 DOWNTO 0);
	tag_ROB : IN std_logic_vector(2 DOWNTO 0);
	data_RRF : OUT std_logic_vector(15 DOWNTO 0);
	tag_in1 : IN std_logic_vector(2 DOWNTO 0);
	tag_en1 : IN std_logic;
	tag_in2 : IN std_logic_vector(2 DOWNTO 0);
	tag_en2 : IN std_logic;
	tag_data_in : IN std_logic_vector(18 DOWNTO 0);
	tag_data_en : IN std_logic
	);
END RRF;

-- Design Ports Information
-- data_RRFA1[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[9]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA1[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[10]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[12]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB1[15]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[14]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFA2[15]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[8]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[14]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRFB2[15]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[9]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[13]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_RRF[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A1[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A1[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A1[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B1[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B1[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B1[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A2[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A2[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_A2[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B2[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B2[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_B2[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ROB[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ROB[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ROB[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_en	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[18]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[16]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[17]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in2[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in2[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in2[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_en2	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in1[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in1[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_in1[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_en1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[11]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[12]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[14]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_data_in[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RRF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_tag_A1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_B1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_A2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_B2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_RRFA1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_RRFB1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_RRFA2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_RRFB2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tag_ROB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_RRF : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tag_in1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_en1 : std_logic;
SIGNAL ww_tag_in2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_en2 : std_logic;
SIGNAL ww_tag_data_in : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_tag_data_en : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_RRFA1[0]~output_o\ : std_logic;
SIGNAL \data_RRFA1[1]~output_o\ : std_logic;
SIGNAL \data_RRFA1[2]~output_o\ : std_logic;
SIGNAL \data_RRFA1[3]~output_o\ : std_logic;
SIGNAL \data_RRFA1[4]~output_o\ : std_logic;
SIGNAL \data_RRFA1[5]~output_o\ : std_logic;
SIGNAL \data_RRFA1[6]~output_o\ : std_logic;
SIGNAL \data_RRFA1[7]~output_o\ : std_logic;
SIGNAL \data_RRFA1[8]~output_o\ : std_logic;
SIGNAL \data_RRFA1[9]~output_o\ : std_logic;
SIGNAL \data_RRFA1[10]~output_o\ : std_logic;
SIGNAL \data_RRFA1[11]~output_o\ : std_logic;
SIGNAL \data_RRFA1[12]~output_o\ : std_logic;
SIGNAL \data_RRFA1[13]~output_o\ : std_logic;
SIGNAL \data_RRFA1[14]~output_o\ : std_logic;
SIGNAL \data_RRFA1[15]~output_o\ : std_logic;
SIGNAL \data_RRFB1[0]~output_o\ : std_logic;
SIGNAL \data_RRFB1[1]~output_o\ : std_logic;
SIGNAL \data_RRFB1[2]~output_o\ : std_logic;
SIGNAL \data_RRFB1[3]~output_o\ : std_logic;
SIGNAL \data_RRFB1[4]~output_o\ : std_logic;
SIGNAL \data_RRFB1[5]~output_o\ : std_logic;
SIGNAL \data_RRFB1[6]~output_o\ : std_logic;
SIGNAL \data_RRFB1[7]~output_o\ : std_logic;
SIGNAL \data_RRFB1[8]~output_o\ : std_logic;
SIGNAL \data_RRFB1[9]~output_o\ : std_logic;
SIGNAL \data_RRFB1[10]~output_o\ : std_logic;
SIGNAL \data_RRFB1[11]~output_o\ : std_logic;
SIGNAL \data_RRFB1[12]~output_o\ : std_logic;
SIGNAL \data_RRFB1[13]~output_o\ : std_logic;
SIGNAL \data_RRFB1[14]~output_o\ : std_logic;
SIGNAL \data_RRFB1[15]~output_o\ : std_logic;
SIGNAL \data_RRFA2[0]~output_o\ : std_logic;
SIGNAL \data_RRFA2[1]~output_o\ : std_logic;
SIGNAL \data_RRFA2[2]~output_o\ : std_logic;
SIGNAL \data_RRFA2[3]~output_o\ : std_logic;
SIGNAL \data_RRFA2[4]~output_o\ : std_logic;
SIGNAL \data_RRFA2[5]~output_o\ : std_logic;
SIGNAL \data_RRFA2[6]~output_o\ : std_logic;
SIGNAL \data_RRFA2[7]~output_o\ : std_logic;
SIGNAL \data_RRFA2[8]~output_o\ : std_logic;
SIGNAL \data_RRFA2[9]~output_o\ : std_logic;
SIGNAL \data_RRFA2[10]~output_o\ : std_logic;
SIGNAL \data_RRFA2[11]~output_o\ : std_logic;
SIGNAL \data_RRFA2[12]~output_o\ : std_logic;
SIGNAL \data_RRFA2[13]~output_o\ : std_logic;
SIGNAL \data_RRFA2[14]~output_o\ : std_logic;
SIGNAL \data_RRFA2[15]~output_o\ : std_logic;
SIGNAL \data_RRFB2[0]~output_o\ : std_logic;
SIGNAL \data_RRFB2[1]~output_o\ : std_logic;
SIGNAL \data_RRFB2[2]~output_o\ : std_logic;
SIGNAL \data_RRFB2[3]~output_o\ : std_logic;
SIGNAL \data_RRFB2[4]~output_o\ : std_logic;
SIGNAL \data_RRFB2[5]~output_o\ : std_logic;
SIGNAL \data_RRFB2[6]~output_o\ : std_logic;
SIGNAL \data_RRFB2[7]~output_o\ : std_logic;
SIGNAL \data_RRFB2[8]~output_o\ : std_logic;
SIGNAL \data_RRFB2[9]~output_o\ : std_logic;
SIGNAL \data_RRFB2[10]~output_o\ : std_logic;
SIGNAL \data_RRFB2[11]~output_o\ : std_logic;
SIGNAL \data_RRFB2[12]~output_o\ : std_logic;
SIGNAL \data_RRFB2[13]~output_o\ : std_logic;
SIGNAL \data_RRFB2[14]~output_o\ : std_logic;
SIGNAL \data_RRFB2[15]~output_o\ : std_logic;
SIGNAL \data_RRF[0]~output_o\ : std_logic;
SIGNAL \data_RRF[1]~output_o\ : std_logic;
SIGNAL \data_RRF[2]~output_o\ : std_logic;
SIGNAL \data_RRF[3]~output_o\ : std_logic;
SIGNAL \data_RRF[4]~output_o\ : std_logic;
SIGNAL \data_RRF[5]~output_o\ : std_logic;
SIGNAL \data_RRF[6]~output_o\ : std_logic;
SIGNAL \data_RRF[7]~output_o\ : std_logic;
SIGNAL \data_RRF[8]~output_o\ : std_logic;
SIGNAL \data_RRF[9]~output_o\ : std_logic;
SIGNAL \data_RRF[10]~output_o\ : std_logic;
SIGNAL \data_RRF[11]~output_o\ : std_logic;
SIGNAL \data_RRF[12]~output_o\ : std_logic;
SIGNAL \data_RRF[13]~output_o\ : std_logic;
SIGNAL \data_RRF[14]~output_o\ : std_logic;
SIGNAL \data_RRF[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tag_A1[0]~input_o\ : std_logic;
SIGNAL \tag_data_en~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \tag_in1[1]~input_o\ : std_logic;
SIGNAL \tag_in1[2]~input_o\ : std_logic;
SIGNAL \tag_en1~input_o\ : std_logic;
SIGNAL \tag_in1[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \tag_in2[1]~input_o\ : std_logic;
SIGNAL \tag_in2[2]~input_o\ : std_logic;
SIGNAL \tag_in2[0]~input_o\ : std_logic;
SIGNAL \tag_en2~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \tag_data_in[18]~input_o\ : std_logic;
SIGNAL \tag_data_in[16]~input_o\ : std_logic;
SIGNAL \tag_data_in[17]~input_o\ : std_logic;
SIGNAL \memory~0_combout\ : std_logic;
SIGNAL \memory~1_combout\ : std_logic;
SIGNAL \memory[5][16]~q\ : std_logic;
SIGNAL \tag_data_in[0]~input_o\ : std_logic;
SIGNAL \memory~2_combout\ : std_logic;
SIGNAL \memory[5][0]~q\ : std_logic;
SIGNAL \data_RRFA1~0_combout\ : std_logic;
SIGNAL \tag_A1[2]~input_o\ : std_logic;
SIGNAL \tag_A1[1]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \memory~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \memory~4_combout\ : std_logic;
SIGNAL \memory[3][0]~q\ : std_logic;
SIGNAL \memory[3][16]~q\ : std_logic;
SIGNAL \data_RRFA1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \memory~5_combout\ : std_logic;
SIGNAL \memory~6_combout\ : std_logic;
SIGNAL \memory[1][0]~q\ : std_logic;
SIGNAL \memory[1][16]~q\ : std_logic;
SIGNAL \data_RRFA1~2_combout\ : std_logic;
SIGNAL \data_RRFA1~3_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \memory~7_combout\ : std_logic;
SIGNAL \memory~8_combout\ : std_logic;
SIGNAL \memory[7][0]~q\ : std_logic;
SIGNAL \memory[7][16]~q\ : std_logic;
SIGNAL \data_RRFA1~4_combout\ : std_logic;
SIGNAL \data_RRFA1~5_combout\ : std_logic;
SIGNAL \memory~15_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \memory~16_combout\ : std_logic;
SIGNAL \memory[6][0]~q\ : std_logic;
SIGNAL \memory[6][16]~feeder_combout\ : std_logic;
SIGNAL \memory[6][16]~q\ : std_logic;
SIGNAL \data_RRFA1~10_combout\ : std_logic;
SIGNAL \memory~9_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \memory~10_combout\ : std_logic;
SIGNAL \memory[2][0]~q\ : std_logic;
SIGNAL \memory[2][16]~feeder_combout\ : std_logic;
SIGNAL \memory[2][16]~q\ : std_logic;
SIGNAL \data_RRFA1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \memory~11_combout\ : std_logic;
SIGNAL \memory~12_combout\ : std_logic;
SIGNAL \memory[4][0]~q\ : std_logic;
SIGNAL \memory[4][16]~q\ : std_logic;
SIGNAL \data_RRFA1~7_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \memory~13_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \memory~14_combout\ : std_logic;
SIGNAL \memory[0][0]~q\ : std_logic;
SIGNAL \memory[0][16]~q\ : std_logic;
SIGNAL \data_RRFA1~8_combout\ : std_logic;
SIGNAL \data_RRFA1~9_combout\ : std_logic;
SIGNAL \data_RRFA1~11_combout\ : std_logic;
SIGNAL \data_RRFA1~12_combout\ : std_logic;
SIGNAL \data_RRFA1[0]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[1]~input_o\ : std_logic;
SIGNAL \memory~17_combout\ : std_logic;
SIGNAL \memory[2][1]~q\ : std_logic;
SIGNAL \data_RRFA1~19_combout\ : std_logic;
SIGNAL \memory[6][1]~q\ : std_logic;
SIGNAL \data_RRFA1~23_combout\ : std_logic;
SIGNAL \memory[4][1]~q\ : std_logic;
SIGNAL \data_RRFA1~20_combout\ : std_logic;
SIGNAL \memory[0][1]~q\ : std_logic;
SIGNAL \data_RRFA1~21_combout\ : std_logic;
SIGNAL \data_RRFA1~22_combout\ : std_logic;
SIGNAL \data_RRFA1~24_combout\ : std_logic;
SIGNAL \memory[7][1]~q\ : std_logic;
SIGNAL \data_RRFA1~17_combout\ : std_logic;
SIGNAL \memory[3][1]~q\ : std_logic;
SIGNAL \data_RRFA1~14_combout\ : std_logic;
SIGNAL \memory[1][1]~q\ : std_logic;
SIGNAL \data_RRFA1~15_combout\ : std_logic;
SIGNAL \data_RRFA1~16_combout\ : std_logic;
SIGNAL \memory[5][1]~q\ : std_logic;
SIGNAL \data_RRFA1~13_combout\ : std_logic;
SIGNAL \data_RRFA1~18_combout\ : std_logic;
SIGNAL \data_RRFA1~25_combout\ : std_logic;
SIGNAL \data_RRFA1[1]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[2]~input_o\ : std_logic;
SIGNAL \memory~18_combout\ : std_logic;
SIGNAL \memory[7][2]~q\ : std_logic;
SIGNAL \data_RRFA1~30_combout\ : std_logic;
SIGNAL \memory[5][2]~q\ : std_logic;
SIGNAL \data_RRFA1~26_combout\ : std_logic;
SIGNAL \memory[3][2]~q\ : std_logic;
SIGNAL \data_RRFA1~27_combout\ : std_logic;
SIGNAL \memory[1][2]~q\ : std_logic;
SIGNAL \data_RRFA1~28_combout\ : std_logic;
SIGNAL \data_RRFA1~29_combout\ : std_logic;
SIGNAL \data_RRFA1~31_combout\ : std_logic;
SIGNAL \memory[6][2]~q\ : std_logic;
SIGNAL \data_RRFA1~36_combout\ : std_logic;
SIGNAL \memory[4][2]~q\ : std_logic;
SIGNAL \data_RRFA1~33_combout\ : std_logic;
SIGNAL \memory[0][2]~q\ : std_logic;
SIGNAL \data_RRFA1~34_combout\ : std_logic;
SIGNAL \data_RRFA1~35_combout\ : std_logic;
SIGNAL \memory[2][2]~q\ : std_logic;
SIGNAL \data_RRFA1~32_combout\ : std_logic;
SIGNAL \data_RRFA1~37_combout\ : std_logic;
SIGNAL \data_RRFA1~38_combout\ : std_logic;
SIGNAL \data_RRFA1[2]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[3]~input_o\ : std_logic;
SIGNAL \memory~19_combout\ : std_logic;
SIGNAL \memory[7][3]~q\ : std_logic;
SIGNAL \data_RRFA1~43_combout\ : std_logic;
SIGNAL \memory[5][3]~q\ : std_logic;
SIGNAL \data_RRFA1~39_combout\ : std_logic;
SIGNAL \memory[3][3]~q\ : std_logic;
SIGNAL \data_RRFA1~40_combout\ : std_logic;
SIGNAL \memory[1][3]~q\ : std_logic;
SIGNAL \data_RRFA1~41_combout\ : std_logic;
SIGNAL \data_RRFA1~42_combout\ : std_logic;
SIGNAL \data_RRFA1~44_combout\ : std_logic;
SIGNAL \memory[2][3]~q\ : std_logic;
SIGNAL \data_RRFA1~45_combout\ : std_logic;
SIGNAL \memory[6][3]~q\ : std_logic;
SIGNAL \data_RRFA1~49_combout\ : std_logic;
SIGNAL \memory[4][3]~q\ : std_logic;
SIGNAL \data_RRFA1~46_combout\ : std_logic;
SIGNAL \memory[0][3]~q\ : std_logic;
SIGNAL \data_RRFA1~47_combout\ : std_logic;
SIGNAL \data_RRFA1~48_combout\ : std_logic;
SIGNAL \data_RRFA1~50_combout\ : std_logic;
SIGNAL \data_RRFA1~51_combout\ : std_logic;
SIGNAL \data_RRFA1[3]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[4]~input_o\ : std_logic;
SIGNAL \memory~20_combout\ : std_logic;
SIGNAL \memory[2][4]~q\ : std_logic;
SIGNAL \data_RRFA1~58_combout\ : std_logic;
SIGNAL \memory[6][4]~q\ : std_logic;
SIGNAL \data_RRFA1~62_combout\ : std_logic;
SIGNAL \memory[4][4]~q\ : std_logic;
SIGNAL \data_RRFA1~59_combout\ : std_logic;
SIGNAL \memory[0][4]~q\ : std_logic;
SIGNAL \data_RRFA1~60_combout\ : std_logic;
SIGNAL \data_RRFA1~61_combout\ : std_logic;
SIGNAL \data_RRFA1~63_combout\ : std_logic;
SIGNAL \memory[5][4]~q\ : std_logic;
SIGNAL \data_RRFA1~52_combout\ : std_logic;
SIGNAL \memory[1][4]~q\ : std_logic;
SIGNAL \data_RRFA1~54_combout\ : std_logic;
SIGNAL \memory[3][4]~q\ : std_logic;
SIGNAL \data_RRFA1~53_combout\ : std_logic;
SIGNAL \data_RRFA1~55_combout\ : std_logic;
SIGNAL \memory[7][4]~q\ : std_logic;
SIGNAL \data_RRFA1~56_combout\ : std_logic;
SIGNAL \data_RRFA1~57_combout\ : std_logic;
SIGNAL \data_RRFA1~64_combout\ : std_logic;
SIGNAL \data_RRFA1[4]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[5]~input_o\ : std_logic;
SIGNAL \memory~21_combout\ : std_logic;
SIGNAL \memory[6][5]~q\ : std_logic;
SIGNAL \data_RRFA1~75_combout\ : std_logic;
SIGNAL \memory[2][5]~q\ : std_logic;
SIGNAL \data_RRFA1~71_combout\ : std_logic;
SIGNAL \memory[0][5]~q\ : std_logic;
SIGNAL \data_RRFA1~73_combout\ : std_logic;
SIGNAL \memory[4][5]~q\ : std_logic;
SIGNAL \data_RRFA1~72_combout\ : std_logic;
SIGNAL \data_RRFA1~74_combout\ : std_logic;
SIGNAL \data_RRFA1~76_combout\ : std_logic;
SIGNAL \memory[7][5]~q\ : std_logic;
SIGNAL \data_RRFA1~69_combout\ : std_logic;
SIGNAL \memory[3][5]~q\ : std_logic;
SIGNAL \data_RRFA1~66_combout\ : std_logic;
SIGNAL \memory[1][5]~q\ : std_logic;
SIGNAL \data_RRFA1~67_combout\ : std_logic;
SIGNAL \data_RRFA1~68_combout\ : std_logic;
SIGNAL \memory[5][5]~q\ : std_logic;
SIGNAL \data_RRFA1~65_combout\ : std_logic;
SIGNAL \data_RRFA1~70_combout\ : std_logic;
SIGNAL \data_RRFA1~77_combout\ : std_logic;
SIGNAL \data_RRFA1[5]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[6]~input_o\ : std_logic;
SIGNAL \memory~22_combout\ : std_logic;
SIGNAL \memory[2][6]~q\ : std_logic;
SIGNAL \data_RRFA1~84_combout\ : std_logic;
SIGNAL \memory[6][6]~q\ : std_logic;
SIGNAL \data_RRFA1~88_combout\ : std_logic;
SIGNAL \memory[4][6]~q\ : std_logic;
SIGNAL \data_RRFA1~85_combout\ : std_logic;
SIGNAL \memory[0][6]~q\ : std_logic;
SIGNAL \data_RRFA1~86_combout\ : std_logic;
SIGNAL \data_RRFA1~87_combout\ : std_logic;
SIGNAL \data_RRFA1~89_combout\ : std_logic;
SIGNAL \memory[5][6]~q\ : std_logic;
SIGNAL \data_RRFA1~78_combout\ : std_logic;
SIGNAL \memory[1][6]~q\ : std_logic;
SIGNAL \data_RRFA1~80_combout\ : std_logic;
SIGNAL \memory[3][6]~q\ : std_logic;
SIGNAL \data_RRFA1~79_combout\ : std_logic;
SIGNAL \data_RRFA1~81_combout\ : std_logic;
SIGNAL \memory[7][6]~feeder_combout\ : std_logic;
SIGNAL \memory[7][6]~q\ : std_logic;
SIGNAL \data_RRFA1~82_combout\ : std_logic;
SIGNAL \data_RRFA1~83_combout\ : std_logic;
SIGNAL \data_RRFA1~90_combout\ : std_logic;
SIGNAL \data_RRFA1[6]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[7]~input_o\ : std_logic;
SIGNAL \memory~23_combout\ : std_logic;
SIGNAL \memory[6][7]~q\ : std_logic;
SIGNAL \data_RRFA1~101_combout\ : std_logic;
SIGNAL \memory[2][7]~q\ : std_logic;
SIGNAL \data_RRFA1~97_combout\ : std_logic;
SIGNAL \memory[0][7]~q\ : std_logic;
SIGNAL \data_RRFA1~99_combout\ : std_logic;
SIGNAL \memory[4][7]~q\ : std_logic;
SIGNAL \data_RRFA1~98_combout\ : std_logic;
SIGNAL \data_RRFA1~100_combout\ : std_logic;
SIGNAL \data_RRFA1~102_combout\ : std_logic;
SIGNAL \memory[5][7]~q\ : std_logic;
SIGNAL \data_RRFA1~91_combout\ : std_logic;
SIGNAL \memory[7][7]~q\ : std_logic;
SIGNAL \data_RRFA1~95_combout\ : std_logic;
SIGNAL \memory[1][7]~q\ : std_logic;
SIGNAL \data_RRFA1~93_combout\ : std_logic;
SIGNAL \memory[3][7]~q\ : std_logic;
SIGNAL \data_RRFA1~92_combout\ : std_logic;
SIGNAL \data_RRFA1~94_combout\ : std_logic;
SIGNAL \data_RRFA1~96_combout\ : std_logic;
SIGNAL \data_RRFA1~103_combout\ : std_logic;
SIGNAL \data_RRFA1[7]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[8]~input_o\ : std_logic;
SIGNAL \memory~24_combout\ : std_logic;
SIGNAL \memory[6][8]~q\ : std_logic;
SIGNAL \data_RRFA1~114_combout\ : std_logic;
SIGNAL \memory[2][8]~q\ : std_logic;
SIGNAL \data_RRFA1~110_combout\ : std_logic;
SIGNAL \memory[0][8]~q\ : std_logic;
SIGNAL \data_RRFA1~112_combout\ : std_logic;
SIGNAL \memory[4][8]~q\ : std_logic;
SIGNAL \data_RRFA1~111_combout\ : std_logic;
SIGNAL \data_RRFA1~113_combout\ : std_logic;
SIGNAL \data_RRFA1~115_combout\ : std_logic;
SIGNAL \memory[7][8]~q\ : std_logic;
SIGNAL \data_RRFA1~108_combout\ : std_logic;
SIGNAL \memory[5][8]~q\ : std_logic;
SIGNAL \data_RRFA1~104_combout\ : std_logic;
SIGNAL \memory[1][8]~q\ : std_logic;
SIGNAL \data_RRFA1~106_combout\ : std_logic;
SIGNAL \memory[3][8]~q\ : std_logic;
SIGNAL \data_RRFA1~105_combout\ : std_logic;
SIGNAL \data_RRFA1~107_combout\ : std_logic;
SIGNAL \data_RRFA1~109_combout\ : std_logic;
SIGNAL \data_RRFA1~116_combout\ : std_logic;
SIGNAL \data_RRFA1[8]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[9]~input_o\ : std_logic;
SIGNAL \memory~25_combout\ : std_logic;
SIGNAL \memory[2][9]~q\ : std_logic;
SIGNAL \data_RRFA1~123_combout\ : std_logic;
SIGNAL \memory[4][9]~q\ : std_logic;
SIGNAL \data_RRFA1~124_combout\ : std_logic;
SIGNAL \memory[0][9]~q\ : std_logic;
SIGNAL \data_RRFA1~125_combout\ : std_logic;
SIGNAL \data_RRFA1~126_combout\ : std_logic;
SIGNAL \memory[6][9]~q\ : std_logic;
SIGNAL \data_RRFA1~127_combout\ : std_logic;
SIGNAL \data_RRFA1~128_combout\ : std_logic;
SIGNAL \memory[7][9]~q\ : std_logic;
SIGNAL \data_RRFA1~121_combout\ : std_logic;
SIGNAL \memory[5][9]~q\ : std_logic;
SIGNAL \data_RRFA1~117_combout\ : std_logic;
SIGNAL \memory[3][9]~q\ : std_logic;
SIGNAL \data_RRFA1~118_combout\ : std_logic;
SIGNAL \memory[1][9]~q\ : std_logic;
SIGNAL \data_RRFA1~119_combout\ : std_logic;
SIGNAL \data_RRFA1~120_combout\ : std_logic;
SIGNAL \data_RRFA1~122_combout\ : std_logic;
SIGNAL \data_RRFA1~129_combout\ : std_logic;
SIGNAL \data_RRFA1[9]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[10]~input_o\ : std_logic;
SIGNAL \memory~26_combout\ : std_logic;
SIGNAL \memory[6][10]~q\ : std_logic;
SIGNAL \data_RRFA1~140_combout\ : std_logic;
SIGNAL \memory[2][10]~q\ : std_logic;
SIGNAL \data_RRFA1~136_combout\ : std_logic;
SIGNAL \memory[0][10]~q\ : std_logic;
SIGNAL \data_RRFA1~138_combout\ : std_logic;
SIGNAL \memory[4][10]~q\ : std_logic;
SIGNAL \data_RRFA1~137_combout\ : std_logic;
SIGNAL \data_RRFA1~139_combout\ : std_logic;
SIGNAL \data_RRFA1~141_combout\ : std_logic;
SIGNAL \memory[7][10]~q\ : std_logic;
SIGNAL \data_RRFA1~134_combout\ : std_logic;
SIGNAL \memory[5][10]~q\ : std_logic;
SIGNAL \data_RRFA1~130_combout\ : std_logic;
SIGNAL \memory[3][10]~q\ : std_logic;
SIGNAL \data_RRFA1~131_combout\ : std_logic;
SIGNAL \memory[1][10]~q\ : std_logic;
SIGNAL \data_RRFA1~132_combout\ : std_logic;
SIGNAL \data_RRFA1~133_combout\ : std_logic;
SIGNAL \data_RRFA1~135_combout\ : std_logic;
SIGNAL \data_RRFA1~142_combout\ : std_logic;
SIGNAL \data_RRFA1[10]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[11]~input_o\ : std_logic;
SIGNAL \memory~27_combout\ : std_logic;
SIGNAL \memory[6][11]~q\ : std_logic;
SIGNAL \data_RRFA1~153_combout\ : std_logic;
SIGNAL \memory[0][11]~q\ : std_logic;
SIGNAL \data_RRFA1~151_combout\ : std_logic;
SIGNAL \memory[4][11]~q\ : std_logic;
SIGNAL \data_RRFA1~150_combout\ : std_logic;
SIGNAL \data_RRFA1~152_combout\ : std_logic;
SIGNAL \memory[2][11]~q\ : std_logic;
SIGNAL \data_RRFA1~149_combout\ : std_logic;
SIGNAL \data_RRFA1~154_combout\ : std_logic;
SIGNAL \memory[5][11]~q\ : std_logic;
SIGNAL \data_RRFA1~143_combout\ : std_logic;
SIGNAL \memory[7][11]~q\ : std_logic;
SIGNAL \data_RRFA1~147_combout\ : std_logic;
SIGNAL \memory[1][11]~q\ : std_logic;
SIGNAL \data_RRFA1~145_combout\ : std_logic;
SIGNAL \memory[3][11]~q\ : std_logic;
SIGNAL \data_RRFA1~144_combout\ : std_logic;
SIGNAL \data_RRFA1~146_combout\ : std_logic;
SIGNAL \data_RRFA1~148_combout\ : std_logic;
SIGNAL \data_RRFA1~155_combout\ : std_logic;
SIGNAL \data_RRFA1[11]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[12]~input_o\ : std_logic;
SIGNAL \memory~28_combout\ : std_logic;
SIGNAL \memory[5][12]~q\ : std_logic;
SIGNAL \data_RRFA1~156_combout\ : std_logic;
SIGNAL \memory[7][12]~q\ : std_logic;
SIGNAL \data_RRFA1~160_combout\ : std_logic;
SIGNAL \memory[3][12]~q\ : std_logic;
SIGNAL \data_RRFA1~157_combout\ : std_logic;
SIGNAL \memory[1][12]~q\ : std_logic;
SIGNAL \data_RRFA1~158_combout\ : std_logic;
SIGNAL \data_RRFA1~159_combout\ : std_logic;
SIGNAL \data_RRFA1~161_combout\ : std_logic;
SIGNAL \memory[6][12]~q\ : std_logic;
SIGNAL \data_RRFA1~166_combout\ : std_logic;
SIGNAL \memory[4][12]~q\ : std_logic;
SIGNAL \data_RRFA1~163_combout\ : std_logic;
SIGNAL \memory[0][12]~q\ : std_logic;
SIGNAL \data_RRFA1~164_combout\ : std_logic;
SIGNAL \data_RRFA1~165_combout\ : std_logic;
SIGNAL \memory[2][12]~q\ : std_logic;
SIGNAL \data_RRFA1~162_combout\ : std_logic;
SIGNAL \data_RRFA1~167_combout\ : std_logic;
SIGNAL \data_RRFA1~168_combout\ : std_logic;
SIGNAL \data_RRFA1[12]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[13]~input_o\ : std_logic;
SIGNAL \memory~29_combout\ : std_logic;
SIGNAL \memory[7][13]~q\ : std_logic;
SIGNAL \data_RRFA1~173_combout\ : std_logic;
SIGNAL \memory[5][13]~q\ : std_logic;
SIGNAL \data_RRFA1~169_combout\ : std_logic;
SIGNAL \memory[3][13]~q\ : std_logic;
SIGNAL \data_RRFA1~170_combout\ : std_logic;
SIGNAL \memory[1][13]~q\ : std_logic;
SIGNAL \data_RRFA1~171_combout\ : std_logic;
SIGNAL \data_RRFA1~172_combout\ : std_logic;
SIGNAL \data_RRFA1~174_combout\ : std_logic;
SIGNAL \memory[6][13]~q\ : std_logic;
SIGNAL \data_RRFA1~179_combout\ : std_logic;
SIGNAL \memory[2][13]~q\ : std_logic;
SIGNAL \data_RRFA1~175_combout\ : std_logic;
SIGNAL \memory[4][13]~q\ : std_logic;
SIGNAL \data_RRFA1~176_combout\ : std_logic;
SIGNAL \memory[0][13]~q\ : std_logic;
SIGNAL \data_RRFA1~177_combout\ : std_logic;
SIGNAL \data_RRFA1~178_combout\ : std_logic;
SIGNAL \data_RRFA1~180_combout\ : std_logic;
SIGNAL \data_RRFA1~181_combout\ : std_logic;
SIGNAL \data_RRFA1[13]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[14]~input_o\ : std_logic;
SIGNAL \memory~30_combout\ : std_logic;
SIGNAL \memory[5][14]~q\ : std_logic;
SIGNAL \data_RRFA1~182_combout\ : std_logic;
SIGNAL \memory[7][14]~q\ : std_logic;
SIGNAL \data_RRFA1~186_combout\ : std_logic;
SIGNAL \memory[3][14]~q\ : std_logic;
SIGNAL \data_RRFA1~183_combout\ : std_logic;
SIGNAL \memory[1][14]~q\ : std_logic;
SIGNAL \data_RRFA1~184_combout\ : std_logic;
SIGNAL \data_RRFA1~185_combout\ : std_logic;
SIGNAL \data_RRFA1~187_combout\ : std_logic;
SIGNAL \memory[2][14]~q\ : std_logic;
SIGNAL \data_RRFA1~188_combout\ : std_logic;
SIGNAL \memory[6][14]~q\ : std_logic;
SIGNAL \data_RRFA1~192_combout\ : std_logic;
SIGNAL \memory[4][14]~q\ : std_logic;
SIGNAL \data_RRFA1~189_combout\ : std_logic;
SIGNAL \memory[0][14]~q\ : std_logic;
SIGNAL \data_RRFA1~190_combout\ : std_logic;
SIGNAL \data_RRFA1~191_combout\ : std_logic;
SIGNAL \data_RRFA1~193_combout\ : std_logic;
SIGNAL \data_RRFA1~194_combout\ : std_logic;
SIGNAL \data_RRFA1[14]~reg0_q\ : std_logic;
SIGNAL \tag_data_in[15]~input_o\ : std_logic;
SIGNAL \memory~31_combout\ : std_logic;
SIGNAL \memory[5][15]~q\ : std_logic;
SIGNAL \data_RRFA1~195_combout\ : std_logic;
SIGNAL \memory[1][15]~q\ : std_logic;
SIGNAL \data_RRFA1~197_combout\ : std_logic;
SIGNAL \memory[3][15]~q\ : std_logic;
SIGNAL \data_RRFA1~196_combout\ : std_logic;
SIGNAL \data_RRFA1~198_combout\ : std_logic;
SIGNAL \memory[7][15]~q\ : std_logic;
SIGNAL \data_RRFA1~199_combout\ : std_logic;
SIGNAL \data_RRFA1~200_combout\ : std_logic;
SIGNAL \memory[6][15]~q\ : std_logic;
SIGNAL \data_RRFA1~205_combout\ : std_logic;
SIGNAL \memory[2][15]~q\ : std_logic;
SIGNAL \data_RRFA1~201_combout\ : std_logic;
SIGNAL \memory[4][15]~q\ : std_logic;
SIGNAL \data_RRFA1~202_combout\ : std_logic;
SIGNAL \memory[0][15]~q\ : std_logic;
SIGNAL \data_RRFA1~203_combout\ : std_logic;
SIGNAL \data_RRFA1~204_combout\ : std_logic;
SIGNAL \data_RRFA1~206_combout\ : std_logic;
SIGNAL \data_RRFA1~207_combout\ : std_logic;
SIGNAL \data_RRFA1[15]~reg0_q\ : std_logic;
SIGNAL \tag_B1[0]~input_o\ : std_logic;
SIGNAL \tag_B1[1]~input_o\ : std_logic;
SIGNAL \tag_B1[2]~input_o\ : std_logic;
SIGNAL \data_RRFB1~2_combout\ : std_logic;
SIGNAL \data_RRFB1~3_combout\ : std_logic;
SIGNAL \data_RRFB1~0_combout\ : std_logic;
SIGNAL \data_RRFB1~1_combout\ : std_logic;
SIGNAL \data_RRFB1~4_combout\ : std_logic;
SIGNAL \data_RRFB1[0]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~5_combout\ : std_logic;
SIGNAL \data_RRFB1~6_combout\ : std_logic;
SIGNAL \data_RRFB1~7_combout\ : std_logic;
SIGNAL \data_RRFB1~8_combout\ : std_logic;
SIGNAL \data_RRFB1~9_combout\ : std_logic;
SIGNAL \data_RRFB1[1]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~10_combout\ : std_logic;
SIGNAL \data_RRFB1~11_combout\ : std_logic;
SIGNAL \data_RRFB1~12_combout\ : std_logic;
SIGNAL \data_RRFB1~13_combout\ : std_logic;
SIGNAL \data_RRFB1~14_combout\ : std_logic;
SIGNAL \data_RRFB1[2]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~15_combout\ : std_logic;
SIGNAL \data_RRFB1~16_combout\ : std_logic;
SIGNAL \data_RRFB1~17_combout\ : std_logic;
SIGNAL \data_RRFB1~18_combout\ : std_logic;
SIGNAL \data_RRFB1~19_combout\ : std_logic;
SIGNAL \data_RRFB1[3]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~20_combout\ : std_logic;
SIGNAL \data_RRFB1~21_combout\ : std_logic;
SIGNAL \data_RRFB1~22_combout\ : std_logic;
SIGNAL \data_RRFB1~23_combout\ : std_logic;
SIGNAL \data_RRFB1~24_combout\ : std_logic;
SIGNAL \data_RRFB1[4]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~27_combout\ : std_logic;
SIGNAL \data_RRFB1~28_combout\ : std_logic;
SIGNAL \data_RRFB1~25_combout\ : std_logic;
SIGNAL \data_RRFB1~26_combout\ : std_logic;
SIGNAL \data_RRFB1~29_combout\ : std_logic;
SIGNAL \data_RRFB1[5]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~30_combout\ : std_logic;
SIGNAL \data_RRFB1~31_combout\ : std_logic;
SIGNAL \data_RRFB1~32_combout\ : std_logic;
SIGNAL \data_RRFB1~33_combout\ : std_logic;
SIGNAL \data_RRFB1~34_combout\ : std_logic;
SIGNAL \data_RRFB1[6]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~37_combout\ : std_logic;
SIGNAL \data_RRFB1~38_combout\ : std_logic;
SIGNAL \data_RRFB1~35_combout\ : std_logic;
SIGNAL \data_RRFB1~36_combout\ : std_logic;
SIGNAL \data_RRFB1~39_combout\ : std_logic;
SIGNAL \data_RRFB1[7]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~42_combout\ : std_logic;
SIGNAL \data_RRFB1~43_combout\ : std_logic;
SIGNAL \data_RRFB1~40_combout\ : std_logic;
SIGNAL \data_RRFB1~41_combout\ : std_logic;
SIGNAL \data_RRFB1~44_combout\ : std_logic;
SIGNAL \data_RRFB1[8]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~45_combout\ : std_logic;
SIGNAL \data_RRFB1~46_combout\ : std_logic;
SIGNAL \data_RRFB1~47_combout\ : std_logic;
SIGNAL \data_RRFB1~48_combout\ : std_logic;
SIGNAL \data_RRFB1~49_combout\ : std_logic;
SIGNAL \data_RRFB1[9]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~52_combout\ : std_logic;
SIGNAL \data_RRFB1~53_combout\ : std_logic;
SIGNAL \data_RRFB1~50_combout\ : std_logic;
SIGNAL \data_RRFB1~51_combout\ : std_logic;
SIGNAL \data_RRFB1~54_combout\ : std_logic;
SIGNAL \data_RRFB1[10]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~55_combout\ : std_logic;
SIGNAL \data_RRFB1~56_combout\ : std_logic;
SIGNAL \data_RRFB1~57_combout\ : std_logic;
SIGNAL \data_RRFB1~58_combout\ : std_logic;
SIGNAL \data_RRFB1~59_combout\ : std_logic;
SIGNAL \data_RRFB1[11]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~60_combout\ : std_logic;
SIGNAL \data_RRFB1~61_combout\ : std_logic;
SIGNAL \data_RRFB1~62_combout\ : std_logic;
SIGNAL \data_RRFB1~63_combout\ : std_logic;
SIGNAL \data_RRFB1~64_combout\ : std_logic;
SIGNAL \data_RRFB1[12]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~67_combout\ : std_logic;
SIGNAL \data_RRFB1~68_combout\ : std_logic;
SIGNAL \data_RRFB1~65_combout\ : std_logic;
SIGNAL \data_RRFB1~66_combout\ : std_logic;
SIGNAL \data_RRFB1~69_combout\ : std_logic;
SIGNAL \data_RRFB1[13]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~72_combout\ : std_logic;
SIGNAL \data_RRFB1~73_combout\ : std_logic;
SIGNAL \data_RRFB1~70_combout\ : std_logic;
SIGNAL \data_RRFB1~71_combout\ : std_logic;
SIGNAL \data_RRFB1~74_combout\ : std_logic;
SIGNAL \data_RRFB1[14]~reg0_q\ : std_logic;
SIGNAL \data_RRFB1~75_combout\ : std_logic;
SIGNAL \data_RRFB1~76_combout\ : std_logic;
SIGNAL \data_RRFB1~77_combout\ : std_logic;
SIGNAL \data_RRFB1~78_combout\ : std_logic;
SIGNAL \data_RRFB1~79_combout\ : std_logic;
SIGNAL \data_RRFB1[15]~reg0_q\ : std_logic;
SIGNAL \tag_A2[0]~input_o\ : std_logic;
SIGNAL \tag_A2[2]~input_o\ : std_logic;
SIGNAL \tag_A2[1]~input_o\ : std_logic;
SIGNAL \data_RRFA2~0_combout\ : std_logic;
SIGNAL \data_RRFA2~1_combout\ : std_logic;
SIGNAL \data_RRFA2~2_combout\ : std_logic;
SIGNAL \data_RRFA2~3_combout\ : std_logic;
SIGNAL \data_RRFA2~4_combout\ : std_logic;
SIGNAL \data_RRFA2[0]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~7_combout\ : std_logic;
SIGNAL \data_RRFA2~8_combout\ : std_logic;
SIGNAL \data_RRFA2~5_combout\ : std_logic;
SIGNAL \data_RRFA2~6_combout\ : std_logic;
SIGNAL \data_RRFA2~9_combout\ : std_logic;
SIGNAL \data_RRFA2[1]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~10_combout\ : std_logic;
SIGNAL \data_RRFA2~11_combout\ : std_logic;
SIGNAL \data_RRFA2~12_combout\ : std_logic;
SIGNAL \data_RRFA2~13_combout\ : std_logic;
SIGNAL \data_RRFA2~14_combout\ : std_logic;
SIGNAL \data_RRFA2[2]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~15_combout\ : std_logic;
SIGNAL \data_RRFA2~16_combout\ : std_logic;
SIGNAL \data_RRFA2~17_combout\ : std_logic;
SIGNAL \data_RRFA2~18_combout\ : std_logic;
SIGNAL \data_RRFA2~19_combout\ : std_logic;
SIGNAL \data_RRFA2[3]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~20_combout\ : std_logic;
SIGNAL \data_RRFA2~21_combout\ : std_logic;
SIGNAL \data_RRFA2~22_combout\ : std_logic;
SIGNAL \data_RRFA2~23_combout\ : std_logic;
SIGNAL \data_RRFA2~24_combout\ : std_logic;
SIGNAL \data_RRFA2[4]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~25_combout\ : std_logic;
SIGNAL \data_RRFA2~26_combout\ : std_logic;
SIGNAL \data_RRFA2~27_combout\ : std_logic;
SIGNAL \data_RRFA2~28_combout\ : std_logic;
SIGNAL \data_RRFA2~29_combout\ : std_logic;
SIGNAL \data_RRFA2~30_combout\ : std_logic;
SIGNAL \data_RRFA2[5]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~31_combout\ : std_logic;
SIGNAL \data_RRFA2~32_combout\ : std_logic;
SIGNAL \data_RRFA2~33_combout\ : std_logic;
SIGNAL \data_RRFA2~34_combout\ : std_logic;
SIGNAL \data_RRFA2~35_combout\ : std_logic;
SIGNAL \data_RRFA2[6]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~38_combout\ : std_logic;
SIGNAL \data_RRFA2~39_combout\ : std_logic;
SIGNAL \data_RRFA2~36_combout\ : std_logic;
SIGNAL \data_RRFA2~37_combout\ : std_logic;
SIGNAL \data_RRFA2~40_combout\ : std_logic;
SIGNAL \data_RRFA2[7]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~43_combout\ : std_logic;
SIGNAL \data_RRFA2~44_combout\ : std_logic;
SIGNAL \data_RRFA2~41_combout\ : std_logic;
SIGNAL \data_RRFA2~42_combout\ : std_logic;
SIGNAL \data_RRFA2~45_combout\ : std_logic;
SIGNAL \data_RRFA2[8]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~48_combout\ : std_logic;
SIGNAL \data_RRFA2~49_combout\ : std_logic;
SIGNAL \data_RRFA2~46_combout\ : std_logic;
SIGNAL \data_RRFA2~47_combout\ : std_logic;
SIGNAL \data_RRFA2~50_combout\ : std_logic;
SIGNAL \data_RRFA2[9]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~53_combout\ : std_logic;
SIGNAL \data_RRFA2~54_combout\ : std_logic;
SIGNAL \data_RRFA2~51_combout\ : std_logic;
SIGNAL \data_RRFA2~52_combout\ : std_logic;
SIGNAL \data_RRFA2~55_combout\ : std_logic;
SIGNAL \data_RRFA2[10]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~56_combout\ : std_logic;
SIGNAL \data_RRFA2~57_combout\ : std_logic;
SIGNAL \data_RRFA2~58_combout\ : std_logic;
SIGNAL \data_RRFA2~59_combout\ : std_logic;
SIGNAL \data_RRFA2~60_combout\ : std_logic;
SIGNAL \data_RRFA2[11]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~63_combout\ : std_logic;
SIGNAL \data_RRFA2~64_combout\ : std_logic;
SIGNAL \data_RRFA2~61_combout\ : std_logic;
SIGNAL \data_RRFA2~62_combout\ : std_logic;
SIGNAL \data_RRFA2~65_combout\ : std_logic;
SIGNAL \data_RRFA2[12]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~66_combout\ : std_logic;
SIGNAL \data_RRFA2~67_combout\ : std_logic;
SIGNAL \data_RRFA2~68_combout\ : std_logic;
SIGNAL \data_RRFA2~69_combout\ : std_logic;
SIGNAL \data_RRFA2~70_combout\ : std_logic;
SIGNAL \data_RRFA2[13]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~71_combout\ : std_logic;
SIGNAL \data_RRFA2~72_combout\ : std_logic;
SIGNAL \data_RRFA2~73_combout\ : std_logic;
SIGNAL \data_RRFA2~74_combout\ : std_logic;
SIGNAL \data_RRFA2~75_combout\ : std_logic;
SIGNAL \data_RRFA2[14]~reg0_q\ : std_logic;
SIGNAL \data_RRFA2~76_combout\ : std_logic;
SIGNAL \data_RRFA2~77_combout\ : std_logic;
SIGNAL \data_RRFA2~78_combout\ : std_logic;
SIGNAL \data_RRFA2~79_combout\ : std_logic;
SIGNAL \data_RRFA2~80_combout\ : std_logic;
SIGNAL \data_RRFA2[15]~reg0_q\ : std_logic;
SIGNAL \tag_B2[0]~input_o\ : std_logic;
SIGNAL \tag_B2[1]~input_o\ : std_logic;
SIGNAL \tag_B2[2]~input_o\ : std_logic;
SIGNAL \data_RRFB2~2_combout\ : std_logic;
SIGNAL \data_RRFB2~3_combout\ : std_logic;
SIGNAL \data_RRFB2~0_combout\ : std_logic;
SIGNAL \data_RRFB2~1_combout\ : std_logic;
SIGNAL \data_RRFB2~4_combout\ : std_logic;
SIGNAL \data_RRFB2[0]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~7_combout\ : std_logic;
SIGNAL \data_RRFB2~8_combout\ : std_logic;
SIGNAL \data_RRFB2~5_combout\ : std_logic;
SIGNAL \data_RRFB2~6_combout\ : std_logic;
SIGNAL \data_RRFB2~9_combout\ : std_logic;
SIGNAL \data_RRFB2[1]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~10_combout\ : std_logic;
SIGNAL \data_RRFB2~11_combout\ : std_logic;
SIGNAL \data_RRFB2~12_combout\ : std_logic;
SIGNAL \data_RRFB2~13_combout\ : std_logic;
SIGNAL \data_RRFB2~14_combout\ : std_logic;
SIGNAL \data_RRFB2[2]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~15_combout\ : std_logic;
SIGNAL \data_RRFB2~16_combout\ : std_logic;
SIGNAL \data_RRFB2~17_combout\ : std_logic;
SIGNAL \data_RRFB2~18_combout\ : std_logic;
SIGNAL \data_RRFB2~19_combout\ : std_logic;
SIGNAL \data_RRFB2[3]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~20_combout\ : std_logic;
SIGNAL \data_RRFB2~21_combout\ : std_logic;
SIGNAL \data_RRFB2~22_combout\ : std_logic;
SIGNAL \data_RRFB2~23_combout\ : std_logic;
SIGNAL \data_RRFB2~24_combout\ : std_logic;
SIGNAL \data_RRFB2[4]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~25_combout\ : std_logic;
SIGNAL \data_RRFB2~26_combout\ : std_logic;
SIGNAL \data_RRFB2~27_combout\ : std_logic;
SIGNAL \data_RRFB2~28_combout\ : std_logic;
SIGNAL \data_RRFB2~29_combout\ : std_logic;
SIGNAL \data_RRFB2[5]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~32_combout\ : std_logic;
SIGNAL \data_RRFB2~33_combout\ : std_logic;
SIGNAL \data_RRFB2~30_combout\ : std_logic;
SIGNAL \data_RRFB2~31_combout\ : std_logic;
SIGNAL \data_RRFB2~34_combout\ : std_logic;
SIGNAL \data_RRFB2[6]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~35_combout\ : std_logic;
SIGNAL \data_RRFB2~36_combout\ : std_logic;
SIGNAL \data_RRFB2~37_combout\ : std_logic;
SIGNAL \data_RRFB2~38_combout\ : std_logic;
SIGNAL \data_RRFB2~39_combout\ : std_logic;
SIGNAL \data_RRFB2[7]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~40_combout\ : std_logic;
SIGNAL \data_RRFB2~41_combout\ : std_logic;
SIGNAL \data_RRFB2~42_combout\ : std_logic;
SIGNAL \data_RRFB2~43_combout\ : std_logic;
SIGNAL \data_RRFB2~44_combout\ : std_logic;
SIGNAL \data_RRFB2[8]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~47_combout\ : std_logic;
SIGNAL \data_RRFB2~48_combout\ : std_logic;
SIGNAL \data_RRFB2~45_combout\ : std_logic;
SIGNAL \data_RRFB2~46_combout\ : std_logic;
SIGNAL \data_RRFB2~49_combout\ : std_logic;
SIGNAL \data_RRFB2[9]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~50_combout\ : std_logic;
SIGNAL \data_RRFB2~51_combout\ : std_logic;
SIGNAL \data_RRFB2~52_combout\ : std_logic;
SIGNAL \data_RRFB2~53_combout\ : std_logic;
SIGNAL \data_RRFB2~54_combout\ : std_logic;
SIGNAL \data_RRFB2[10]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~57_combout\ : std_logic;
SIGNAL \data_RRFB2~58_combout\ : std_logic;
SIGNAL \data_RRFB2~55_combout\ : std_logic;
SIGNAL \data_RRFB2~56_combout\ : std_logic;
SIGNAL \data_RRFB2~59_combout\ : std_logic;
SIGNAL \data_RRFB2[11]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~60_combout\ : std_logic;
SIGNAL \data_RRFB2~61_combout\ : std_logic;
SIGNAL \data_RRFB2~62_combout\ : std_logic;
SIGNAL \data_RRFB2~63_combout\ : std_logic;
SIGNAL \data_RRFB2~64_combout\ : std_logic;
SIGNAL \data_RRFB2[12]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~67_combout\ : std_logic;
SIGNAL \data_RRFB2~68_combout\ : std_logic;
SIGNAL \data_RRFB2~65_combout\ : std_logic;
SIGNAL \data_RRFB2~66_combout\ : std_logic;
SIGNAL \data_RRFB2~69_combout\ : std_logic;
SIGNAL \data_RRFB2[13]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~72_combout\ : std_logic;
SIGNAL \data_RRFB2~73_combout\ : std_logic;
SIGNAL \data_RRFB2~70_combout\ : std_logic;
SIGNAL \data_RRFB2~71_combout\ : std_logic;
SIGNAL \data_RRFB2~74_combout\ : std_logic;
SIGNAL \data_RRFB2[14]~reg0_q\ : std_logic;
SIGNAL \data_RRFB2~75_combout\ : std_logic;
SIGNAL \data_RRFB2~76_combout\ : std_logic;
SIGNAL \data_RRFB2~77_combout\ : std_logic;
SIGNAL \data_RRFB2~78_combout\ : std_logic;
SIGNAL \data_RRFB2~79_combout\ : std_logic;
SIGNAL \data_RRFB2[15]~reg0_q\ : std_logic;
SIGNAL \tag_ROB[0]~input_o\ : std_logic;
SIGNAL \tag_ROB[2]~input_o\ : std_logic;
SIGNAL \tag_ROB[1]~input_o\ : std_logic;
SIGNAL \data_RRF~0_combout\ : std_logic;
SIGNAL \data_RRF~1_combout\ : std_logic;
SIGNAL \data_RRF~2_combout\ : std_logic;
SIGNAL \data_RRF~3_combout\ : std_logic;
SIGNAL \data_RRF~4_combout\ : std_logic;
SIGNAL \data_RRF[0]~reg0_q\ : std_logic;
SIGNAL \data_RRF~7_combout\ : std_logic;
SIGNAL \data_RRF~8_combout\ : std_logic;
SIGNAL \data_RRF~5_combout\ : std_logic;
SIGNAL \data_RRF~6_combout\ : std_logic;
SIGNAL \data_RRF~9_combout\ : std_logic;
SIGNAL \data_RRF[1]~reg0_q\ : std_logic;
SIGNAL \data_RRF~10_combout\ : std_logic;
SIGNAL \data_RRF~11_combout\ : std_logic;
SIGNAL \data_RRF~12_combout\ : std_logic;
SIGNAL \data_RRF~13_combout\ : std_logic;
SIGNAL \data_RRF~14_combout\ : std_logic;
SIGNAL \data_RRF[2]~reg0_q\ : std_logic;
SIGNAL \data_RRF~15_combout\ : std_logic;
SIGNAL \data_RRF~16_combout\ : std_logic;
SIGNAL \data_RRF~17_combout\ : std_logic;
SIGNAL \data_RRF~18_combout\ : std_logic;
SIGNAL \data_RRF~19_combout\ : std_logic;
SIGNAL \data_RRF[3]~reg0_q\ : std_logic;
SIGNAL \data_RRF~20_combout\ : std_logic;
SIGNAL \data_RRF~21_combout\ : std_logic;
SIGNAL \data_RRF~22_combout\ : std_logic;
SIGNAL \data_RRF~23_combout\ : std_logic;
SIGNAL \data_RRF~24_combout\ : std_logic;
SIGNAL \data_RRF[4]~reg0_q\ : std_logic;
SIGNAL \data_RRF~28_combout\ : std_logic;
SIGNAL \data_RRF~29_combout\ : std_logic;
SIGNAL \data_RRF~25_combout\ : std_logic;
SIGNAL \data_RRF~26_combout\ : std_logic;
SIGNAL \data_RRF~27_combout\ : std_logic;
SIGNAL \data_RRF~30_combout\ : std_logic;
SIGNAL \data_RRF[5]~reg0_q\ : std_logic;
SIGNAL \data_RRF~31_combout\ : std_logic;
SIGNAL \data_RRF~32_combout\ : std_logic;
SIGNAL \data_RRF~33_combout\ : std_logic;
SIGNAL \data_RRF~34_combout\ : std_logic;
SIGNAL \data_RRF~35_combout\ : std_logic;
SIGNAL \data_RRF[6]~reg0_q\ : std_logic;
SIGNAL \data_RRF~36_combout\ : std_logic;
SIGNAL \data_RRF~37_combout\ : std_logic;
SIGNAL \data_RRF~38_combout\ : std_logic;
SIGNAL \data_RRF~39_combout\ : std_logic;
SIGNAL \data_RRF~40_combout\ : std_logic;
SIGNAL \data_RRF[7]~reg0_q\ : std_logic;
SIGNAL \data_RRF~41_combout\ : std_logic;
SIGNAL \data_RRF~42_combout\ : std_logic;
SIGNAL \data_RRF~43_combout\ : std_logic;
SIGNAL \data_RRF~44_combout\ : std_logic;
SIGNAL \data_RRF~45_combout\ : std_logic;
SIGNAL \data_RRF[8]~reg0_q\ : std_logic;
SIGNAL \data_RRF~48_combout\ : std_logic;
SIGNAL \data_RRF~49_combout\ : std_logic;
SIGNAL \data_RRF~46_combout\ : std_logic;
SIGNAL \data_RRF~47_combout\ : std_logic;
SIGNAL \data_RRF~50_combout\ : std_logic;
SIGNAL \data_RRF[9]~reg0_q\ : std_logic;
SIGNAL \data_RRF~51_combout\ : std_logic;
SIGNAL \data_RRF~52_combout\ : std_logic;
SIGNAL \data_RRF~53_combout\ : std_logic;
SIGNAL \data_RRF~54_combout\ : std_logic;
SIGNAL \data_RRF~55_combout\ : std_logic;
SIGNAL \data_RRF[10]~reg0_q\ : std_logic;
SIGNAL \data_RRF~58_combout\ : std_logic;
SIGNAL \data_RRF~59_combout\ : std_logic;
SIGNAL \data_RRF~56_combout\ : std_logic;
SIGNAL \data_RRF~57_combout\ : std_logic;
SIGNAL \data_RRF~60_combout\ : std_logic;
SIGNAL \data_RRF[11]~reg0_q\ : std_logic;
SIGNAL \data_RRF~63_combout\ : std_logic;
SIGNAL \data_RRF~64_combout\ : std_logic;
SIGNAL \data_RRF~61_combout\ : std_logic;
SIGNAL \data_RRF~62_combout\ : std_logic;
SIGNAL \data_RRF~65_combout\ : std_logic;
SIGNAL \data_RRF[12]~reg0_q\ : std_logic;
SIGNAL \data_RRF~68_combout\ : std_logic;
SIGNAL \data_RRF~69_combout\ : std_logic;
SIGNAL \data_RRF~66_combout\ : std_logic;
SIGNAL \data_RRF~67_combout\ : std_logic;
SIGNAL \data_RRF~70_combout\ : std_logic;
SIGNAL \data_RRF[13]~reg0_q\ : std_logic;
SIGNAL \data_RRF~73_combout\ : std_logic;
SIGNAL \data_RRF~74_combout\ : std_logic;
SIGNAL \data_RRF~71_combout\ : std_logic;
SIGNAL \data_RRF~72_combout\ : std_logic;
SIGNAL \data_RRF~75_combout\ : std_logic;
SIGNAL \data_RRF[14]~reg0_q\ : std_logic;
SIGNAL \data_RRF~76_combout\ : std_logic;
SIGNAL \data_RRF~77_combout\ : std_logic;
SIGNAL \data_RRF~78_combout\ : std_logic;
SIGNAL \data_RRF~79_combout\ : std_logic;
SIGNAL \data_RRF~80_combout\ : std_logic;
SIGNAL \data_RRF[15]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tag_A1 <= tag_A1;
ww_tag_B1 <= tag_B1;
ww_tag_A2 <= tag_A2;
ww_tag_B2 <= tag_B2;
data_RRFA1 <= ww_data_RRFA1;
data_RRFB1 <= ww_data_RRFB1;
data_RRFA2 <= ww_data_RRFA2;
data_RRFB2 <= ww_data_RRFB2;
ww_tag_ROB <= tag_ROB;
data_RRF <= ww_data_RRF;
ww_tag_in1 <= tag_in1;
ww_tag_en1 <= tag_en1;
ww_tag_in2 <= tag_in2;
ww_tag_en2 <= tag_en2;
ww_tag_data_in <= tag_data_in;
ww_tag_data_en <= tag_data_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X53_Y14_N2
\data_RRFA1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\data_RRFA1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\data_RRFA1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[2]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\data_RRFA1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\data_RRFA1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\data_RRFA1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\data_RRFA1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\data_RRFA1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\data_RRFA1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\data_RRFA1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\data_RRFA1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_RRFA1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[11]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\data_RRFA1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[12]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\data_RRFA1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[13]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\data_RRFA1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\data_RRFA1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA1[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\data_RRFB1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\data_RRFB1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\data_RRFB1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[2]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\data_RRFB1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\data_RRFB1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\data_RRFB1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_RRFB1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\data_RRFB1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[7]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\data_RRFB1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[8]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\data_RRFB1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[9]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\data_RRFB1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[10]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\data_RRFB1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[11]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\data_RRFB1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\data_RRFB1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[13]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_RRFB1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[14]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\data_RRFB1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB1[15]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\data_RRFA2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\data_RRFA2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data_RRFA2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[2]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\data_RRFA2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\data_RRFA2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\data_RRFA2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\data_RRFA2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\data_RRFA2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\data_RRFA2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\data_RRFA2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[9]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\data_RRFA2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\data_RRFA2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[11]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\data_RRFA2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[12]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\data_RRFA2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_RRFA2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\data_RRFA2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFA2[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFA2[15]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\data_RRFB2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[0]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\data_RRFB2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\data_RRFB2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\data_RRFB2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[3]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\data_RRFB2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\data_RRFB2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\data_RRFB2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\data_RRFB2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[7]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\data_RRFB2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[8]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\data_RRFB2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[9]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\data_RRFB2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[10]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\data_RRFB2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[11]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\data_RRFB2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[12]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\data_RRFB2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\data_RRFB2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\data_RRFB2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRFB2[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRFB2[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\data_RRF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\data_RRF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\data_RRF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\data_RRF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\data_RRF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\data_RRF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\data_RRF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[6]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\data_RRF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[7]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\data_RRF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[8]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\data_RRF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[9]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\data_RRF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data_RRF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[11]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\data_RRF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[12]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\data_RRF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[13]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\data_RRF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[14]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\data_RRF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_RRF[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_RRF[15]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y34_N8
\tag_A1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A1(0),
	o => \tag_A1[0]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\tag_data_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_en,
	o => \tag_data_en~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y34_N15
\tag_in1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in1(1),
	o => \tag_in1[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\tag_in1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in1(2),
	o => \tag_in1[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\tag_en1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_en1,
	o => \tag_en1~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\tag_in1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in1(0),
	o => \tag_in1[0]~input_o\);

-- Location: LCCOMB_X26_Y26_N14
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\tag_in1[1]~input_o\ & (\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & \tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y25_N8
\tag_in2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in2(1),
	o => \tag_in2[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\tag_in2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in2(2),
	o => \tag_in2[2]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\tag_in2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_in2(0),
	o => \tag_in2[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\tag_en2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_en2,
	o => \tag_en2~input_o\);

-- Location: LCCOMB_X27_Y26_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\tag_in2[1]~input_o\ & (\tag_in2[2]~input_o\ & (\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\tag_data_in[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(18),
	o => \tag_data_in[18]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\tag_data_in[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(16),
	o => \tag_data_in[16]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\tag_data_in[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(17),
	o => \tag_data_in[17]~input_o\);

-- Location: LCCOMB_X26_Y26_N20
\memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~0_combout\ = (\tag_data_in[18]~input_o\ & (\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & !\tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~1_combout\ = (\memory~0_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~0_combout\) # (\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \tag_data_en~input_o\,
	datac => \Equal2~0_combout\,
	datad => \memory~0_combout\,
	combout => \memory~1_combout\);

-- Location: FF_X29_Y28_N7
\memory[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][16]~q\);

-- Location: IOIBUF_X38_Y0_N8
\tag_data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(0),
	o => \tag_data_in[0]~input_o\);

-- Location: LCCOMB_X34_Y29_N22
\memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~2_combout\ = (\tag_data_en~input_o\ & \tag_data_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[0]~input_o\,
	combout => \memory~2_combout\);

-- Location: FF_X29_Y28_N21
\memory[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][0]~q\);

-- Location: LCCOMB_X29_Y28_N18
\data_RRFA1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~0_combout\ = (\memory[5][16]~q\ & \memory[5][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][16]~q\,
	datad => \memory[5][0]~q\,
	combout => \data_RRFA1~0_combout\);

-- Location: IOIBUF_X40_Y34_N1
\tag_A1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A1(2),
	o => \tag_A1[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\tag_A1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A1(1),
	o => \tag_A1[1]~input_o\);

-- Location: LCCOMB_X26_Y26_N6
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\tag_in1[1]~input_o\ & (!\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & \tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y26_N4
\memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~3_combout\ = (!\tag_data_in[18]~input_o\ & (\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & \tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~3_combout\);

-- Location: LCCOMB_X27_Y26_N16
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\tag_in2[1]~input_o\ & (!\tag_in2[2]~input_o\ & (\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y26_N16
\memory~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~4_combout\ = (\memory~3_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~1_combout\) # (\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \memory~3_combout\,
	datac => \tag_data_en~input_o\,
	datad => \Equal2~1_combout\,
	combout => \memory~4_combout\);

-- Location: FF_X30_Y27_N31
\memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][0]~q\);

-- Location: FF_X30_Y27_N17
\memory[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][16]~q\);

-- Location: LCCOMB_X30_Y27_N30
\data_RRFA1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~1_combout\ = (\memory[3][0]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][0]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~1_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\tag_in1[1]~input_o\ & (!\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & \tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\tag_in2[1]~input_o\ & (!\tag_in2[2]~input_o\ & (\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X26_Y26_N18
\memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~5_combout\ = (!\tag_data_in[18]~input_o\ & (\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & !\tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~5_combout\);

-- Location: LCCOMB_X27_Y26_N12
\memory~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~6_combout\ = (\memory~5_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~2_combout\) # (\Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \tag_data_en~input_o\,
	datac => \Equal2~2_combout\,
	datad => \memory~5_combout\,
	combout => \memory~6_combout\);

-- Location: FF_X30_Y28_N25
\memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][0]~q\);

-- Location: FF_X30_Y28_N19
\memory[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][16]~q\);

-- Location: LCCOMB_X30_Y28_N24
\data_RRFA1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~2_combout\ = (\memory[1][0]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][0]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~2_combout\);

-- Location: LCCOMB_X28_Y26_N30
\data_RRFA1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~3_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~1_combout\) # ((\tag_A1[2]~input_o\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~2_combout\ & !\tag_A1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~1_combout\,
	datac => \data_RRFA1~2_combout\,
	datad => \tag_A1[2]~input_o\,
	combout => \data_RRFA1~3_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\tag_in1[1]~input_o\ & (\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & \tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X27_Y26_N30
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\tag_in2[1]~input_o\ & (\tag_in2[2]~input_o\ & (\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X26_Y26_N30
\memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~7_combout\ = (\tag_data_in[18]~input_o\ & (\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & \tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~7_combout\);

-- Location: LCCOMB_X27_Y26_N24
\memory~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~8_combout\ = (\memory~7_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~3_combout\) # (\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \tag_data_en~input_o\,
	datac => \Equal2~3_combout\,
	datad => \memory~7_combout\,
	combout => \memory~8_combout\);

-- Location: FF_X29_Y29_N17
\memory[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][0]~q\);

-- Location: FF_X30_Y29_N5
\memory[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][16]~q\);

-- Location: LCCOMB_X29_Y29_N16
\data_RRFA1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~4_combout\ = (\memory[7][0]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][0]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~4_combout\);

-- Location: LCCOMB_X28_Y26_N8
\data_RRFA1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~5_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~3_combout\ & ((\data_RRFA1~4_combout\))) # (!\data_RRFA1~3_combout\ & (\data_RRFA1~0_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~0_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~3_combout\,
	datad => \data_RRFA1~4_combout\,
	combout => \data_RRFA1~5_combout\);

-- Location: LCCOMB_X26_Y26_N10
\memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~15_combout\ = (\tag_data_in[18]~input_o\ & (!\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & \tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~15_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\tag_in1[1]~input_o\ & (\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & !\tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X27_Y26_N6
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\tag_in2[1]~input_o\ & (\tag_in2[2]~input_o\ & (!\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X26_Y26_N22
\memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~16_combout\ = (\memory~15_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~7_combout\) # (\Equal2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~15_combout\,
	datab => \Equal1~7_combout\,
	datac => \tag_data_en~input_o\,
	datad => \Equal2~7_combout\,
	combout => \memory~16_combout\);

-- Location: FF_X29_Y26_N1
\memory[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][0]~q\);

-- Location: LCCOMB_X30_Y26_N6
\memory[6][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][16]~feeder_combout\ = \tag_data_en~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_data_en~input_o\,
	combout => \memory[6][16]~feeder_combout\);

-- Location: FF_X30_Y26_N7
\memory[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][16]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][16]~q\);

-- Location: LCCOMB_X29_Y26_N0
\data_RRFA1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~10_combout\ = (\memory[6][0]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][0]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~10_combout\);

-- Location: LCCOMB_X26_Y26_N2
\memory~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~9_combout\ = (!\tag_data_in[18]~input_o\ & (!\tag_data_in[16]~input_o\ & (\tag_data_en~input_o\ & \tag_data_in[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[18]~input_o\,
	datab => \tag_data_in[16]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[17]~input_o\,
	combout => \memory~9_combout\);

-- Location: LCCOMB_X27_Y26_N14
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\tag_in2[1]~input_o\ & (!\tag_in2[2]~input_o\ & (!\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\tag_in1[1]~input_o\ & (!\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & !\tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X27_Y26_N28
\memory~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~10_combout\ = (\memory~9_combout\) # ((!\tag_data_en~input_o\ & ((\Equal2~4_combout\) # (\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~9_combout\,
	datab => \Equal2~4_combout\,
	datac => \tag_data_en~input_o\,
	datad => \Equal1~4_combout\,
	combout => \memory~10_combout\);

-- Location: FF_X32_Y27_N31
\memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][0]~q\);

-- Location: LCCOMB_X32_Y27_N8
\memory[2][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][16]~feeder_combout\ = \tag_data_en~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tag_data_en~input_o\,
	combout => \memory[2][16]~feeder_combout\);

-- Location: FF_X32_Y27_N9
\memory[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[2][16]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][16]~q\);

-- Location: LCCOMB_X32_Y27_N30
\data_RRFA1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~6_combout\ = (\memory[2][0]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][0]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~6_combout\);

-- Location: LCCOMB_X26_Y26_N26
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\tag_in1[1]~input_o\ & (\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & !\tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X27_Y26_N4
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\tag_in2[1]~input_o\ & (\tag_in2[2]~input_o\ & (!\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X27_Y26_N18
\memory~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~11_combout\ = (!\tag_data_in[16]~input_o\ & (!\tag_data_in[17]~input_o\ & (\tag_data_en~input_o\ & \tag_data_in[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[16]~input_o\,
	datab => \tag_data_in[17]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[18]~input_o\,
	combout => \memory~11_combout\);

-- Location: LCCOMB_X27_Y26_N10
\memory~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~12_combout\ = (\memory~11_combout\) # ((!\tag_data_en~input_o\ & ((\Equal1~5_combout\) # (\Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \tag_data_en~input_o\,
	datac => \Equal2~5_combout\,
	datad => \memory~11_combout\,
	combout => \memory~12_combout\);

-- Location: FF_X31_Y27_N3
\memory[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][0]~q\);

-- Location: FF_X31_Y27_N9
\memory[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][16]~q\);

-- Location: LCCOMB_X31_Y27_N2
\data_RRFA1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~7_combout\ = (\memory[4][0]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][0]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~7_combout\);

-- Location: LCCOMB_X27_Y26_N22
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!\tag_in2[1]~input_o\ & (!\tag_in2[2]~input_o\ & (!\tag_in2[0]~input_o\ & \tag_en2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in2[1]~input_o\,
	datab => \tag_in2[2]~input_o\,
	datac => \tag_in2[0]~input_o\,
	datad => \tag_en2~input_o\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X27_Y26_N0
\memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~13_combout\ = (!\tag_data_in[16]~input_o\ & (!\tag_data_in[17]~input_o\ & (\tag_data_en~input_o\ & !\tag_data_in[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[16]~input_o\,
	datab => \tag_data_in[17]~input_o\,
	datac => \tag_data_en~input_o\,
	datad => \tag_data_in[18]~input_o\,
	combout => \memory~13_combout\);

-- Location: LCCOMB_X26_Y26_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\tag_in1[1]~input_o\ & (!\tag_in1[2]~input_o\ & (\tag_en1~input_o\ & !\tag_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_in1[1]~input_o\,
	datab => \tag_in1[2]~input_o\,
	datac => \tag_en1~input_o\,
	datad => \tag_in1[0]~input_o\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X27_Y26_N20
\memory~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~14_combout\ = (\memory~13_combout\) # ((!\tag_data_en~input_o\ & ((\Equal2~6_combout\) # (\Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => \memory~13_combout\,
	datac => \tag_data_en~input_o\,
	datad => \Equal1~6_combout\,
	combout => \memory~14_combout\);

-- Location: FF_X29_Y29_N7
\memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][0]~q\);

-- Location: FF_X30_Y29_N19
\memory[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tag_data_en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][16]~q\);

-- Location: LCCOMB_X29_Y29_N6
\data_RRFA1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~8_combout\ = (\memory[0][0]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][0]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~8_combout\);

-- Location: LCCOMB_X28_Y26_N10
\data_RRFA1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~9_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~7_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~7_combout\,
	datad => \data_RRFA1~8_combout\,
	combout => \data_RRFA1~9_combout\);

-- Location: LCCOMB_X28_Y26_N24
\data_RRFA1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~11_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~9_combout\ & (\data_RRFA1~10_combout\)) # (!\data_RRFA1~9_combout\ & ((\data_RRFA1~6_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~10_combout\,
	datac => \data_RRFA1~6_combout\,
	datad => \data_RRFA1~9_combout\,
	combout => \data_RRFA1~11_combout\);

-- Location: LCCOMB_X28_Y26_N4
\data_RRFA1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~12_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~5_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~5_combout\,
	datad => \data_RRFA1~11_combout\,
	combout => \data_RRFA1~12_combout\);

-- Location: FF_X28_Y26_N5
\data_RRFA1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~12_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[0]~reg0_q\);

-- Location: IOIBUF_X53_Y10_N15
\tag_data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(1),
	o => \tag_data_in[1]~input_o\);

-- Location: LCCOMB_X32_Y27_N22
\memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~17_combout\ = (\tag_data_in[1]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_in[1]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~17_combout\);

-- Location: FF_X32_Y27_N13
\memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][1]~q\);

-- Location: LCCOMB_X32_Y27_N12
\data_RRFA1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~19_combout\ = (\memory[2][1]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][1]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~19_combout\);

-- Location: FF_X30_Y26_N25
\memory[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][1]~q\);

-- Location: LCCOMB_X30_Y26_N24
\data_RRFA1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~23_combout\ = (\memory[6][1]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][1]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~23_combout\);

-- Location: FF_X31_Y27_N21
\memory[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][1]~q\);

-- Location: LCCOMB_X31_Y27_N20
\data_RRFA1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~20_combout\ = (\memory[4][1]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][1]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~20_combout\);

-- Location: FF_X30_Y29_N25
\memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][1]~q\);

-- Location: LCCOMB_X30_Y29_N24
\data_RRFA1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~21_combout\ = (\memory[0][1]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][1]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~21_combout\);

-- Location: LCCOMB_X29_Y27_N16
\data_RRFA1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~22_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~20_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~20_combout\,
	datad => \data_RRFA1~21_combout\,
	combout => \data_RRFA1~22_combout\);

-- Location: LCCOMB_X29_Y27_N26
\data_RRFA1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~24_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~22_combout\ & ((\data_RRFA1~23_combout\))) # (!\data_RRFA1~22_combout\ & (\data_RRFA1~19_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~19_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~23_combout\,
	datad => \data_RRFA1~22_combout\,
	combout => \data_RRFA1~24_combout\);

-- Location: FF_X29_Y29_N13
\memory[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][1]~q\);

-- Location: LCCOMB_X29_Y29_N12
\data_RRFA1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~17_combout\ = (\memory[7][1]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][1]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~17_combout\);

-- Location: FF_X29_Y27_N23
\memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][1]~q\);

-- Location: LCCOMB_X29_Y27_N22
\data_RRFA1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~14_combout\ = (\memory[3][1]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][1]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~14_combout\);

-- Location: FF_X30_Y28_N23
\memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][1]~q\);

-- Location: LCCOMB_X30_Y28_N22
\data_RRFA1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~15_combout\ = (\memory[1][1]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][1]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~15_combout\);

-- Location: LCCOMB_X29_Y27_N4
\data_RRFA1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~16_combout\ = (\tag_A1[2]~input_o\ & (((\tag_A1[1]~input_o\)))) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & (\data_RRFA1~14_combout\)) # (!\tag_A1[1]~input_o\ & ((\data_RRFA1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~14_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \tag_A1[1]~input_o\,
	datad => \data_RRFA1~15_combout\,
	combout => \data_RRFA1~16_combout\);

-- Location: FF_X29_Y28_N13
\memory[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][1]~q\);

-- Location: LCCOMB_X29_Y28_N12
\data_RRFA1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~13_combout\ = (\memory[5][1]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][1]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~13_combout\);

-- Location: LCCOMB_X29_Y27_N6
\data_RRFA1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~18_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~16_combout\ & (\data_RRFA1~17_combout\)) # (!\data_RRFA1~16_combout\ & ((\data_RRFA1~13_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~17_combout\,
	datac => \data_RRFA1~16_combout\,
	datad => \data_RRFA1~13_combout\,
	combout => \data_RRFA1~18_combout\);

-- Location: LCCOMB_X29_Y27_N0
\data_RRFA1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~25_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~18_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~24_combout\,
	datad => \data_RRFA1~18_combout\,
	combout => \data_RRFA1~25_combout\);

-- Location: FF_X29_Y27_N1
\data_RRFA1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~25_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[1]~reg0_q\);

-- Location: IOIBUF_X0_Y27_N1
\tag_data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(2),
	o => \tag_data_in[2]~input_o\);

-- Location: LCCOMB_X28_Y28_N26
\memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~18_combout\ = (\tag_data_in[2]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_data_in[2]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~18_combout\);

-- Location: FF_X29_Y29_N27
\memory[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][2]~q\);

-- Location: LCCOMB_X29_Y29_N26
\data_RRFA1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~30_combout\ = (\memory[7][2]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][2]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~30_combout\);

-- Location: FF_X31_Y28_N29
\memory[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][2]~q\);

-- Location: LCCOMB_X31_Y28_N28
\data_RRFA1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~26_combout\ = (\memory[5][2]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][2]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~26_combout\);

-- Location: FF_X30_Y27_N5
\memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][2]~q\);

-- Location: LCCOMB_X30_Y27_N4
\data_RRFA1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~27_combout\ = (\memory[3][2]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][2]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~27_combout\);

-- Location: FF_X31_Y28_N27
\memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][2]~q\);

-- Location: LCCOMB_X31_Y28_N26
\data_RRFA1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~28_combout\ = (\memory[1][2]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][2]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~28_combout\);

-- Location: LCCOMB_X34_Y29_N10
\data_RRFA1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~29_combout\ = (\tag_A1[2]~input_o\ & (\tag_A1[1]~input_o\)) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & (\data_RRFA1~27_combout\)) # (!\tag_A1[1]~input_o\ & ((\data_RRFA1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~27_combout\,
	datad => \data_RRFA1~28_combout\,
	combout => \data_RRFA1~29_combout\);

-- Location: LCCOMB_X34_Y29_N4
\data_RRFA1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~31_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~29_combout\ & (\data_RRFA1~30_combout\)) # (!\data_RRFA1~29_combout\ & ((\data_RRFA1~26_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~30_combout\,
	datac => \data_RRFA1~26_combout\,
	datad => \data_RRFA1~29_combout\,
	combout => \data_RRFA1~31_combout\);

-- Location: FF_X31_Y26_N31
\memory[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][2]~q\);

-- Location: LCCOMB_X31_Y26_N30
\data_RRFA1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~36_combout\ = (\memory[6][16]~q\ & \memory[6][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][2]~q\,
	combout => \data_RRFA1~36_combout\);

-- Location: FF_X31_Y27_N11
\memory[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][2]~q\);

-- Location: LCCOMB_X31_Y27_N10
\data_RRFA1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~33_combout\ = (\memory[4][2]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][2]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~33_combout\);

-- Location: FF_X30_Y29_N3
\memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][2]~q\);

-- Location: LCCOMB_X30_Y29_N2
\data_RRFA1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~34_combout\ = (\memory[0][2]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][2]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~34_combout\);

-- Location: LCCOMB_X34_Y29_N30
\data_RRFA1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~35_combout\ = (\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\) # ((\data_RRFA1~33_combout\)))) # (!\tag_A1[2]~input_o\ & (!\tag_A1[1]~input_o\ & ((\data_RRFA1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~33_combout\,
	datad => \data_RRFA1~34_combout\,
	combout => \data_RRFA1~35_combout\);

-- Location: FF_X34_Y25_N21
\memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][2]~q\);

-- Location: LCCOMB_X34_Y25_N20
\data_RRFA1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~32_combout\ = (\memory[2][2]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][2]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~32_combout\);

-- Location: LCCOMB_X34_Y29_N12
\data_RRFA1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~37_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~35_combout\ & (\data_RRFA1~36_combout\)) # (!\data_RRFA1~35_combout\ & ((\data_RRFA1~32_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~36_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~35_combout\,
	datad => \data_RRFA1~32_combout\,
	combout => \data_RRFA1~37_combout\);

-- Location: LCCOMB_X34_Y29_N24
\data_RRFA1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~38_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~31_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~31_combout\,
	datad => \data_RRFA1~37_combout\,
	combout => \data_RRFA1~38_combout\);

-- Location: FF_X34_Y29_N25
\data_RRFA1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~38_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[2]~reg0_q\);

-- Location: IOIBUF_X0_Y15_N1
\tag_data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(3),
	o => \tag_data_in[3]~input_o\);

-- Location: LCCOMB_X31_Y26_N22
\memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~19_combout\ = (\tag_data_en~input_o\ & \tag_data_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_en~input_o\,
	datac => \tag_data_in[3]~input_o\,
	combout => \memory~19_combout\);

-- Location: FF_X31_Y27_N29
\memory[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][3]~q\);

-- Location: LCCOMB_X31_Y27_N28
\data_RRFA1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~43_combout\ = (\memory[7][3]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][3]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~43_combout\);

-- Location: FF_X34_Y28_N31
\memory[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][3]~q\);

-- Location: LCCOMB_X34_Y28_N30
\data_RRFA1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~39_combout\ = (\memory[5][3]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][3]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~39_combout\);

-- Location: FF_X30_Y27_N3
\memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][3]~q\);

-- Location: LCCOMB_X30_Y27_N2
\data_RRFA1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~40_combout\ = (\memory[3][3]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][3]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~40_combout\);

-- Location: FF_X35_Y28_N29
\memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][3]~q\);

-- Location: LCCOMB_X35_Y28_N28
\data_RRFA1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~41_combout\ = (\memory[1][3]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][3]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~41_combout\);

-- Location: LCCOMB_X35_Y27_N10
\data_RRFA1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~42_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~40_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & ((\data_RRFA1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~40_combout\,
	datad => \data_RRFA1~41_combout\,
	combout => \data_RRFA1~42_combout\);

-- Location: LCCOMB_X35_Y27_N4
\data_RRFA1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~44_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~42_combout\ & (\data_RRFA1~43_combout\)) # (!\data_RRFA1~42_combout\ & ((\data_RRFA1~39_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~43_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~39_combout\,
	datad => \data_RRFA1~42_combout\,
	combout => \data_RRFA1~44_combout\);

-- Location: FF_X32_Y27_N15
\memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][3]~q\);

-- Location: LCCOMB_X32_Y27_N14
\data_RRFA1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~45_combout\ = (\memory[2][3]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][3]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~45_combout\);

-- Location: FF_X34_Y27_N7
\memory[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][3]~q\);

-- Location: LCCOMB_X34_Y27_N6
\data_RRFA1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~49_combout\ = (\memory[6][3]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][3]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~49_combout\);

-- Location: FF_X35_Y27_N31
\memory[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][3]~q\);

-- Location: LCCOMB_X35_Y27_N30
\data_RRFA1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~46_combout\ = (\memory[4][3]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][3]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~46_combout\);

-- Location: FF_X31_Y29_N27
\memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][3]~q\);

-- Location: LCCOMB_X31_Y29_N26
\data_RRFA1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~47_combout\ = (\memory[0][3]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][3]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~47_combout\);

-- Location: LCCOMB_X35_Y27_N24
\data_RRFA1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~48_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~46_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~46_combout\,
	datad => \data_RRFA1~47_combout\,
	combout => \data_RRFA1~48_combout\);

-- Location: LCCOMB_X35_Y27_N2
\data_RRFA1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~50_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~48_combout\ & ((\data_RRFA1~49_combout\))) # (!\data_RRFA1~48_combout\ & (\data_RRFA1~45_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~45_combout\,
	datac => \data_RRFA1~49_combout\,
	datad => \data_RRFA1~48_combout\,
	combout => \data_RRFA1~50_combout\);

-- Location: LCCOMB_X35_Y27_N0
\data_RRFA1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~51_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~44_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~44_combout\,
	datad => \data_RRFA1~50_combout\,
	combout => \data_RRFA1~51_combout\);

-- Location: FF_X35_Y27_N1
\data_RRFA1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~51_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[3]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N8
\tag_data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(4),
	o => \tag_data_in[4]~input_o\);

-- Location: LCCOMB_X31_Y26_N12
\memory~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~20_combout\ = (\tag_data_en~input_o\ & \tag_data_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_en~input_o\,
	datac => \tag_data_in[4]~input_o\,
	combout => \memory~20_combout\);

-- Location: FF_X31_Y25_N11
\memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][4]~q\);

-- Location: LCCOMB_X31_Y25_N10
\data_RRFA1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~58_combout\ = (\memory[2][4]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][4]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~58_combout\);

-- Location: FF_X31_Y26_N5
\memory[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][4]~q\);

-- Location: LCCOMB_X31_Y26_N4
\data_RRFA1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~62_combout\ = (\memory[6][16]~q\ & \memory[6][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][4]~q\,
	combout => \data_RRFA1~62_combout\);

-- Location: FF_X30_Y27_N7
\memory[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][4]~q\);

-- Location: LCCOMB_X30_Y27_N6
\data_RRFA1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~59_combout\ = (\memory[4][4]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][4]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~59_combout\);

-- Location: FF_X30_Y29_N11
\memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][4]~q\);

-- Location: LCCOMB_X30_Y29_N10
\data_RRFA1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~60_combout\ = (\memory[0][4]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][4]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~60_combout\);

-- Location: LCCOMB_X31_Y25_N24
\data_RRFA1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~61_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~59_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~59_combout\,
	datad => \data_RRFA1~60_combout\,
	combout => \data_RRFA1~61_combout\);

-- Location: LCCOMB_X31_Y25_N26
\data_RRFA1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~63_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~61_combout\ & ((\data_RRFA1~62_combout\))) # (!\data_RRFA1~61_combout\ & (\data_RRFA1~58_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~58_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~62_combout\,
	datad => \data_RRFA1~61_combout\,
	combout => \data_RRFA1~63_combout\);

-- Location: FF_X31_Y28_N25
\memory[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][4]~q\);

-- Location: LCCOMB_X31_Y28_N24
\data_RRFA1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~52_combout\ = (\memory[5][4]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][4]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~52_combout\);

-- Location: FF_X30_Y28_N9
\memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][4]~q\);

-- Location: LCCOMB_X30_Y28_N8
\data_RRFA1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~54_combout\ = (\memory[1][4]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][4]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~54_combout\);

-- Location: FF_X30_Y27_N13
\memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][4]~q\);

-- Location: LCCOMB_X30_Y27_N12
\data_RRFA1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~53_combout\ = (\memory[3][4]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][4]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~53_combout\);

-- Location: LCCOMB_X31_Y25_N14
\data_RRFA1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~55_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~53_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & (\data_RRFA1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~54_combout\,
	datad => \data_RRFA1~53_combout\,
	combout => \data_RRFA1~55_combout\);

-- Location: FF_X30_Y29_N29
\memory[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][4]~q\);

-- Location: LCCOMB_X30_Y29_N28
\data_RRFA1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~56_combout\ = (\memory[7][4]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][4]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~56_combout\);

-- Location: LCCOMB_X31_Y25_N16
\data_RRFA1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~57_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~55_combout\ & ((\data_RRFA1~56_combout\))) # (!\data_RRFA1~55_combout\ & (\data_RRFA1~52_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~52_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~55_combout\,
	datad => \data_RRFA1~56_combout\,
	combout => \data_RRFA1~57_combout\);

-- Location: LCCOMB_X31_Y25_N0
\data_RRFA1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~64_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~57_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~63_combout\,
	datad => \data_RRFA1~57_combout\,
	combout => \data_RRFA1~64_combout\);

-- Location: FF_X31_Y25_N1
\data_RRFA1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~64_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[4]~reg0_q\);

-- Location: IOIBUF_X53_Y9_N15
\tag_data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(5),
	o => \tag_data_in[5]~input_o\);

-- Location: LCCOMB_X32_Y27_N28
\memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~21_combout\ = (\tag_data_in[5]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_data_in[5]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~21_combout\);

-- Location: FF_X30_Y26_N29
\memory[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][5]~q\);

-- Location: LCCOMB_X30_Y26_N28
\data_RRFA1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~75_combout\ = (\memory[6][5]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][5]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~75_combout\);

-- Location: FF_X32_Y27_N1
\memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][5]~q\);

-- Location: LCCOMB_X32_Y27_N0
\data_RRFA1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~71_combout\ = (\memory[2][5]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][5]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~71_combout\);

-- Location: FF_X30_Y29_N31
\memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][5]~q\);

-- Location: LCCOMB_X30_Y29_N18
\data_RRFA1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~73_combout\ = (\memory[0][5]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[0][5]~q\,
	datac => \memory[0][16]~q\,
	combout => \data_RRFA1~73_combout\);

-- Location: FF_X31_Y27_N7
\memory[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][5]~q\);

-- Location: LCCOMB_X31_Y27_N8
\data_RRFA1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~72_combout\ = (\memory[4][16]~q\ & \memory[4][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][16]~q\,
	datad => \memory[4][5]~q\,
	combout => \data_RRFA1~72_combout\);

-- Location: LCCOMB_X30_Y26_N10
\data_RRFA1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~74_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & ((\data_RRFA1~72_combout\))) # (!\tag_A1[2]~input_o\ & (\data_RRFA1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~73_combout\,
	datad => \data_RRFA1~72_combout\,
	combout => \data_RRFA1~74_combout\);

-- Location: LCCOMB_X30_Y26_N26
\data_RRFA1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~76_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~74_combout\ & (\data_RRFA1~75_combout\)) # (!\data_RRFA1~74_combout\ & ((\data_RRFA1~71_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~75_combout\,
	datac => \data_RRFA1~71_combout\,
	datad => \data_RRFA1~74_combout\,
	combout => \data_RRFA1~76_combout\);

-- Location: FF_X30_Y29_N9
\memory[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][5]~q\);

-- Location: LCCOMB_X30_Y29_N8
\data_RRFA1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~69_combout\ = (\memory[7][5]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][5]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~69_combout\);

-- Location: FF_X30_Y27_N21
\memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][5]~q\);

-- Location: LCCOMB_X30_Y27_N16
\data_RRFA1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~66_combout\ = (\memory[3][16]~q\ & \memory[3][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][16]~q\,
	datad => \memory[3][5]~q\,
	combout => \data_RRFA1~66_combout\);

-- Location: FF_X31_Y28_N9
\memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][5]~q\);

-- Location: LCCOMB_X30_Y28_N18
\data_RRFA1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~67_combout\ = (\memory[1][16]~q\ & \memory[1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][16]~q\,
	datad => \memory[1][5]~q\,
	combout => \data_RRFA1~67_combout\);

-- Location: LCCOMB_X30_Y26_N30
\data_RRFA1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~68_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~66_combout\) # ((\tag_A1[2]~input_o\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~67_combout\ & !\tag_A1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~66_combout\,
	datac => \data_RRFA1~67_combout\,
	datad => \tag_A1[2]~input_o\,
	combout => \data_RRFA1~68_combout\);

-- Location: FF_X31_Y28_N31
\memory[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][5]~q\);

-- Location: LCCOMB_X31_Y28_N30
\data_RRFA1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~65_combout\ = (\memory[5][5]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][5]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~65_combout\);

-- Location: LCCOMB_X30_Y26_N16
\data_RRFA1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~70_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~68_combout\ & (\data_RRFA1~69_combout\)) # (!\data_RRFA1~68_combout\ & ((\data_RRFA1~65_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~69_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~68_combout\,
	datad => \data_RRFA1~65_combout\,
	combout => \data_RRFA1~70_combout\);

-- Location: LCCOMB_X30_Y26_N0
\data_RRFA1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~77_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~70_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~76_combout\,
	datad => \data_RRFA1~70_combout\,
	combout => \data_RRFA1~77_combout\);

-- Location: FF_X30_Y26_N1
\data_RRFA1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~77_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[5]~reg0_q\);

-- Location: IOIBUF_X9_Y34_N22
\tag_data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(6),
	o => \tag_data_in[6]~input_o\);

-- Location: LCCOMB_X28_Y28_N12
\memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~22_combout\ = (\tag_data_in[6]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_in[6]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~22_combout\);

-- Location: FF_X32_Y27_N3
\memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][6]~q\);

-- Location: LCCOMB_X32_Y27_N2
\data_RRFA1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~84_combout\ = (\memory[2][6]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][6]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~84_combout\);

-- Location: FF_X32_Y28_N29
\memory[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][6]~q\);

-- Location: LCCOMB_X32_Y28_N28
\data_RRFA1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~88_combout\ = (\memory[6][6]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][6]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~88_combout\);

-- Location: FF_X31_Y27_N1
\memory[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][6]~q\);

-- Location: LCCOMB_X31_Y27_N0
\data_RRFA1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~85_combout\ = (\memory[4][6]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][6]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~85_combout\);

-- Location: FF_X30_Y29_N1
\memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][6]~q\);

-- Location: LCCOMB_X30_Y29_N0
\data_RRFA1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~86_combout\ = (\memory[0][6]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][6]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~86_combout\);

-- Location: LCCOMB_X34_Y28_N20
\data_RRFA1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~87_combout\ = (\tag_A1[1]~input_o\ & (((\tag_A1[2]~input_o\)))) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~85_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~85_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~86_combout\,
	datad => \tag_A1[2]~input_o\,
	combout => \data_RRFA1~87_combout\);

-- Location: LCCOMB_X34_Y28_N22
\data_RRFA1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~89_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~87_combout\ & ((\data_RRFA1~88_combout\))) # (!\data_RRFA1~87_combout\ & (\data_RRFA1~84_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~84_combout\,
	datac => \data_RRFA1~88_combout\,
	datad => \data_RRFA1~87_combout\,
	combout => \data_RRFA1~89_combout\);

-- Location: FF_X31_Y28_N3
\memory[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][6]~q\);

-- Location: LCCOMB_X31_Y28_N2
\data_RRFA1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~78_combout\ = (\memory[5][6]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][6]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~78_combout\);

-- Location: FF_X31_Y28_N17
\memory[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][6]~q\);

-- Location: LCCOMB_X31_Y28_N16
\data_RRFA1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~80_combout\ = (\memory[1][6]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][6]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~80_combout\);

-- Location: FF_X30_Y27_N15
\memory[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][6]~q\);

-- Location: LCCOMB_X30_Y27_N14
\data_RRFA1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~79_combout\ = (\memory[3][6]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][6]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~79_combout\);

-- Location: LCCOMB_X34_Y28_N4
\data_RRFA1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~81_combout\ = (\tag_A1[2]~input_o\ & (\tag_A1[1]~input_o\)) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & ((\data_RRFA1~79_combout\))) # (!\tag_A1[1]~input_o\ & (\data_RRFA1~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~80_combout\,
	datad => \data_RRFA1~79_combout\,
	combout => \data_RRFA1~81_combout\);

-- Location: LCCOMB_X28_Y28_N16
\memory[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[7][6]~feeder_combout\ = \memory~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~22_combout\,
	combout => \memory[7][6]~feeder_combout\);

-- Location: FF_X28_Y28_N17
\memory[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[7][6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][6]~q\);

-- Location: LCCOMB_X32_Y28_N30
\data_RRFA1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~82_combout\ = (\memory[7][6]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][6]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~82_combout\);

-- Location: LCCOMB_X34_Y28_N6
\data_RRFA1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~83_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~81_combout\ & ((\data_RRFA1~82_combout\))) # (!\data_RRFA1~81_combout\ & (\data_RRFA1~78_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~78_combout\,
	datac => \data_RRFA1~81_combout\,
	datad => \data_RRFA1~82_combout\,
	combout => \data_RRFA1~83_combout\);

-- Location: LCCOMB_X34_Y28_N28
\data_RRFA1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~90_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~83_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~89_combout\,
	datad => \data_RRFA1~83_combout\,
	combout => \data_RRFA1~90_combout\);

-- Location: FF_X34_Y28_N29
\data_RRFA1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~90_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[6]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\tag_data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(7),
	o => \tag_data_in[7]~input_o\);

-- Location: LCCOMB_X29_Y26_N8
\memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~23_combout\ = (\tag_data_in[7]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_in[7]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~23_combout\);

-- Location: FF_X31_Y26_N11
\memory[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][7]~q\);

-- Location: LCCOMB_X31_Y26_N10
\data_RRFA1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~101_combout\ = (\memory[6][16]~q\ & \memory[6][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][7]~q\,
	combout => \data_RRFA1~101_combout\);

-- Location: FF_X32_Y25_N3
\memory[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][7]~q\);

-- Location: LCCOMB_X32_Y25_N2
\data_RRFA1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~97_combout\ = (\memory[2][7]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][7]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~97_combout\);

-- Location: FF_X30_Y29_N13
\memory[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][7]~q\);

-- Location: LCCOMB_X30_Y29_N12
\data_RRFA1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~99_combout\ = (\memory[0][7]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][7]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~99_combout\);

-- Location: FF_X31_Y27_N23
\memory[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][7]~q\);

-- Location: LCCOMB_X31_Y27_N22
\data_RRFA1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~98_combout\ = (\memory[4][7]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][7]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~98_combout\);

-- Location: LCCOMB_X31_Y26_N16
\data_RRFA1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~100_combout\ = (\tag_A1[1]~input_o\ & (((\tag_A1[2]~input_o\)))) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & ((\data_RRFA1~98_combout\))) # (!\tag_A1[2]~input_o\ & (\data_RRFA1~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~99_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \tag_A1[2]~input_o\,
	datad => \data_RRFA1~98_combout\,
	combout => \data_RRFA1~100_combout\);

-- Location: LCCOMB_X31_Y26_N8
\data_RRFA1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~102_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~100_combout\ & (\data_RRFA1~101_combout\)) # (!\data_RRFA1~100_combout\ & ((\data_RRFA1~97_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~101_combout\,
	datac => \data_RRFA1~97_combout\,
	datad => \data_RRFA1~100_combout\,
	combout => \data_RRFA1~102_combout\);

-- Location: FF_X31_Y28_N23
\memory[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][7]~q\);

-- Location: LCCOMB_X31_Y28_N22
\data_RRFA1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~91_combout\ = (\memory[5][7]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][7]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~91_combout\);

-- Location: FF_X30_Y29_N23
\memory[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][7]~q\);

-- Location: LCCOMB_X30_Y29_N22
\data_RRFA1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~95_combout\ = (\memory[7][7]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][7]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~95_combout\);

-- Location: FF_X31_Y28_N13
\memory[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][7]~q\);

-- Location: LCCOMB_X31_Y28_N12
\data_RRFA1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~93_combout\ = (\memory[1][7]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][7]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~93_combout\);

-- Location: FF_X30_Y27_N25
\memory[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][7]~q\);

-- Location: LCCOMB_X30_Y27_N24
\data_RRFA1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~92_combout\ = (\memory[3][7]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][7]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~92_combout\);

-- Location: LCCOMB_X31_Y28_N14
\data_RRFA1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~94_combout\ = (\tag_A1[2]~input_o\ & (((\tag_A1[1]~input_o\)))) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & ((\data_RRFA1~92_combout\))) # (!\tag_A1[1]~input_o\ & (\data_RRFA1~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~93_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \tag_A1[1]~input_o\,
	datad => \data_RRFA1~92_combout\,
	combout => \data_RRFA1~94_combout\);

-- Location: LCCOMB_X31_Y26_N18
\data_RRFA1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~96_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~94_combout\ & ((\data_RRFA1~95_combout\))) # (!\data_RRFA1~94_combout\ & (\data_RRFA1~91_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~91_combout\,
	datac => \data_RRFA1~95_combout\,
	datad => \data_RRFA1~94_combout\,
	combout => \data_RRFA1~96_combout\);

-- Location: LCCOMB_X31_Y26_N28
\data_RRFA1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~103_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~96_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~102_combout\,
	datad => \data_RRFA1~96_combout\,
	combout => \data_RRFA1~103_combout\);

-- Location: FF_X31_Y26_N29
\data_RRFA1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~103_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[7]~reg0_q\);

-- Location: IOIBUF_X20_Y0_N8
\tag_data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(8),
	o => \tag_data_in[8]~input_o\);

-- Location: LCCOMB_X29_Y28_N20
\memory~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~24_combout\ = (\tag_data_en~input_o\ & \tag_data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_en~input_o\,
	datad => \tag_data_in[8]~input_o\,
	combout => \memory~24_combout\);

-- Location: FF_X30_Y30_N7
\memory[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][8]~q\);

-- Location: LCCOMB_X30_Y30_N6
\data_RRFA1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~114_combout\ = (\memory[6][16]~q\ & \memory[6][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][8]~q\,
	combout => \data_RRFA1~114_combout\);

-- Location: FF_X29_Y30_N27
\memory[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][8]~q\);

-- Location: LCCOMB_X29_Y30_N26
\data_RRFA1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~110_combout\ = (\memory[2][16]~q\ & \memory[2][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[2][16]~q\,
	datac => \memory[2][8]~q\,
	combout => \data_RRFA1~110_combout\);

-- Location: FF_X29_Y29_N23
\memory[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][8]~q\);

-- Location: LCCOMB_X29_Y29_N22
\data_RRFA1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~112_combout\ = (\memory[0][8]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][8]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~112_combout\);

-- Location: FF_X31_Y27_N13
\memory[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][8]~q\);

-- Location: LCCOMB_X31_Y27_N12
\data_RRFA1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~111_combout\ = (\memory[4][8]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][8]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~111_combout\);

-- Location: LCCOMB_X29_Y30_N0
\data_RRFA1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~113_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & ((\data_RRFA1~111_combout\))) # (!\tag_A1[2]~input_o\ & (\data_RRFA1~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~112_combout\,
	datad => \data_RRFA1~111_combout\,
	combout => \data_RRFA1~113_combout\);

-- Location: LCCOMB_X29_Y30_N14
\data_RRFA1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~115_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~113_combout\ & (\data_RRFA1~114_combout\)) # (!\data_RRFA1~113_combout\ & ((\data_RRFA1~110_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~114_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~110_combout\,
	datad => \data_RRFA1~113_combout\,
	combout => \data_RRFA1~115_combout\);

-- Location: FF_X29_Y29_N25
\memory[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][8]~q\);

-- Location: LCCOMB_X29_Y29_N24
\data_RRFA1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~108_combout\ = (\memory[7][8]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][8]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~108_combout\);

-- Location: FF_X29_Y28_N3
\memory[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][8]~q\);

-- Location: LCCOMB_X29_Y28_N2
\data_RRFA1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~104_combout\ = (\memory[5][8]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][8]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~104_combout\);

-- Location: FF_X31_Y30_N25
\memory[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][8]~q\);

-- Location: LCCOMB_X31_Y30_N24
\data_RRFA1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~106_combout\ = (\memory[1][8]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][8]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~106_combout\);

-- Location: FF_X30_Y27_N11
\memory[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][8]~q\);

-- Location: LCCOMB_X30_Y27_N10
\data_RRFA1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~105_combout\ = (\memory[3][8]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][8]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~105_combout\);

-- Location: LCCOMB_X29_Y30_N18
\data_RRFA1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~107_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~105_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & (\data_RRFA1~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~106_combout\,
	datad => \data_RRFA1~105_combout\,
	combout => \data_RRFA1~107_combout\);

-- Location: LCCOMB_X29_Y30_N20
\data_RRFA1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~109_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~107_combout\ & (\data_RRFA1~108_combout\)) # (!\data_RRFA1~107_combout\ & ((\data_RRFA1~104_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~108_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~104_combout\,
	datad => \data_RRFA1~107_combout\,
	combout => \data_RRFA1~109_combout\);

-- Location: LCCOMB_X29_Y30_N24
\data_RRFA1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~116_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~109_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~115_combout\,
	datad => \data_RRFA1~109_combout\,
	combout => \data_RRFA1~116_combout\);

-- Location: FF_X29_Y30_N25
\data_RRFA1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~116_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[8]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N22
\tag_data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(9),
	o => \tag_data_in[9]~input_o\);

-- Location: LCCOMB_X29_Y26_N18
\memory~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~25_combout\ = (\tag_data_in[9]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_in[9]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~25_combout\);

-- Location: FF_X32_Y27_N25
\memory[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][9]~q\);

-- Location: LCCOMB_X32_Y27_N24
\data_RRFA1~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~123_combout\ = (\memory[2][9]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][9]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~123_combout\);

-- Location: FF_X31_Y27_N31
\memory[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][9]~q\);

-- Location: LCCOMB_X31_Y27_N30
\data_RRFA1~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~124_combout\ = (\memory[4][9]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][9]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~124_combout\);

-- Location: FF_X30_Y29_N17
\memory[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][9]~q\);

-- Location: LCCOMB_X30_Y29_N16
\data_RRFA1~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~125_combout\ = (\memory[0][9]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][9]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~125_combout\);

-- Location: LCCOMB_X34_Y26_N22
\data_RRFA1~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~126_combout\ = (\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\) # ((\data_RRFA1~124_combout\)))) # (!\tag_A1[2]~input_o\ & (!\tag_A1[1]~input_o\ & ((\data_RRFA1~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~124_combout\,
	datad => \data_RRFA1~125_combout\,
	combout => \data_RRFA1~126_combout\);

-- Location: FF_X29_Y26_N15
\memory[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][9]~q\);

-- Location: LCCOMB_X29_Y26_N14
\data_RRFA1~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~127_combout\ = (\memory[6][9]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][9]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~127_combout\);

-- Location: LCCOMB_X34_Y26_N4
\data_RRFA1~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~128_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~126_combout\ & ((\data_RRFA1~127_combout\))) # (!\data_RRFA1~126_combout\ & (\data_RRFA1~123_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~123_combout\,
	datac => \data_RRFA1~126_combout\,
	datad => \data_RRFA1~127_combout\,
	combout => \data_RRFA1~128_combout\);

-- Location: FF_X30_Y29_N27
\memory[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][9]~q\);

-- Location: LCCOMB_X30_Y29_N26
\data_RRFA1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~121_combout\ = (\memory[7][9]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][9]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~121_combout\);

-- Location: FF_X29_Y28_N5
\memory[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][9]~q\);

-- Location: LCCOMB_X29_Y28_N4
\data_RRFA1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~117_combout\ = (\memory[5][9]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][9]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~117_combout\);

-- Location: FF_X30_Y27_N9
\memory[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][9]~q\);

-- Location: LCCOMB_X30_Y27_N8
\data_RRFA1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~118_combout\ = (\memory[3][9]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][9]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~118_combout\);

-- Location: FF_X30_Y28_N31
\memory[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][9]~q\);

-- Location: LCCOMB_X30_Y28_N30
\data_RRFA1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~119_combout\ = (\memory[1][9]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][9]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~119_combout\);

-- Location: LCCOMB_X34_Y26_N2
\data_RRFA1~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~120_combout\ = (\tag_A1[2]~input_o\ & (\tag_A1[1]~input_o\)) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & (\data_RRFA1~118_combout\)) # (!\tag_A1[1]~input_o\ & ((\data_RRFA1~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~118_combout\,
	datad => \data_RRFA1~119_combout\,
	combout => \data_RRFA1~120_combout\);

-- Location: LCCOMB_X34_Y26_N0
\data_RRFA1~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~122_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~120_combout\ & (\data_RRFA1~121_combout\)) # (!\data_RRFA1~120_combout\ & ((\data_RRFA1~117_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~121_combout\,
	datac => \data_RRFA1~117_combout\,
	datad => \data_RRFA1~120_combout\,
	combout => \data_RRFA1~122_combout\);

-- Location: LCCOMB_X34_Y26_N28
\data_RRFA1~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~129_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~122_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~128_combout\,
	datad => \data_RRFA1~122_combout\,
	combout => \data_RRFA1~129_combout\);

-- Location: FF_X34_Y26_N29
\data_RRFA1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~129_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[9]~reg0_q\);

-- Location: IOIBUF_X14_Y34_N15
\tag_data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(10),
	o => \tag_data_in[10]~input_o\);

-- Location: LCCOMB_X28_Y28_N30
\memory~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~26_combout\ = (\tag_data_en~input_o\ & \tag_data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_en~input_o\,
	datad => \tag_data_in[10]~input_o\,
	combout => \memory~26_combout\);

-- Location: FF_X29_Y25_N19
\memory[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][10]~q\);

-- Location: LCCOMB_X29_Y25_N18
\data_RRFA1~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~140_combout\ = (\memory[6][10]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][10]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~140_combout\);

-- Location: FF_X28_Y25_N27
\memory[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][10]~q\);

-- Location: LCCOMB_X28_Y25_N26
\data_RRFA1~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~136_combout\ = (\memory[2][10]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][10]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~136_combout\);

-- Location: FF_X29_Y29_N15
\memory[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][10]~q\);

-- Location: LCCOMB_X29_Y29_N14
\data_RRFA1~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~138_combout\ = (\memory[0][10]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][10]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~138_combout\);

-- Location: FF_X31_Y27_N5
\memory[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][10]~q\);

-- Location: LCCOMB_X31_Y27_N4
\data_RRFA1~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~137_combout\ = (\memory[4][10]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][10]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~137_combout\);

-- Location: LCCOMB_X28_Y25_N0
\data_RRFA1~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~139_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & ((\data_RRFA1~137_combout\))) # (!\tag_A1[2]~input_o\ & (\data_RRFA1~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~138_combout\,
	datad => \data_RRFA1~137_combout\,
	combout => \data_RRFA1~139_combout\);

-- Location: LCCOMB_X28_Y25_N22
\data_RRFA1~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~141_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~139_combout\ & (\data_RRFA1~140_combout\)) # (!\data_RRFA1~139_combout\ & ((\data_RRFA1~136_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~140_combout\,
	datac => \data_RRFA1~136_combout\,
	datad => \data_RRFA1~139_combout\,
	combout => \data_RRFA1~141_combout\);

-- Location: FF_X29_Y29_N21
\memory[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][10]~q\);

-- Location: LCCOMB_X29_Y29_N20
\data_RRFA1~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~134_combout\ = (\memory[7][10]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][10]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~134_combout\);

-- Location: FF_X29_Y28_N27
\memory[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][10]~q\);

-- Location: LCCOMB_X29_Y28_N26
\data_RRFA1~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~130_combout\ = (\memory[5][10]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][10]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~130_combout\);

-- Location: FF_X29_Y27_N29
\memory[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][10]~q\);

-- Location: LCCOMB_X29_Y27_N28
\data_RRFA1~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~131_combout\ = (\memory[3][10]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][10]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~131_combout\);

-- Location: FF_X28_Y28_N15
\memory[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][10]~q\);

-- Location: LCCOMB_X28_Y28_N14
\data_RRFA1~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~132_combout\ = (\memory[1][10]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][10]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~132_combout\);

-- Location: LCCOMB_X28_Y25_N2
\data_RRFA1~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~133_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~131_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & ((\data_RRFA1~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~131_combout\,
	datad => \data_RRFA1~132_combout\,
	combout => \data_RRFA1~133_combout\);

-- Location: LCCOMB_X28_Y25_N12
\data_RRFA1~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~135_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~133_combout\ & (\data_RRFA1~134_combout\)) # (!\data_RRFA1~133_combout\ & ((\data_RRFA1~130_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~134_combout\,
	datab => \data_RRFA1~130_combout\,
	datac => \tag_A1[2]~input_o\,
	datad => \data_RRFA1~133_combout\,
	combout => \data_RRFA1~135_combout\);

-- Location: LCCOMB_X28_Y25_N4
\data_RRFA1~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~142_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~135_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~141_combout\,
	datad => \data_RRFA1~135_combout\,
	combout => \data_RRFA1~142_combout\);

-- Location: FF_X28_Y25_N5
\data_RRFA1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~142_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[10]~reg0_q\);

-- Location: IOIBUF_X53_Y15_N8
\tag_data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(11),
	o => \tag_data_in[11]~input_o\);

-- Location: LCCOMB_X32_Y27_N10
\memory~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~27_combout\ = (\tag_data_en~input_o\ & \tag_data_in[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_en~input_o\,
	datad => \tag_data_in[11]~input_o\,
	combout => \memory~27_combout\);

-- Location: FF_X29_Y26_N5
\memory[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][11]~q\);

-- Location: LCCOMB_X29_Y26_N4
\data_RRFA1~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~153_combout\ = (\memory[6][11]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][11]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~153_combout\);

-- Location: FF_X29_Y29_N31
\memory[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][11]~q\);

-- Location: LCCOMB_X29_Y29_N30
\data_RRFA1~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~151_combout\ = (\memory[0][11]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][11]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~151_combout\);

-- Location: FF_X31_Y27_N15
\memory[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][11]~q\);

-- Location: LCCOMB_X31_Y27_N14
\data_RRFA1~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~150_combout\ = (\memory[4][16]~q\ & \memory[4][11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[4][16]~q\,
	datac => \memory[4][11]~q\,
	combout => \data_RRFA1~150_combout\);

-- Location: LCCOMB_X27_Y28_N26
\data_RRFA1~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~152_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & ((\data_RRFA1~150_combout\))) # (!\tag_A1[2]~input_o\ & (\data_RRFA1~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~151_combout\,
	datad => \data_RRFA1~150_combout\,
	combout => \data_RRFA1~152_combout\);

-- Location: FF_X32_Y27_N7
\memory[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][11]~q\);

-- Location: LCCOMB_X32_Y27_N6
\data_RRFA1~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~149_combout\ = (\memory[2][11]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][11]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~149_combout\);

-- Location: LCCOMB_X27_Y28_N4
\data_RRFA1~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~154_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~152_combout\ & (\data_RRFA1~153_combout\)) # (!\data_RRFA1~152_combout\ & ((\data_RRFA1~149_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~153_combout\,
	datac => \data_RRFA1~152_combout\,
	datad => \data_RRFA1~149_combout\,
	combout => \data_RRFA1~154_combout\);

-- Location: FF_X29_Y28_N17
\memory[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][11]~q\);

-- Location: LCCOMB_X29_Y28_N16
\data_RRFA1~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~143_combout\ = (\memory[5][11]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][11]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~143_combout\);

-- Location: FF_X29_Y29_N29
\memory[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][11]~q\);

-- Location: LCCOMB_X29_Y29_N28
\data_RRFA1~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~147_combout\ = (\memory[7][11]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][11]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~147_combout\);

-- Location: FF_X28_Y28_N21
\memory[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][11]~q\);

-- Location: LCCOMB_X28_Y28_N20
\data_RRFA1~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~145_combout\ = (\memory[1][11]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][11]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~145_combout\);

-- Location: FF_X30_Y27_N23
\memory[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][11]~q\);

-- Location: LCCOMB_X30_Y27_N22
\data_RRFA1~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~144_combout\ = (\memory[3][11]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][11]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~144_combout\);

-- Location: LCCOMB_X27_Y28_N6
\data_RRFA1~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~146_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~144_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & (\data_RRFA1~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~145_combout\,
	datad => \data_RRFA1~144_combout\,
	combout => \data_RRFA1~146_combout\);

-- Location: LCCOMB_X27_Y28_N0
\data_RRFA1~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~148_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~146_combout\ & ((\data_RRFA1~147_combout\))) # (!\data_RRFA1~146_combout\ & (\data_RRFA1~143_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~143_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~147_combout\,
	datad => \data_RRFA1~146_combout\,
	combout => \data_RRFA1~148_combout\);

-- Location: LCCOMB_X27_Y28_N28
\data_RRFA1~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~155_combout\ = (\tag_A1[0]~input_o\ & ((\data_RRFA1~148_combout\))) # (!\tag_A1[0]~input_o\ & (\data_RRFA1~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~154_combout\,
	datad => \data_RRFA1~148_combout\,
	combout => \data_RRFA1~155_combout\);

-- Location: FF_X27_Y28_N29
\data_RRFA1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~155_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[11]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N1
\tag_data_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(12),
	o => \tag_data_in[12]~input_o\);

-- Location: LCCOMB_X30_Y26_N14
\memory~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~28_combout\ = (\tag_data_in[12]~input_o\ & \tag_data_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_data_in[12]~input_o\,
	datad => \tag_data_en~input_o\,
	combout => \memory~28_combout\);

-- Location: FF_X29_Y28_N15
\memory[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][12]~q\);

-- Location: LCCOMB_X29_Y28_N14
\data_RRFA1~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~156_combout\ = (\memory[5][12]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][12]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~156_combout\);

-- Location: FF_X29_Y29_N1
\memory[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][12]~q\);

-- Location: LCCOMB_X29_Y29_N0
\data_RRFA1~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~160_combout\ = (\memory[7][12]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][12]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~160_combout\);

-- Location: FF_X27_Y30_N5
\memory[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][12]~q\);

-- Location: LCCOMB_X27_Y30_N4
\data_RRFA1~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~157_combout\ = (\memory[3][12]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][12]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~157_combout\);

-- Location: FF_X28_Y30_N31
\memory[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][12]~q\);

-- Location: LCCOMB_X28_Y30_N30
\data_RRFA1~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~158_combout\ = (\memory[1][12]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][12]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~158_combout\);

-- Location: LCCOMB_X28_Y30_N16
\data_RRFA1~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~159_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~157_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & ((\data_RRFA1~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~157_combout\,
	datad => \data_RRFA1~158_combout\,
	combout => \data_RRFA1~159_combout\);

-- Location: LCCOMB_X28_Y30_N14
\data_RRFA1~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~161_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~159_combout\ & ((\data_RRFA1~160_combout\))) # (!\data_RRFA1~159_combout\ & (\data_RRFA1~156_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~156_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~160_combout\,
	datad => \data_RRFA1~159_combout\,
	combout => \data_RRFA1~161_combout\);

-- Location: FF_X29_Y26_N11
\memory[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][12]~q\);

-- Location: LCCOMB_X29_Y26_N10
\data_RRFA1~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~166_combout\ = (\memory[6][12]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][12]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~166_combout\);

-- Location: FF_X30_Y27_N1
\memory[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][12]~q\);

-- Location: LCCOMB_X30_Y27_N0
\data_RRFA1~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~163_combout\ = (\memory[4][12]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][12]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~163_combout\);

-- Location: FF_X29_Y29_N19
\memory[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][12]~q\);

-- Location: LCCOMB_X29_Y29_N18
\data_RRFA1~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~164_combout\ = (\memory[0][12]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][12]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~164_combout\);

-- Location: LCCOMB_X28_Y30_N8
\data_RRFA1~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~165_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~163_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~163_combout\,
	datad => \data_RRFA1~164_combout\,
	combout => \data_RRFA1~165_combout\);

-- Location: FF_X28_Y29_N27
\memory[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][12]~q\);

-- Location: LCCOMB_X28_Y29_N26
\data_RRFA1~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~162_combout\ = (\memory[2][12]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][12]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~162_combout\);

-- Location: LCCOMB_X28_Y30_N10
\data_RRFA1~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~167_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~165_combout\ & (\data_RRFA1~166_combout\)) # (!\data_RRFA1~165_combout\ & ((\data_RRFA1~162_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~166_combout\,
	datac => \data_RRFA1~165_combout\,
	datad => \data_RRFA1~162_combout\,
	combout => \data_RRFA1~167_combout\);

-- Location: LCCOMB_X28_Y30_N24
\data_RRFA1~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~168_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~161_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~161_combout\,
	datad => \data_RRFA1~167_combout\,
	combout => \data_RRFA1~168_combout\);

-- Location: FF_X28_Y30_N25
\data_RRFA1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~168_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[12]~reg0_q\);

-- Location: IOIBUF_X53_Y20_N15
\tag_data_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(13),
	o => \tag_data_in[13]~input_o\);

-- Location: LCCOMB_X30_Y27_N20
\memory~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~29_combout\ = (\tag_data_en~input_o\ & \tag_data_in[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_data_en~input_o\,
	datad => \tag_data_in[13]~input_o\,
	combout => \memory~29_combout\);

-- Location: FF_X29_Y29_N9
\memory[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][13]~q\);

-- Location: LCCOMB_X29_Y29_N8
\data_RRFA1~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~173_combout\ = (\memory[7][13]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][13]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~173_combout\);

-- Location: FF_X29_Y28_N1
\memory[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][13]~q\);

-- Location: LCCOMB_X29_Y28_N0
\data_RRFA1~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~169_combout\ = (\memory[5][13]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][13]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~169_combout\);

-- Location: FF_X30_Y27_N19
\memory[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][13]~q\);

-- Location: LCCOMB_X30_Y27_N18
\data_RRFA1~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~170_combout\ = (\memory[3][13]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][13]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~170_combout\);

-- Location: FF_X30_Y28_N17
\memory[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][13]~q\);

-- Location: LCCOMB_X30_Y28_N16
\data_RRFA1~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~171_combout\ = (\memory[1][13]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][13]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~171_combout\);

-- Location: LCCOMB_X31_Y29_N12
\data_RRFA1~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~172_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~170_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & ((\data_RRFA1~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~170_combout\,
	datad => \data_RRFA1~171_combout\,
	combout => \data_RRFA1~172_combout\);

-- Location: LCCOMB_X31_Y29_N14
\data_RRFA1~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~174_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~172_combout\ & (\data_RRFA1~173_combout\)) # (!\data_RRFA1~172_combout\ & ((\data_RRFA1~169_combout\))))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~173_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~169_combout\,
	datad => \data_RRFA1~172_combout\,
	combout => \data_RRFA1~174_combout\);

-- Location: FF_X31_Y26_N27
\memory[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][13]~q\);

-- Location: LCCOMB_X31_Y26_N26
\data_RRFA1~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~179_combout\ = (\memory[6][16]~q\ & \memory[6][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][13]~q\,
	combout => \data_RRFA1~179_combout\);

-- Location: FF_X32_Y27_N21
\memory[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][13]~q\);

-- Location: LCCOMB_X32_Y27_N20
\data_RRFA1~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~175_combout\ = (\memory[2][13]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][13]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~175_combout\);

-- Location: FF_X31_Y27_N17
\memory[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][13]~q\);

-- Location: LCCOMB_X31_Y27_N16
\data_RRFA1~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~176_combout\ = (\memory[4][13]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][13]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~176_combout\);

-- Location: FF_X32_Y29_N3
\memory[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][13]~q\);

-- Location: LCCOMB_X32_Y29_N2
\data_RRFA1~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~177_combout\ = (\memory[0][13]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][13]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~177_combout\);

-- Location: LCCOMB_X31_Y29_N16
\data_RRFA1~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~178_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~176_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~176_combout\,
	datad => \data_RRFA1~177_combout\,
	combout => \data_RRFA1~178_combout\);

-- Location: LCCOMB_X31_Y29_N10
\data_RRFA1~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~180_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~178_combout\ & (\data_RRFA1~179_combout\)) # (!\data_RRFA1~178_combout\ & ((\data_RRFA1~175_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~179_combout\,
	datac => \data_RRFA1~175_combout\,
	datad => \data_RRFA1~178_combout\,
	combout => \data_RRFA1~180_combout\);

-- Location: LCCOMB_X31_Y29_N28
\data_RRFA1~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~181_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~174_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~174_combout\,
	datad => \data_RRFA1~180_combout\,
	combout => \data_RRFA1~181_combout\);

-- Location: FF_X31_Y29_N29
\data_RRFA1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~181_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[13]~reg0_q\);

-- Location: IOIBUF_X53_Y11_N8
\tag_data_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(14),
	o => \tag_data_in[14]~input_o\);

-- Location: LCCOMB_X32_Y27_N4
\memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~30_combout\ = (\tag_data_en~input_o\ & \tag_data_in[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_en~input_o\,
	datad => \tag_data_in[14]~input_o\,
	combout => \memory~30_combout\);

-- Location: FF_X32_Y26_N3
\memory[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][14]~q\);

-- Location: LCCOMB_X32_Y26_N2
\data_RRFA1~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~182_combout\ = (\memory[5][14]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][14]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~182_combout\);

-- Location: FF_X30_Y29_N7
\memory[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][14]~q\);

-- Location: LCCOMB_X30_Y29_N6
\data_RRFA1~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~186_combout\ = (\memory[7][14]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][14]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~186_combout\);

-- Location: FF_X30_Y27_N29
\memory[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][14]~q\);

-- Location: LCCOMB_X30_Y27_N28
\data_RRFA1~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~183_combout\ = (\memory[3][14]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][14]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~183_combout\);

-- Location: FF_X31_Y28_N1
\memory[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][14]~q\);

-- Location: LCCOMB_X31_Y28_N0
\data_RRFA1~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~184_combout\ = (\memory[1][14]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][14]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~184_combout\);

-- Location: LCCOMB_X32_Y26_N24
\data_RRFA1~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~185_combout\ = (\tag_A1[2]~input_o\ & (\tag_A1[1]~input_o\)) # (!\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\ & (\data_RRFA1~183_combout\)) # (!\tag_A1[1]~input_o\ & ((\data_RRFA1~184_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~183_combout\,
	datad => \data_RRFA1~184_combout\,
	combout => \data_RRFA1~185_combout\);

-- Location: LCCOMB_X32_Y26_N14
\data_RRFA1~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~187_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~185_combout\ & ((\data_RRFA1~186_combout\))) # (!\data_RRFA1~185_combout\ & (\data_RRFA1~182_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \data_RRFA1~182_combout\,
	datac => \data_RRFA1~186_combout\,
	datad => \data_RRFA1~185_combout\,
	combout => \data_RRFA1~187_combout\);

-- Location: FF_X32_Y27_N19
\memory[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][14]~q\);

-- Location: LCCOMB_X32_Y27_N18
\data_RRFA1~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~188_combout\ = (\memory[2][14]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][14]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~188_combout\);

-- Location: FF_X31_Y26_N25
\memory[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][14]~q\);

-- Location: LCCOMB_X31_Y26_N24
\data_RRFA1~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~192_combout\ = (\memory[6][16]~q\ & \memory[6][14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[6][16]~q\,
	datac => \memory[6][14]~q\,
	combout => \data_RRFA1~192_combout\);

-- Location: FF_X31_Y27_N27
\memory[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][14]~q\);

-- Location: LCCOMB_X31_Y27_N26
\data_RRFA1~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~189_combout\ = (\memory[4][14]~q\ & \memory[4][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[4][14]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA1~189_combout\);

-- Location: FF_X31_Y29_N25
\memory[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][14]~q\);

-- Location: LCCOMB_X31_Y29_N24
\data_RRFA1~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~190_combout\ = (\memory[0][14]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][14]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~190_combout\);

-- Location: LCCOMB_X32_Y26_N0
\data_RRFA1~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~191_combout\ = (\tag_A1[2]~input_o\ & ((\tag_A1[1]~input_o\) # ((\data_RRFA1~189_combout\)))) # (!\tag_A1[2]~input_o\ & (!\tag_A1[1]~input_o\ & ((\data_RRFA1~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[2]~input_o\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~189_combout\,
	datad => \data_RRFA1~190_combout\,
	combout => \data_RRFA1~191_combout\);

-- Location: LCCOMB_X32_Y26_N10
\data_RRFA1~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~193_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~191_combout\ & ((\data_RRFA1~192_combout\))) # (!\data_RRFA1~191_combout\ & (\data_RRFA1~188_combout\)))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~188_combout\,
	datab => \tag_A1[1]~input_o\,
	datac => \data_RRFA1~192_combout\,
	datad => \data_RRFA1~191_combout\,
	combout => \data_RRFA1~193_combout\);

-- Location: LCCOMB_X32_Y26_N8
\data_RRFA1~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~194_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~187_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~187_combout\,
	datad => \data_RRFA1~193_combout\,
	combout => \data_RRFA1~194_combout\);

-- Location: FF_X32_Y26_N9
\data_RRFA1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~194_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[14]~reg0_q\);

-- Location: IOIBUF_X53_Y11_N1
\tag_data_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_data_in(15),
	o => \tag_data_in[15]~input_o\);

-- Location: LCCOMB_X32_Y27_N26
\memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~31_combout\ = (\tag_data_en~input_o\ & \tag_data_in[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_data_en~input_o\,
	datad => \tag_data_in[15]~input_o\,
	combout => \memory~31_combout\);

-- Location: FF_X29_Y28_N31
\memory[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][15]~q\);

-- Location: LCCOMB_X29_Y28_N30
\data_RRFA1~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~195_combout\ = (\memory[5][15]~q\ & \memory[5][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[5][15]~q\,
	datad => \memory[5][16]~q\,
	combout => \data_RRFA1~195_combout\);

-- Location: FF_X27_Y27_N15
\memory[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][15]~q\);

-- Location: LCCOMB_X27_Y27_N14
\data_RRFA1~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~197_combout\ = (\memory[1][15]~q\ & \memory[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[1][15]~q\,
	datad => \memory[1][16]~q\,
	combout => \data_RRFA1~197_combout\);

-- Location: FF_X29_Y27_N11
\memory[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][15]~q\);

-- Location: LCCOMB_X29_Y27_N10
\data_RRFA1~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~196_combout\ = (\memory[3][15]~q\ & \memory[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[3][15]~q\,
	datad => \memory[3][16]~q\,
	combout => \data_RRFA1~196_combout\);

-- Location: LCCOMB_X27_Y27_N8
\data_RRFA1~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~198_combout\ = (\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\) # ((\data_RRFA1~196_combout\)))) # (!\tag_A1[1]~input_o\ & (!\tag_A1[2]~input_o\ & (\data_RRFA1~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~197_combout\,
	datad => \data_RRFA1~196_combout\,
	combout => \data_RRFA1~198_combout\);

-- Location: FF_X29_Y29_N11
\memory[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][15]~q\);

-- Location: LCCOMB_X29_Y29_N10
\data_RRFA1~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~199_combout\ = (\memory[7][15]~q\ & \memory[7][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[7][15]~q\,
	datad => \memory[7][16]~q\,
	combout => \data_RRFA1~199_combout\);

-- Location: LCCOMB_X27_Y27_N30
\data_RRFA1~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~200_combout\ = (\tag_A1[2]~input_o\ & ((\data_RRFA1~198_combout\ & ((\data_RRFA1~199_combout\))) # (!\data_RRFA1~198_combout\ & (\data_RRFA1~195_combout\)))) # (!\tag_A1[2]~input_o\ & (((\data_RRFA1~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~195_combout\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~198_combout\,
	datad => \data_RRFA1~199_combout\,
	combout => \data_RRFA1~200_combout\);

-- Location: FF_X28_Y26_N3
\memory[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][15]~q\);

-- Location: LCCOMB_X28_Y26_N2
\data_RRFA1~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~205_combout\ = (\memory[6][15]~q\ & \memory[6][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[6][15]~q\,
	datad => \memory[6][16]~q\,
	combout => \data_RRFA1~205_combout\);

-- Location: FF_X32_Y27_N17
\memory[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][15]~q\);

-- Location: LCCOMB_X32_Y27_N16
\data_RRFA1~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~201_combout\ = (\memory[2][15]~q\ & \memory[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[2][15]~q\,
	datad => \memory[2][16]~q\,
	combout => \data_RRFA1~201_combout\);

-- Location: FF_X28_Y27_N11
\memory[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][15]~q\);

-- Location: LCCOMB_X28_Y27_N10
\data_RRFA1~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~202_combout\ = (\memory[4][16]~q\ & \memory[4][15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory[4][16]~q\,
	datac => \memory[4][15]~q\,
	combout => \data_RRFA1~202_combout\);

-- Location: FF_X29_Y29_N5
\memory[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \memory~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][15]~q\);

-- Location: LCCOMB_X29_Y29_N4
\data_RRFA1~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~203_combout\ = (\memory[0][15]~q\ & \memory[0][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory[0][15]~q\,
	datad => \memory[0][16]~q\,
	combout => \data_RRFA1~203_combout\);

-- Location: LCCOMB_X27_Y27_N24
\data_RRFA1~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~204_combout\ = (\tag_A1[1]~input_o\ & (\tag_A1[2]~input_o\)) # (!\tag_A1[1]~input_o\ & ((\tag_A1[2]~input_o\ & (\data_RRFA1~202_combout\)) # (!\tag_A1[2]~input_o\ & ((\data_RRFA1~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \tag_A1[2]~input_o\,
	datac => \data_RRFA1~202_combout\,
	datad => \data_RRFA1~203_combout\,
	combout => \data_RRFA1~204_combout\);

-- Location: LCCOMB_X27_Y27_N6
\data_RRFA1~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~206_combout\ = (\tag_A1[1]~input_o\ & ((\data_RRFA1~204_combout\ & (\data_RRFA1~205_combout\)) # (!\data_RRFA1~204_combout\ & ((\data_RRFA1~201_combout\))))) # (!\tag_A1[1]~input_o\ & (((\data_RRFA1~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[1]~input_o\,
	datab => \data_RRFA1~205_combout\,
	datac => \data_RRFA1~201_combout\,
	datad => \data_RRFA1~204_combout\,
	combout => \data_RRFA1~206_combout\);

-- Location: LCCOMB_X27_Y27_N20
\data_RRFA1~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA1~207_combout\ = (\tag_A1[0]~input_o\ & (\data_RRFA1~200_combout\)) # (!\tag_A1[0]~input_o\ & ((\data_RRFA1~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A1[0]~input_o\,
	datac => \data_RRFA1~200_combout\,
	datad => \data_RRFA1~206_combout\,
	combout => \data_RRFA1~207_combout\);

-- Location: FF_X27_Y27_N21
\data_RRFA1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA1~207_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA1[15]~reg0_q\);

-- Location: IOIBUF_X40_Y34_N8
\tag_B1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B1(0),
	o => \tag_B1[0]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\tag_B1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B1(1),
	o => \tag_B1[1]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\tag_B1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B1(2),
	o => \tag_B1[2]~input_o\);

-- Location: LCCOMB_X28_Y26_N28
\data_RRFB1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~2_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~7_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & ((\data_RRFA1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~7_combout\,
	datad => \data_RRFA1~8_combout\,
	combout => \data_RRFB1~2_combout\);

-- Location: LCCOMB_X28_Y26_N14
\data_RRFB1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~3_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~2_combout\ & (\data_RRFA1~10_combout\)) # (!\data_RRFB1~2_combout\ & ((\data_RRFA1~6_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~10_combout\,
	datac => \data_RRFA1~6_combout\,
	datad => \data_RRFB1~2_combout\,
	combout => \data_RRFB1~3_combout\);

-- Location: LCCOMB_X28_Y26_N0
\data_RRFB1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~0_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFA1~1_combout\) # ((\tag_B1[2]~input_o\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFA1~2_combout\ & !\tag_B1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~1_combout\,
	datac => \data_RRFA1~2_combout\,
	datad => \tag_B1[2]~input_o\,
	combout => \data_RRFB1~0_combout\);

-- Location: LCCOMB_X28_Y26_N6
\data_RRFB1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~1_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~0_combout\ & (\data_RRFA1~4_combout\)) # (!\data_RRFB1~0_combout\ & ((\data_RRFA1~0_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~4_combout\,
	datac => \data_RRFA1~0_combout\,
	datad => \data_RRFB1~0_combout\,
	combout => \data_RRFB1~1_combout\);

-- Location: LCCOMB_X28_Y26_N22
\data_RRFB1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~4_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~1_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~3_combout\,
	datad => \data_RRFB1~1_combout\,
	combout => \data_RRFB1~4_combout\);

-- Location: FF_X28_Y26_N23
\data_RRFB1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[0]~reg0_q\);

-- Location: LCCOMB_X29_Y27_N8
\data_RRFB1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~5_combout\ = (\tag_B1[2]~input_o\ & (((\tag_B1[1]~input_o\)))) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~14_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~14_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \tag_B1[1]~input_o\,
	datad => \data_RRFA1~15_combout\,
	combout => \data_RRFB1~5_combout\);

-- Location: LCCOMB_X29_Y27_N30
\data_RRFB1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~6_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~5_combout\ & (\data_RRFA1~17_combout\)) # (!\data_RRFB1~5_combout\ & ((\data_RRFA1~13_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~17_combout\,
	datac => \data_RRFB1~5_combout\,
	datad => \data_RRFA1~13_combout\,
	combout => \data_RRFB1~6_combout\);

-- Location: LCCOMB_X31_Y27_N24
\data_RRFB1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~7_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~20_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & (\data_RRFA1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~21_combout\,
	datad => \data_RRFA1~20_combout\,
	combout => \data_RRFB1~7_combout\);

-- Location: LCCOMB_X31_Y27_N18
\data_RRFB1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~8_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~7_combout\ & (\data_RRFA1~23_combout\)) # (!\data_RRFB1~7_combout\ & ((\data_RRFA1~19_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~23_combout\,
	datac => \data_RRFA1~19_combout\,
	datad => \data_RRFB1~7_combout\,
	combout => \data_RRFB1~8_combout\);

-- Location: LCCOMB_X29_Y27_N2
\data_RRFB1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~9_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~6_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~6_combout\,
	datad => \data_RRFB1~8_combout\,
	combout => \data_RRFB1~9_combout\);

-- Location: FF_X29_Y27_N3
\data_RRFB1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~9_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[1]~reg0_q\);

-- Location: LCCOMB_X34_Y29_N6
\data_RRFB1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~10_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~27_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~27_combout\,
	datad => \data_RRFA1~28_combout\,
	combout => \data_RRFB1~10_combout\);

-- Location: LCCOMB_X34_Y29_N8
\data_RRFB1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~11_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~10_combout\ & (\data_RRFA1~30_combout\)) # (!\data_RRFB1~10_combout\ & ((\data_RRFA1~26_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~30_combout\,
	datac => \data_RRFA1~26_combout\,
	datad => \data_RRFB1~10_combout\,
	combout => \data_RRFB1~11_combout\);

-- Location: LCCOMB_X34_Y29_N26
\data_RRFB1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~12_combout\ = (\tag_B1[1]~input_o\ & (\tag_B1[2]~input_o\)) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~33_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~33_combout\,
	datad => \data_RRFA1~34_combout\,
	combout => \data_RRFB1~12_combout\);

-- Location: LCCOMB_X34_Y29_N20
\data_RRFB1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~13_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~12_combout\ & (\data_RRFA1~36_combout\)) # (!\data_RRFB1~12_combout\ & ((\data_RRFA1~32_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~36_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFB1~12_combout\,
	datad => \data_RRFA1~32_combout\,
	combout => \data_RRFB1~13_combout\);

-- Location: LCCOMB_X34_Y29_N2
\data_RRFB1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~14_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~11_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~11_combout\,
	datad => \data_RRFB1~13_combout\,
	combout => \data_RRFB1~14_combout\);

-- Location: FF_X34_Y29_N3
\data_RRFB1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~14_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[2]~reg0_q\);

-- Location: LCCOMB_X35_Y27_N16
\data_RRFB1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~15_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~40_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~40_combout\,
	datad => \data_RRFA1~41_combout\,
	combout => \data_RRFB1~15_combout\);

-- Location: LCCOMB_X35_Y27_N14
\data_RRFB1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~16_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~15_combout\ & ((\data_RRFA1~43_combout\))) # (!\data_RRFB1~15_combout\ & (\data_RRFA1~39_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~39_combout\,
	datac => \data_RRFA1~43_combout\,
	datad => \data_RRFB1~15_combout\,
	combout => \data_RRFB1~16_combout\);

-- Location: LCCOMB_X35_Y27_N20
\data_RRFB1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~17_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~46_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & ((\data_RRFA1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~46_combout\,
	datad => \data_RRFA1~47_combout\,
	combout => \data_RRFB1~17_combout\);

-- Location: LCCOMB_X35_Y27_N6
\data_RRFB1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~18_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~17_combout\ & ((\data_RRFA1~49_combout\))) # (!\data_RRFB1~17_combout\ & (\data_RRFA1~45_combout\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~45_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~49_combout\,
	datad => \data_RRFB1~17_combout\,
	combout => \data_RRFB1~18_combout\);

-- Location: LCCOMB_X35_Y27_N26
\data_RRFB1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~19_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~16_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~16_combout\,
	datad => \data_RRFB1~18_combout\,
	combout => \data_RRFB1~19_combout\);

-- Location: FF_X35_Y27_N27
\data_RRFB1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~19_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[3]~reg0_q\);

-- Location: LCCOMB_X31_Y25_N12
\data_RRFB1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~20_combout\ = (\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\) # ((\data_RRFA1~53_combout\)))) # (!\tag_B1[1]~input_o\ & (!\tag_B1[2]~input_o\ & (\data_RRFA1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~54_combout\,
	datad => \data_RRFA1~53_combout\,
	combout => \data_RRFB1~20_combout\);

-- Location: LCCOMB_X31_Y25_N22
\data_RRFB1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~21_combout\ = (\data_RRFB1~20_combout\ & (((\data_RRFA1~56_combout\)) # (!\tag_B1[2]~input_o\))) # (!\data_RRFB1~20_combout\ & (\tag_B1[2]~input_o\ & (\data_RRFA1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFB1~20_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~52_combout\,
	datad => \data_RRFA1~56_combout\,
	combout => \data_RRFB1~21_combout\);

-- Location: LCCOMB_X31_Y25_N28
\data_RRFB1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~22_combout\ = (\tag_B1[1]~input_o\ & (\tag_B1[2]~input_o\)) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~59_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~59_combout\,
	datad => \data_RRFA1~60_combout\,
	combout => \data_RRFB1~22_combout\);

-- Location: LCCOMB_X31_Y25_N2
\data_RRFB1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~23_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~22_combout\ & ((\data_RRFA1~62_combout\))) # (!\data_RRFB1~22_combout\ & (\data_RRFA1~58_combout\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~58_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~62_combout\,
	datad => \data_RRFB1~22_combout\,
	combout => \data_RRFB1~23_combout\);

-- Location: LCCOMB_X31_Y25_N6
\data_RRFB1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~24_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~21_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~21_combout\,
	datad => \data_RRFB1~23_combout\,
	combout => \data_RRFB1~24_combout\);

-- Location: FF_X31_Y25_N7
\data_RRFB1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~24_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[4]~reg0_q\);

-- Location: LCCOMB_X30_Y26_N12
\data_RRFB1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~27_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~72_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & (\data_RRFA1~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~73_combout\,
	datad => \data_RRFA1~72_combout\,
	combout => \data_RRFB1~27_combout\);

-- Location: LCCOMB_X30_Y26_N22
\data_RRFB1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~28_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~27_combout\ & (\data_RRFA1~75_combout\)) # (!\data_RRFB1~27_combout\ & ((\data_RRFA1~71_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~75_combout\,
	datac => \data_RRFA1~71_combout\,
	datad => \data_RRFB1~27_combout\,
	combout => \data_RRFB1~28_combout\);

-- Location: LCCOMB_X30_Y26_N4
\data_RRFB1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~25_combout\ = (\tag_B1[2]~input_o\ & (((\tag_B1[1]~input_o\)))) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~66_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~66_combout\,
	datac => \data_RRFA1~67_combout\,
	datad => \tag_B1[1]~input_o\,
	combout => \data_RRFB1~25_combout\);

-- Location: LCCOMB_X30_Y26_N18
\data_RRFB1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~26_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~25_combout\ & (\data_RRFA1~69_combout\)) # (!\data_RRFB1~25_combout\ & ((\data_RRFA1~65_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~69_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFB1~25_combout\,
	datad => \data_RRFA1~65_combout\,
	combout => \data_RRFB1~26_combout\);

-- Location: LCCOMB_X30_Y26_N2
\data_RRFB1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~29_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~26_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~28_combout\,
	datad => \data_RRFB1~26_combout\,
	combout => \data_RRFB1~29_combout\);

-- Location: FF_X30_Y26_N3
\data_RRFB1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~29_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[5]~reg0_q\);

-- Location: LCCOMB_X34_Y28_N8
\data_RRFB1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~30_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & ((\data_RRFA1~79_combout\))) # (!\tag_B1[1]~input_o\ & (\data_RRFA1~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~80_combout\,
	datad => \data_RRFA1~79_combout\,
	combout => \data_RRFB1~30_combout\);

-- Location: LCCOMB_X34_Y28_N14
\data_RRFB1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~31_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~30_combout\ & ((\data_RRFA1~82_combout\))) # (!\data_RRFB1~30_combout\ & (\data_RRFA1~78_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~78_combout\,
	datac => \data_RRFB1~30_combout\,
	datad => \data_RRFA1~82_combout\,
	combout => \data_RRFB1~31_combout\);

-- Location: LCCOMB_X34_Y28_N12
\data_RRFB1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~32_combout\ = (\tag_B1[1]~input_o\ & (((\tag_B1[2]~input_o\)))) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~85_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~85_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~86_combout\,
	datad => \tag_B1[2]~input_o\,
	combout => \data_RRFB1~32_combout\);

-- Location: LCCOMB_X34_Y28_N2
\data_RRFB1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~33_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~32_combout\ & ((\data_RRFA1~88_combout\))) # (!\data_RRFB1~32_combout\ & (\data_RRFA1~84_combout\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~84_combout\,
	datac => \data_RRFA1~88_combout\,
	datad => \data_RRFB1~32_combout\,
	combout => \data_RRFB1~33_combout\);

-- Location: LCCOMB_X34_Y28_N10
\data_RRFB1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~34_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~31_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~31_combout\,
	datad => \data_RRFB1~33_combout\,
	combout => \data_RRFB1~34_combout\);

-- Location: FF_X34_Y28_N11
\data_RRFB1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~34_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[6]~reg0_q\);

-- Location: LCCOMB_X32_Y25_N20
\data_RRFB1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~37_combout\ = (\tag_B1[1]~input_o\ & (\tag_B1[2]~input_o\)) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~98_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~98_combout\,
	datad => \data_RRFA1~99_combout\,
	combout => \data_RRFB1~37_combout\);

-- Location: LCCOMB_X32_Y25_N14
\data_RRFB1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~38_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~37_combout\ & (\data_RRFA1~101_combout\)) # (!\data_RRFB1~37_combout\ & ((\data_RRFA1~97_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~101_combout\,
	datac => \data_RRFA1~97_combout\,
	datad => \data_RRFB1~37_combout\,
	combout => \data_RRFB1~38_combout\);

-- Location: LCCOMB_X32_Y25_N0
\data_RRFB1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~35_combout\ = (\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\) # ((\data_RRFA1~92_combout\)))) # (!\tag_B1[1]~input_o\ & (!\tag_B1[2]~input_o\ & (\data_RRFA1~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~93_combout\,
	datad => \data_RRFA1~92_combout\,
	combout => \data_RRFB1~35_combout\);

-- Location: LCCOMB_X32_Y25_N18
\data_RRFB1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~36_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~35_combout\ & (\data_RRFA1~95_combout\)) # (!\data_RRFB1~35_combout\ & ((\data_RRFA1~91_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~95_combout\,
	datac => \data_RRFA1~91_combout\,
	datad => \data_RRFB1~35_combout\,
	combout => \data_RRFB1~36_combout\);

-- Location: LCCOMB_X32_Y25_N4
\data_RRFB1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~39_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~36_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~38_combout\,
	datad => \data_RRFB1~36_combout\,
	combout => \data_RRFB1~39_combout\);

-- Location: FF_X32_Y25_N5
\data_RRFB1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~39_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[7]~reg0_q\);

-- Location: LCCOMB_X29_Y30_N12
\data_RRFB1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~42_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~111_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & (\data_RRFA1~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~112_combout\,
	datad => \data_RRFA1~111_combout\,
	combout => \data_RRFB1~42_combout\);

-- Location: LCCOMB_X29_Y30_N30
\data_RRFB1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~43_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~42_combout\ & (\data_RRFA1~114_combout\)) # (!\data_RRFB1~42_combout\ & ((\data_RRFA1~110_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~114_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~110_combout\,
	datad => \data_RRFB1~42_combout\,
	combout => \data_RRFB1~43_combout\);

-- Location: LCCOMB_X29_Y30_N8
\data_RRFB1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~40_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & ((\data_RRFA1~105_combout\))) # (!\tag_B1[1]~input_o\ & (\data_RRFA1~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~106_combout\,
	datad => \data_RRFA1~105_combout\,
	combout => \data_RRFB1~40_combout\);

-- Location: LCCOMB_X29_Y30_N6
\data_RRFB1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~41_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~40_combout\ & ((\data_RRFA1~108_combout\))) # (!\data_RRFB1~40_combout\ & (\data_RRFA1~104_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~104_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFB1~40_combout\,
	datad => \data_RRFA1~108_combout\,
	combout => \data_RRFB1~41_combout\);

-- Location: LCCOMB_X29_Y30_N2
\data_RRFB1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~44_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~41_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~43_combout\,
	datad => \data_RRFB1~41_combout\,
	combout => \data_RRFB1~44_combout\);

-- Location: FF_X29_Y30_N3
\data_RRFB1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~44_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[8]~reg0_q\);

-- Location: LCCOMB_X34_Y26_N26
\data_RRFB1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~45_combout\ = (\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\) # ((\data_RRFA1~118_combout\)))) # (!\tag_B1[1]~input_o\ & (!\tag_B1[2]~input_o\ & ((\data_RRFA1~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~118_combout\,
	datad => \data_RRFA1~119_combout\,
	combout => \data_RRFB1~45_combout\);

-- Location: LCCOMB_X34_Y26_N20
\data_RRFB1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~46_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~45_combout\ & ((\data_RRFA1~121_combout\))) # (!\data_RRFB1~45_combout\ & (\data_RRFA1~117_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~117_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFB1~45_combout\,
	datad => \data_RRFA1~121_combout\,
	combout => \data_RRFB1~46_combout\);

-- Location: LCCOMB_X34_Y26_N6
\data_RRFB1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~47_combout\ = (\tag_B1[1]~input_o\ & (\tag_B1[2]~input_o\)) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~124_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~124_combout\,
	datad => \data_RRFA1~125_combout\,
	combout => \data_RRFB1~47_combout\);

-- Location: LCCOMB_X34_Y26_N24
\data_RRFB1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~48_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~47_combout\ & (\data_RRFA1~127_combout\)) # (!\data_RRFB1~47_combout\ & ((\data_RRFA1~123_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~127_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~123_combout\,
	datad => \data_RRFB1~47_combout\,
	combout => \data_RRFB1~48_combout\);

-- Location: LCCOMB_X34_Y26_N30
\data_RRFB1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~49_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~46_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_RRFB1~46_combout\,
	datac => \tag_B1[0]~input_o\,
	datad => \data_RRFB1~48_combout\,
	combout => \data_RRFB1~49_combout\);

-- Location: FF_X34_Y26_N31
\data_RRFB1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~49_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[9]~reg0_q\);

-- Location: LCCOMB_X28_Y25_N20
\data_RRFB1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~52_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~137_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & (\data_RRFA1~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~138_combout\,
	datad => \data_RRFA1~137_combout\,
	combout => \data_RRFB1~52_combout\);

-- Location: LCCOMB_X28_Y25_N14
\data_RRFB1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~53_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~52_combout\ & (\data_RRFA1~140_combout\)) # (!\data_RRFB1~52_combout\ & ((\data_RRFA1~136_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~140_combout\,
	datac => \data_RRFA1~136_combout\,
	datad => \data_RRFB1~52_combout\,
	combout => \data_RRFB1~53_combout\);

-- Location: LCCOMB_X28_Y25_N24
\data_RRFB1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~50_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~131_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~131_combout\,
	datad => \data_RRFA1~132_combout\,
	combout => \data_RRFB1~50_combout\);

-- Location: LCCOMB_X28_Y25_N6
\data_RRFB1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~51_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~50_combout\ & ((\data_RRFA1~134_combout\))) # (!\data_RRFB1~50_combout\ & (\data_RRFA1~130_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~130_combout\,
	datac => \data_RRFA1~134_combout\,
	datad => \data_RRFB1~50_combout\,
	combout => \data_RRFB1~51_combout\);

-- Location: LCCOMB_X28_Y25_N18
\data_RRFB1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~54_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~51_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~53_combout\,
	datad => \data_RRFB1~51_combout\,
	combout => \data_RRFB1~54_combout\);

-- Location: FF_X28_Y25_N19
\data_RRFB1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~54_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[10]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N22
\data_RRFB1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~55_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & ((\data_RRFA1~144_combout\))) # (!\tag_B1[1]~input_o\ & (\data_RRFA1~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~145_combout\,
	datad => \data_RRFA1~144_combout\,
	combout => \data_RRFB1~55_combout\);

-- Location: LCCOMB_X27_Y28_N8
\data_RRFB1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~56_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~55_combout\ & (\data_RRFA1~147_combout\)) # (!\data_RRFB1~55_combout\ & ((\data_RRFA1~143_combout\))))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~147_combout\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFB1~55_combout\,
	datad => \data_RRFA1~143_combout\,
	combout => \data_RRFB1~56_combout\);

-- Location: LCCOMB_X27_Y28_N2
\data_RRFB1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~57_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~150_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & (\data_RRFA1~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~151_combout\,
	datad => \data_RRFA1~150_combout\,
	combout => \data_RRFB1~57_combout\);

-- Location: LCCOMB_X27_Y28_N12
\data_RRFB1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~58_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~57_combout\ & ((\data_RRFA1~153_combout\))) # (!\data_RRFB1~57_combout\ & (\data_RRFA1~149_combout\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~149_combout\,
	datab => \data_RRFA1~153_combout\,
	datac => \tag_B1[1]~input_o\,
	datad => \data_RRFB1~57_combout\,
	combout => \data_RRFB1~58_combout\);

-- Location: LCCOMB_X27_Y28_N30
\data_RRFB1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~59_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~56_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~56_combout\,
	datad => \data_RRFB1~58_combout\,
	combout => \data_RRFB1~59_combout\);

-- Location: FF_X27_Y28_N31
\data_RRFB1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~59_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[11]~reg0_q\);

-- Location: LCCOMB_X28_Y30_N12
\data_RRFB1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~60_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~157_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~157_combout\,
	datad => \data_RRFA1~158_combout\,
	combout => \data_RRFB1~60_combout\);

-- Location: LCCOMB_X28_Y30_N26
\data_RRFB1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~61_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~60_combout\ & ((\data_RRFA1~160_combout\))) # (!\data_RRFB1~60_combout\ & (\data_RRFA1~156_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~156_combout\,
	datab => \data_RRFA1~160_combout\,
	datac => \tag_B1[2]~input_o\,
	datad => \data_RRFB1~60_combout\,
	combout => \data_RRFB1~61_combout\);

-- Location: LCCOMB_X28_Y30_N4
\data_RRFB1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~62_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~163_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & ((\data_RRFA1~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~163_combout\,
	datad => \data_RRFA1~164_combout\,
	combout => \data_RRFB1~62_combout\);

-- Location: LCCOMB_X28_Y30_N2
\data_RRFB1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~63_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~62_combout\ & (\data_RRFA1~166_combout\)) # (!\data_RRFB1~62_combout\ & ((\data_RRFA1~162_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~166_combout\,
	datac => \data_RRFB1~62_combout\,
	datad => \data_RRFA1~162_combout\,
	combout => \data_RRFB1~63_combout\);

-- Location: LCCOMB_X28_Y30_N18
\data_RRFB1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~64_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~61_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~61_combout\,
	datad => \data_RRFB1~63_combout\,
	combout => \data_RRFB1~64_combout\);

-- Location: FF_X28_Y30_N19
\data_RRFB1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~64_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[12]~reg0_q\);

-- Location: LCCOMB_X31_Y29_N6
\data_RRFB1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~67_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~176_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & ((\data_RRFA1~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~176_combout\,
	datad => \data_RRFA1~177_combout\,
	combout => \data_RRFB1~67_combout\);

-- Location: LCCOMB_X31_Y29_N8
\data_RRFB1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~68_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~67_combout\ & (\data_RRFA1~179_combout\)) # (!\data_RRFB1~67_combout\ & ((\data_RRFA1~175_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~179_combout\,
	datac => \data_RRFA1~175_combout\,
	datad => \data_RRFB1~67_combout\,
	combout => \data_RRFB1~68_combout\);

-- Location: LCCOMB_X30_Y29_N20
\data_RRFB1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~65_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & (\data_RRFA1~170_combout\)) # (!\tag_B1[1]~input_o\ & ((\data_RRFA1~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~170_combout\,
	datad => \data_RRFA1~171_combout\,
	combout => \data_RRFB1~65_combout\);

-- Location: LCCOMB_X30_Y29_N14
\data_RRFB1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~66_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~65_combout\ & ((\data_RRFA1~173_combout\))) # (!\data_RRFB1~65_combout\ & (\data_RRFA1~169_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~169_combout\,
	datac => \data_RRFA1~173_combout\,
	datad => \data_RRFB1~65_combout\,
	combout => \data_RRFB1~66_combout\);

-- Location: LCCOMB_X31_Y29_N22
\data_RRFB1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~69_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~66_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~68_combout\,
	datad => \data_RRFB1~66_combout\,
	combout => \data_RRFB1~69_combout\);

-- Location: FF_X31_Y29_N23
\data_RRFB1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~69_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[13]~reg0_q\);

-- Location: LCCOMB_X32_Y26_N16
\data_RRFB1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~72_combout\ = (\tag_B1[1]~input_o\ & (\tag_B1[2]~input_o\)) # (!\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\ & (\data_RRFA1~189_combout\)) # (!\tag_B1[2]~input_o\ & ((\data_RRFA1~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~189_combout\,
	datad => \data_RRFA1~190_combout\,
	combout => \data_RRFB1~72_combout\);

-- Location: LCCOMB_X32_Y26_N30
\data_RRFB1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~73_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~72_combout\ & ((\data_RRFA1~192_combout\))) # (!\data_RRFB1~72_combout\ & (\data_RRFA1~188_combout\)))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~188_combout\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~192_combout\,
	datad => \data_RRFB1~72_combout\,
	combout => \data_RRFB1~73_combout\);

-- Location: LCCOMB_X32_Y26_N28
\data_RRFB1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~70_combout\ = (\tag_B1[1]~input_o\ & ((\tag_B1[2]~input_o\) # ((\data_RRFA1~183_combout\)))) # (!\tag_B1[1]~input_o\ & (!\tag_B1[2]~input_o\ & ((\data_RRFA1~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \tag_B1[2]~input_o\,
	datac => \data_RRFA1~183_combout\,
	datad => \data_RRFA1~184_combout\,
	combout => \data_RRFB1~70_combout\);

-- Location: LCCOMB_X32_Y26_N6
\data_RRFB1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~71_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~70_combout\ & ((\data_RRFA1~186_combout\))) # (!\data_RRFB1~70_combout\ & (\data_RRFA1~182_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~182_combout\,
	datac => \data_RRFA1~186_combout\,
	datad => \data_RRFB1~70_combout\,
	combout => \data_RRFB1~71_combout\);

-- Location: LCCOMB_X32_Y26_N22
\data_RRFB1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~74_combout\ = (\tag_B1[0]~input_o\ & ((\data_RRFB1~71_combout\))) # (!\tag_B1[0]~input_o\ & (\data_RRFB1~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~73_combout\,
	datad => \data_RRFB1~71_combout\,
	combout => \data_RRFB1~74_combout\);

-- Location: FF_X32_Y26_N23
\data_RRFB1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~74_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[14]~reg0_q\);

-- Location: LCCOMB_X27_Y27_N4
\data_RRFB1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~75_combout\ = (\tag_B1[2]~input_o\ & (\tag_B1[1]~input_o\)) # (!\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\ & ((\data_RRFA1~196_combout\))) # (!\tag_B1[1]~input_o\ & (\data_RRFA1~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~197_combout\,
	datad => \data_RRFA1~196_combout\,
	combout => \data_RRFB1~75_combout\);

-- Location: LCCOMB_X27_Y27_N22
\data_RRFB1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~76_combout\ = (\tag_B1[2]~input_o\ & ((\data_RRFB1~75_combout\ & ((\data_RRFA1~199_combout\))) # (!\data_RRFB1~75_combout\ & (\data_RRFA1~195_combout\)))) # (!\tag_B1[2]~input_o\ & (((\data_RRFB1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \data_RRFA1~195_combout\,
	datac => \data_RRFB1~75_combout\,
	datad => \data_RRFA1~199_combout\,
	combout => \data_RRFB1~76_combout\);

-- Location: LCCOMB_X27_Y27_N16
\data_RRFB1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~77_combout\ = (\tag_B1[2]~input_o\ & ((\tag_B1[1]~input_o\) # ((\data_RRFA1~202_combout\)))) # (!\tag_B1[2]~input_o\ & (!\tag_B1[1]~input_o\ & ((\data_RRFA1~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[2]~input_o\,
	datab => \tag_B1[1]~input_o\,
	datac => \data_RRFA1~202_combout\,
	datad => \data_RRFA1~203_combout\,
	combout => \data_RRFB1~77_combout\);

-- Location: LCCOMB_X27_Y27_N10
\data_RRFB1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~78_combout\ = (\tag_B1[1]~input_o\ & ((\data_RRFB1~77_combout\ & (\data_RRFA1~205_combout\)) # (!\data_RRFB1~77_combout\ & ((\data_RRFA1~201_combout\))))) # (!\tag_B1[1]~input_o\ & (((\data_RRFB1~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B1[1]~input_o\,
	datab => \data_RRFA1~205_combout\,
	datac => \data_RRFA1~201_combout\,
	datad => \data_RRFB1~77_combout\,
	combout => \data_RRFB1~78_combout\);

-- Location: LCCOMB_X27_Y27_N18
\data_RRFB1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB1~79_combout\ = (\tag_B1[0]~input_o\ & (\data_RRFB1~76_combout\)) # (!\tag_B1[0]~input_o\ & ((\data_RRFB1~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B1[0]~input_o\,
	datac => \data_RRFB1~76_combout\,
	datad => \data_RRFB1~78_combout\,
	combout => \data_RRFB1~79_combout\);

-- Location: FF_X27_Y27_N19
\data_RRFB1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB1~79_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB1[15]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N1
\tag_A2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A2(0),
	o => \tag_A2[0]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\tag_A2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A2(2),
	o => \tag_A2[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\tag_A2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_A2(1),
	o => \tag_A2[1]~input_o\);

-- Location: LCCOMB_X29_Y28_N28
\data_RRFA2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~0_combout\ = (\tag_A2[2]~input_o\ & (((\tag_A2[1]~input_o\)))) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & ((\data_RRFA1~1_combout\))) # (!\tag_A2[1]~input_o\ & (\data_RRFA1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~2_combout\,
	datac => \tag_A2[1]~input_o\,
	datad => \data_RRFA1~1_combout\,
	combout => \data_RRFA2~0_combout\);

-- Location: LCCOMB_X29_Y28_N22
\data_RRFA2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~1_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~0_combout\ & ((\data_RRFA1~4_combout\))) # (!\data_RRFA2~0_combout\ & (\data_RRFA1~0_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~0_combout\,
	datac => \data_RRFA1~4_combout\,
	datad => \data_RRFA2~0_combout\,
	combout => \data_RRFA2~1_combout\);

-- Location: LCCOMB_X29_Y28_N24
\data_RRFA2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~2_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~7_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~7_combout\,
	datad => \data_RRFA1~8_combout\,
	combout => \data_RRFA2~2_combout\);

-- Location: LCCOMB_X29_Y28_N10
\data_RRFA2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~3_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~2_combout\ & (\data_RRFA1~10_combout\)) # (!\data_RRFA2~2_combout\ & ((\data_RRFA1~6_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~10_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~6_combout\,
	datad => \data_RRFA2~2_combout\,
	combout => \data_RRFA2~3_combout\);

-- Location: LCCOMB_X29_Y28_N8
\data_RRFA2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~4_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~1_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~1_combout\,
	datad => \data_RRFA2~3_combout\,
	combout => \data_RRFA2~4_combout\);

-- Location: FF_X29_Y28_N9
\data_RRFA2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[0]~reg0_q\);

-- Location: LCCOMB_X27_Y29_N26
\data_RRFA2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~7_combout\ = (\tag_A2[1]~input_o\ & (\tag_A2[2]~input_o\)) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & ((\data_RRFA1~20_combout\))) # (!\tag_A2[2]~input_o\ & (\data_RRFA1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~21_combout\,
	datad => \data_RRFA1~20_combout\,
	combout => \data_RRFA2~7_combout\);

-- Location: LCCOMB_X27_Y29_N8
\data_RRFA2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~8_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~7_combout\ & (\data_RRFA1~23_combout\)) # (!\data_RRFA2~7_combout\ & ((\data_RRFA1~19_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~23_combout\,
	datac => \data_RRFA2~7_combout\,
	datad => \data_RRFA1~19_combout\,
	combout => \data_RRFA2~8_combout\);

-- Location: LCCOMB_X28_Y28_N10
\data_RRFA2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~5_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & ((\data_RRFA1~14_combout\))) # (!\tag_A2[1]~input_o\ & (\data_RRFA1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~15_combout\,
	datad => \data_RRFA1~14_combout\,
	combout => \data_RRFA2~5_combout\);

-- Location: LCCOMB_X28_Y28_N0
\data_RRFA2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~6_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~5_combout\ & ((\data_RRFA1~17_combout\))) # (!\data_RRFA2~5_combout\ & (\data_RRFA1~13_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~13_combout\,
	datac => \data_RRFA1~17_combout\,
	datad => \data_RRFA2~5_combout\,
	combout => \data_RRFA2~6_combout\);

-- Location: LCCOMB_X27_Y29_N0
\data_RRFA2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~9_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~6_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~8_combout\,
	datad => \data_RRFA2~6_combout\,
	combout => \data_RRFA2~9_combout\);

-- Location: FF_X27_Y29_N1
\data_RRFA2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~9_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[1]~reg0_q\);

-- Location: LCCOMB_X34_Y29_N18
\data_RRFA2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~10_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & (\data_RRFA1~27_combout\)) # (!\tag_A2[1]~input_o\ & ((\data_RRFA1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~27_combout\,
	datad => \data_RRFA1~28_combout\,
	combout => \data_RRFA2~10_combout\);

-- Location: LCCOMB_X34_Y29_N28
\data_RRFA2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~11_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~10_combout\ & (\data_RRFA1~30_combout\)) # (!\data_RRFA2~10_combout\ & ((\data_RRFA1~26_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~30_combout\,
	datac => \data_RRFA1~26_combout\,
	datad => \data_RRFA2~10_combout\,
	combout => \data_RRFA2~11_combout\);

-- Location: LCCOMB_X34_Y29_N14
\data_RRFA2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~12_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~33_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~33_combout\,
	datad => \data_RRFA1~34_combout\,
	combout => \data_RRFA2~12_combout\);

-- Location: LCCOMB_X34_Y29_N16
\data_RRFA2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~13_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~12_combout\ & (\data_RRFA1~36_combout\)) # (!\data_RRFA2~12_combout\ & ((\data_RRFA1~32_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~36_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA2~12_combout\,
	datad => \data_RRFA1~32_combout\,
	combout => \data_RRFA2~13_combout\);

-- Location: LCCOMB_X34_Y29_N0
\data_RRFA2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~14_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~11_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datab => \data_RRFA2~11_combout\,
	datad => \data_RRFA2~13_combout\,
	combout => \data_RRFA2~14_combout\);

-- Location: FF_X34_Y29_N1
\data_RRFA2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~14_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[2]~reg0_q\);

-- Location: LCCOMB_X35_Y27_N12
\data_RRFA2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~15_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & (\data_RRFA1~40_combout\)) # (!\tag_A2[1]~input_o\ & ((\data_RRFA1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~40_combout\,
	datad => \data_RRFA1~41_combout\,
	combout => \data_RRFA2~15_combout\);

-- Location: LCCOMB_X35_Y27_N22
\data_RRFA2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~16_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~15_combout\ & ((\data_RRFA1~43_combout\))) # (!\data_RRFA2~15_combout\ & (\data_RRFA1~39_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~39_combout\,
	datac => \data_RRFA1~43_combout\,
	datad => \data_RRFA2~15_combout\,
	combout => \data_RRFA2~16_combout\);

-- Location: LCCOMB_X35_Y27_N28
\data_RRFA2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~17_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~46_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~46_combout\,
	datad => \data_RRFA1~47_combout\,
	combout => \data_RRFA2~17_combout\);

-- Location: LCCOMB_X35_Y27_N18
\data_RRFA2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~18_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~17_combout\ & ((\data_RRFA1~49_combout\))) # (!\data_RRFA2~17_combout\ & (\data_RRFA1~45_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~45_combout\,
	datac => \data_RRFA1~49_combout\,
	datad => \data_RRFA2~17_combout\,
	combout => \data_RRFA2~18_combout\);

-- Location: LCCOMB_X35_Y27_N8
\data_RRFA2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~19_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~16_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~16_combout\,
	datad => \data_RRFA2~18_combout\,
	combout => \data_RRFA2~19_combout\);

-- Location: FF_X35_Y27_N9
\data_RRFA2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~19_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[3]~reg0_q\);

-- Location: LCCOMB_X31_Y25_N8
\data_RRFA2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~20_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & ((\data_RRFA1~53_combout\))) # (!\tag_A2[1]~input_o\ & (\data_RRFA1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~54_combout\,
	datad => \data_RRFA1~53_combout\,
	combout => \data_RRFA2~20_combout\);

-- Location: LCCOMB_X31_Y25_N30
\data_RRFA2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~21_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~20_combout\ & (\data_RRFA1~56_combout\)) # (!\data_RRFA2~20_combout\ & ((\data_RRFA1~52_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~56_combout\,
	datac => \data_RRFA2~20_combout\,
	datad => \data_RRFA1~52_combout\,
	combout => \data_RRFA2~21_combout\);

-- Location: LCCOMB_X31_Y25_N20
\data_RRFA2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~22_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~59_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~59_combout\,
	datad => \data_RRFA1~60_combout\,
	combout => \data_RRFA2~22_combout\);

-- Location: LCCOMB_X31_Y25_N18
\data_RRFA2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~23_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~22_combout\ & ((\data_RRFA1~62_combout\))) # (!\data_RRFA2~22_combout\ & (\data_RRFA1~58_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~58_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~62_combout\,
	datad => \data_RRFA2~22_combout\,
	combout => \data_RRFA2~23_combout\);

-- Location: LCCOMB_X31_Y25_N4
\data_RRFA2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~24_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~21_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~21_combout\,
	datad => \data_RRFA2~23_combout\,
	combout => \data_RRFA2~24_combout\);

-- Location: FF_X31_Y25_N5
\data_RRFA2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~24_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[4]~reg0_q\);

-- Location: LCCOMB_X30_Y28_N14
\data_RRFA2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~25_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & ((\data_RRFA1~66_combout\))) # (!\tag_A2[1]~input_o\ & (\data_RRFA1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~67_combout\,
	datad => \data_RRFA1~66_combout\,
	combout => \data_RRFA2~25_combout\);

-- Location: LCCOMB_X30_Y28_N4
\data_RRFA2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~26_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~25_combout\ & ((\data_RRFA1~69_combout\))) # (!\data_RRFA2~25_combout\ & (\data_RRFA1~65_combout\)))) # (!\tag_A2[2]~input_o\ & (\data_RRFA2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA2~25_combout\,
	datac => \data_RRFA1~65_combout\,
	datad => \data_RRFA1~69_combout\,
	combout => \data_RRFA2~26_combout\);

-- Location: LCCOMB_X31_Y27_N6
\data_RRFA2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~27_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\memory[4][5]~q\ & \memory[4][16]~q\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \memory[4][5]~q\,
	datad => \memory[4][16]~q\,
	combout => \data_RRFA2~27_combout\);

-- Location: LCCOMB_X30_Y29_N30
\data_RRFA2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~28_combout\ = (\data_RRFA2~27_combout\ & ((\tag_A2[2]~input_o\) # ((\memory[0][16]~q\ & \memory[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \memory[0][16]~q\,
	datac => \memory[0][5]~q\,
	datad => \data_RRFA2~27_combout\,
	combout => \data_RRFA2~28_combout\);

-- Location: LCCOMB_X30_Y28_N2
\data_RRFA2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~29_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~28_combout\ & (\data_RRFA1~75_combout\)) # (!\data_RRFA2~28_combout\ & ((\data_RRFA1~71_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~75_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA2~28_combout\,
	datad => \data_RRFA1~71_combout\,
	combout => \data_RRFA2~29_combout\);

-- Location: LCCOMB_X30_Y28_N20
\data_RRFA2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~30_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~26_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~26_combout\,
	datad => \data_RRFA2~29_combout\,
	combout => \data_RRFA2~30_combout\);

-- Location: FF_X30_Y28_N21
\data_RRFA2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~30_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[5]~reg0_q\);

-- Location: LCCOMB_X34_Y28_N16
\data_RRFA2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~31_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~79_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & (\data_RRFA1~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~80_combout\,
	datad => \data_RRFA1~79_combout\,
	combout => \data_RRFA2~31_combout\);

-- Location: LCCOMB_X34_Y28_N26
\data_RRFA2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~32_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~31_combout\ & ((\data_RRFA1~82_combout\))) # (!\data_RRFA2~31_combout\ & (\data_RRFA1~78_combout\)))) # (!\tag_A2[2]~input_o\ & (\data_RRFA2~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA2~31_combout\,
	datac => \data_RRFA1~78_combout\,
	datad => \data_RRFA1~82_combout\,
	combout => \data_RRFA2~32_combout\);

-- Location: LCCOMB_X34_Y28_N0
\data_RRFA2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~33_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA1~85_combout\) # ((\tag_A2[1]~input_o\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA1~86_combout\ & !\tag_A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~85_combout\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~86_combout\,
	datad => \tag_A2[1]~input_o\,
	combout => \data_RRFA2~33_combout\);

-- Location: LCCOMB_X34_Y28_N18
\data_RRFA2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~34_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~33_combout\ & ((\data_RRFA1~88_combout\))) # (!\data_RRFA2~33_combout\ & (\data_RRFA1~84_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~84_combout\,
	datac => \data_RRFA1~88_combout\,
	datad => \data_RRFA2~33_combout\,
	combout => \data_RRFA2~34_combout\);

-- Location: LCCOMB_X34_Y28_N24
\data_RRFA2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~35_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~32_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~32_combout\,
	datad => \data_RRFA2~34_combout\,
	combout => \data_RRFA2~35_combout\);

-- Location: FF_X34_Y28_N25
\data_RRFA2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~35_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[6]~reg0_q\);

-- Location: LCCOMB_X32_Y25_N16
\data_RRFA2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~38_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~98_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~98_combout\,
	datad => \data_RRFA1~99_combout\,
	combout => \data_RRFA2~38_combout\);

-- Location: LCCOMB_X32_Y25_N22
\data_RRFA2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~39_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~38_combout\ & (\data_RRFA1~101_combout\)) # (!\data_RRFA2~38_combout\ & ((\data_RRFA1~97_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~101_combout\,
	datac => \data_RRFA1~97_combout\,
	datad => \data_RRFA2~38_combout\,
	combout => \data_RRFA2~39_combout\);

-- Location: LCCOMB_X32_Y25_N12
\data_RRFA2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~36_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & ((\data_RRFA1~92_combout\))) # (!\tag_A2[1]~input_o\ & (\data_RRFA1~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~93_combout\,
	datad => \data_RRFA1~92_combout\,
	combout => \data_RRFA2~36_combout\);

-- Location: LCCOMB_X32_Y25_N10
\data_RRFA2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~37_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~36_combout\ & (\data_RRFA1~95_combout\)) # (!\data_RRFA2~36_combout\ & ((\data_RRFA1~91_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~95_combout\,
	datac => \data_RRFA1~91_combout\,
	datad => \data_RRFA2~36_combout\,
	combout => \data_RRFA2~37_combout\);

-- Location: LCCOMB_X32_Y25_N30
\data_RRFA2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~40_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~37_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~39_combout\,
	datad => \data_RRFA2~37_combout\,
	combout => \data_RRFA2~40_combout\);

-- Location: FF_X32_Y25_N31
\data_RRFA2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~40_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[7]~reg0_q\);

-- Location: LCCOMB_X29_Y30_N16
\data_RRFA2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~43_combout\ = (\tag_A2[1]~input_o\ & (\tag_A2[2]~input_o\)) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & ((\data_RRFA1~111_combout\))) # (!\tag_A2[2]~input_o\ & (\data_RRFA1~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~112_combout\,
	datad => \data_RRFA1~111_combout\,
	combout => \data_RRFA2~43_combout\);

-- Location: LCCOMB_X29_Y30_N22
\data_RRFA2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~44_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~43_combout\ & (\data_RRFA1~114_combout\)) # (!\data_RRFA2~43_combout\ & ((\data_RRFA1~110_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~114_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~110_combout\,
	datad => \data_RRFA2~43_combout\,
	combout => \data_RRFA2~44_combout\);

-- Location: LCCOMB_X29_Y30_N4
\data_RRFA2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~41_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~105_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & (\data_RRFA1~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~106_combout\,
	datad => \data_RRFA1~105_combout\,
	combout => \data_RRFA2~41_combout\);

-- Location: LCCOMB_X29_Y30_N10
\data_RRFA2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~42_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~41_combout\ & ((\data_RRFA1~108_combout\))) # (!\data_RRFA2~41_combout\ & (\data_RRFA1~104_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~104_combout\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA2~41_combout\,
	datad => \data_RRFA1~108_combout\,
	combout => \data_RRFA2~42_combout\);

-- Location: LCCOMB_X29_Y30_N28
\data_RRFA2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~45_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~42_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~44_combout\,
	datad => \data_RRFA2~42_combout\,
	combout => \data_RRFA2~45_combout\);

-- Location: FF_X29_Y30_N29
\data_RRFA2[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~45_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[8]~reg0_q\);

-- Location: LCCOMB_X34_Y26_N18
\data_RRFA2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~48_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~124_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & ((\data_RRFA1~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~124_combout\,
	datad => \data_RRFA1~125_combout\,
	combout => \data_RRFA2~48_combout\);

-- Location: LCCOMB_X34_Y26_N8
\data_RRFA2~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~49_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~48_combout\ & (\data_RRFA1~127_combout\)) # (!\data_RRFA2~48_combout\ & ((\data_RRFA1~123_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~127_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~123_combout\,
	datad => \data_RRFA2~48_combout\,
	combout => \data_RRFA2~49_combout\);

-- Location: LCCOMB_X34_Y26_N10
\data_RRFA2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~46_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & (\data_RRFA1~118_combout\)) # (!\tag_A2[1]~input_o\ & ((\data_RRFA1~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~118_combout\,
	datad => \data_RRFA1~119_combout\,
	combout => \data_RRFA2~46_combout\);

-- Location: LCCOMB_X34_Y26_N12
\data_RRFA2~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~47_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~46_combout\ & (\data_RRFA1~121_combout\)) # (!\data_RRFA2~46_combout\ & ((\data_RRFA1~117_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~121_combout\,
	datac => \data_RRFA1~117_combout\,
	datad => \data_RRFA2~46_combout\,
	combout => \data_RRFA2~47_combout\);

-- Location: LCCOMB_X34_Y26_N16
\data_RRFA2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~50_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~47_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~49_combout\,
	datad => \data_RRFA2~47_combout\,
	combout => \data_RRFA2~50_combout\);

-- Location: FF_X34_Y26_N17
\data_RRFA2[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~50_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[9]~reg0_q\);

-- Location: LCCOMB_X28_Y25_N16
\data_RRFA2~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~53_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~137_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & (\data_RRFA1~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~138_combout\,
	datad => \data_RRFA1~137_combout\,
	combout => \data_RRFA2~53_combout\);

-- Location: LCCOMB_X28_Y25_N30
\data_RRFA2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~54_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~53_combout\ & ((\data_RRFA1~140_combout\))) # (!\data_RRFA2~53_combout\ & (\data_RRFA1~136_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~136_combout\,
	datab => \data_RRFA1~140_combout\,
	datac => \tag_A2[1]~input_o\,
	datad => \data_RRFA2~53_combout\,
	combout => \data_RRFA2~54_combout\);

-- Location: LCCOMB_X28_Y25_N28
\data_RRFA2~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~51_combout\ = (\tag_A2[2]~input_o\ & (\tag_A2[1]~input_o\)) # (!\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\ & (\data_RRFA1~131_combout\)) # (!\tag_A2[1]~input_o\ & ((\data_RRFA1~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~131_combout\,
	datad => \data_RRFA1~132_combout\,
	combout => \data_RRFA2~51_combout\);

-- Location: LCCOMB_X28_Y25_N10
\data_RRFA2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~52_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~51_combout\ & ((\data_RRFA1~134_combout\))) # (!\data_RRFA2~51_combout\ & (\data_RRFA1~130_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~130_combout\,
	datac => \data_RRFA1~134_combout\,
	datad => \data_RRFA2~51_combout\,
	combout => \data_RRFA2~52_combout\);

-- Location: LCCOMB_X28_Y25_N8
\data_RRFA2~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~55_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~52_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~54_combout\,
	datad => \data_RRFA2~52_combout\,
	combout => \data_RRFA2~55_combout\);

-- Location: FF_X28_Y25_N9
\data_RRFA2[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~55_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[10]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N18
\data_RRFA2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~56_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~144_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & (\data_RRFA1~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~145_combout\,
	datad => \data_RRFA1~144_combout\,
	combout => \data_RRFA2~56_combout\);

-- Location: LCCOMB_X27_Y28_N20
\data_RRFA2~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~57_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~56_combout\ & ((\data_RRFA1~147_combout\))) # (!\data_RRFA2~56_combout\ & (\data_RRFA1~143_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~143_combout\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~147_combout\,
	datad => \data_RRFA2~56_combout\,
	combout => \data_RRFA2~57_combout\);

-- Location: LCCOMB_X28_Y28_N18
\data_RRFA2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~58_combout\ = (\tag_A2[2]~input_o\ & ((\tag_A2[1]~input_o\) # ((\data_RRFA1~150_combout\)))) # (!\tag_A2[2]~input_o\ & (!\tag_A2[1]~input_o\ & (\data_RRFA1~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~151_combout\,
	datad => \data_RRFA1~150_combout\,
	combout => \data_RRFA2~58_combout\);

-- Location: LCCOMB_X28_Y28_N28
\data_RRFA2~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~59_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~58_combout\ & ((\data_RRFA1~153_combout\))) # (!\data_RRFA2~58_combout\ & (\data_RRFA1~149_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~149_combout\,
	datac => \data_RRFA1~153_combout\,
	datad => \data_RRFA2~58_combout\,
	combout => \data_RRFA2~59_combout\);

-- Location: LCCOMB_X27_Y28_N16
\data_RRFA2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~60_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~57_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datab => \data_RRFA2~57_combout\,
	datad => \data_RRFA2~59_combout\,
	combout => \data_RRFA2~60_combout\);

-- Location: FF_X27_Y28_N17
\data_RRFA2[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~60_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[11]~reg0_q\);

-- Location: LCCOMB_X28_Y29_N16
\data_RRFA2~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~63_combout\ = (\tag_A2[1]~input_o\ & (((\tag_A2[2]~input_o\)))) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & ((\data_RRFA1~163_combout\))) # (!\tag_A2[2]~input_o\ & (\data_RRFA1~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~164_combout\,
	datac => \tag_A2[2]~input_o\,
	datad => \data_RRFA1~163_combout\,
	combout => \data_RRFA2~63_combout\);

-- Location: LCCOMB_X28_Y29_N14
\data_RRFA2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~64_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~63_combout\ & (\data_RRFA1~166_combout\)) # (!\data_RRFA2~63_combout\ & ((\data_RRFA1~162_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~166_combout\,
	datac => \data_RRFA1~162_combout\,
	datad => \data_RRFA2~63_combout\,
	combout => \data_RRFA2~64_combout\);

-- Location: LCCOMB_X28_Y29_N24
\data_RRFA2~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~61_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~157_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & (\data_RRFA1~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~158_combout\,
	datad => \data_RRFA1~157_combout\,
	combout => \data_RRFA2~61_combout\);

-- Location: LCCOMB_X28_Y29_N10
\data_RRFA2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~62_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~61_combout\ & (\data_RRFA1~160_combout\)) # (!\data_RRFA2~61_combout\ & ((\data_RRFA1~156_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~160_combout\,
	datac => \data_RRFA1~156_combout\,
	datad => \data_RRFA2~61_combout\,
	combout => \data_RRFA2~62_combout\);

-- Location: LCCOMB_X28_Y29_N12
\data_RRFA2~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~65_combout\ = (\tag_A2[0]~input_o\ & ((\data_RRFA2~62_combout\))) # (!\tag_A2[0]~input_o\ & (\data_RRFA2~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~64_combout\,
	datad => \data_RRFA2~62_combout\,
	combout => \data_RRFA2~65_combout\);

-- Location: FF_X28_Y29_N13
\data_RRFA2[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~65_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[12]~reg0_q\);

-- Location: LCCOMB_X31_Y29_N2
\data_RRFA2~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~66_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~170_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & ((\data_RRFA1~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~170_combout\,
	datad => \data_RRFA1~171_combout\,
	combout => \data_RRFA2~66_combout\);

-- Location: LCCOMB_X31_Y29_N4
\data_RRFA2~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~67_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~66_combout\ & (\data_RRFA1~173_combout\)) # (!\data_RRFA2~66_combout\ & ((\data_RRFA1~169_combout\))))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~173_combout\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~169_combout\,
	datad => \data_RRFA2~66_combout\,
	combout => \data_RRFA2~67_combout\);

-- Location: LCCOMB_X31_Y29_N18
\data_RRFA2~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~68_combout\ = (\tag_A2[1]~input_o\ & (\tag_A2[2]~input_o\)) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & (\data_RRFA1~176_combout\)) # (!\tag_A2[2]~input_o\ & ((\data_RRFA1~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~176_combout\,
	datad => \data_RRFA1~177_combout\,
	combout => \data_RRFA2~68_combout\);

-- Location: LCCOMB_X31_Y29_N20
\data_RRFA2~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~69_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~68_combout\ & (\data_RRFA1~179_combout\)) # (!\data_RRFA2~68_combout\ & ((\data_RRFA1~175_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~179_combout\,
	datac => \data_RRFA1~175_combout\,
	datad => \data_RRFA2~68_combout\,
	combout => \data_RRFA2~69_combout\);

-- Location: LCCOMB_X31_Y29_N0
\data_RRFA2~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~70_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~67_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~67_combout\,
	datad => \data_RRFA2~69_combout\,
	combout => \data_RRFA2~70_combout\);

-- Location: FF_X31_Y29_N1
\data_RRFA2[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~70_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[13]~reg0_q\);

-- Location: LCCOMB_X32_Y26_N20
\data_RRFA2~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~71_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~183_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & ((\data_RRFA1~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~183_combout\,
	datad => \data_RRFA1~184_combout\,
	combout => \data_RRFA2~71_combout\);

-- Location: LCCOMB_X32_Y26_N26
\data_RRFA2~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~72_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~71_combout\ & ((\data_RRFA1~186_combout\))) # (!\data_RRFA2~71_combout\ & (\data_RRFA1~182_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[2]~input_o\,
	datab => \data_RRFA1~182_combout\,
	datac => \data_RRFA1~186_combout\,
	datad => \data_RRFA2~71_combout\,
	combout => \data_RRFA2~72_combout\);

-- Location: LCCOMB_X32_Y26_N12
\data_RRFA2~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~73_combout\ = (\tag_A2[1]~input_o\ & (\tag_A2[2]~input_o\)) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & (\data_RRFA1~189_combout\)) # (!\tag_A2[2]~input_o\ & ((\data_RRFA1~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~189_combout\,
	datad => \data_RRFA1~190_combout\,
	combout => \data_RRFA2~73_combout\);

-- Location: LCCOMB_X32_Y26_N18
\data_RRFA2~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~74_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~73_combout\ & ((\data_RRFA1~192_combout\))) # (!\data_RRFA2~73_combout\ & (\data_RRFA1~188_combout\)))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~188_combout\,
	datab => \tag_A2[1]~input_o\,
	datac => \data_RRFA1~192_combout\,
	datad => \data_RRFA2~73_combout\,
	combout => \data_RRFA2~74_combout\);

-- Location: LCCOMB_X32_Y26_N4
\data_RRFA2~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~75_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~72_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~72_combout\,
	datad => \data_RRFA2~74_combout\,
	combout => \data_RRFA2~75_combout\);

-- Location: FF_X32_Y26_N5
\data_RRFA2[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~75_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[14]~reg0_q\);

-- Location: LCCOMB_X27_Y27_N28
\data_RRFA2~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~76_combout\ = (\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\) # ((\data_RRFA1~196_combout\)))) # (!\tag_A2[1]~input_o\ & (!\tag_A2[2]~input_o\ & (\data_RRFA1~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~197_combout\,
	datad => \data_RRFA1~196_combout\,
	combout => \data_RRFA2~76_combout\);

-- Location: LCCOMB_X27_Y27_N26
\data_RRFA2~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~77_combout\ = (\tag_A2[2]~input_o\ & ((\data_RRFA2~76_combout\ & ((\data_RRFA1~199_combout\))) # (!\data_RRFA2~76_combout\ & (\data_RRFA1~195_combout\)))) # (!\tag_A2[2]~input_o\ & (((\data_RRFA2~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~195_combout\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~199_combout\,
	datad => \data_RRFA2~76_combout\,
	combout => \data_RRFA2~77_combout\);

-- Location: LCCOMB_X27_Y27_N12
\data_RRFA2~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~78_combout\ = (\tag_A2[1]~input_o\ & (\tag_A2[2]~input_o\)) # (!\tag_A2[1]~input_o\ & ((\tag_A2[2]~input_o\ & (\data_RRFA1~202_combout\)) # (!\tag_A2[2]~input_o\ & ((\data_RRFA1~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \tag_A2[2]~input_o\,
	datac => \data_RRFA1~202_combout\,
	datad => \data_RRFA1~203_combout\,
	combout => \data_RRFA2~78_combout\);

-- Location: LCCOMB_X27_Y27_N2
\data_RRFA2~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~79_combout\ = (\tag_A2[1]~input_o\ & ((\data_RRFA2~78_combout\ & (\data_RRFA1~205_combout\)) # (!\data_RRFA2~78_combout\ & ((\data_RRFA1~201_combout\))))) # (!\tag_A2[1]~input_o\ & (((\data_RRFA2~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[1]~input_o\,
	datab => \data_RRFA1~205_combout\,
	datac => \data_RRFA1~201_combout\,
	datad => \data_RRFA2~78_combout\,
	combout => \data_RRFA2~79_combout\);

-- Location: LCCOMB_X27_Y27_N0
\data_RRFA2~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFA2~80_combout\ = (\tag_A2[0]~input_o\ & (\data_RRFA2~77_combout\)) # (!\tag_A2[0]~input_o\ & ((\data_RRFA2~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_A2[0]~input_o\,
	datac => \data_RRFA2~77_combout\,
	datad => \data_RRFA2~79_combout\,
	combout => \data_RRFA2~80_combout\);

-- Location: FF_X27_Y27_N1
\data_RRFA2[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFA2~80_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFA2[15]~reg0_q\);

-- Location: IOIBUF_X31_Y34_N1
\tag_B2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B2(0),
	o => \tag_B2[0]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\tag_B2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B2(1),
	o => \tag_B2[1]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\tag_B2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_B2(2),
	o => \tag_B2[2]~input_o\);

-- Location: LCCOMB_X28_Y27_N0
\data_RRFB2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~2_combout\ = (\tag_B2[1]~input_o\ & (\tag_B2[2]~input_o\)) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & (\data_RRFA1~7_combout\)) # (!\tag_B2[2]~input_o\ & ((\data_RRFA1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~7_combout\,
	datad => \data_RRFA1~8_combout\,
	combout => \data_RRFB2~2_combout\);

-- Location: LCCOMB_X28_Y27_N14
\data_RRFB2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~3_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~2_combout\ & (\data_RRFA1~10_combout\)) # (!\data_RRFB2~2_combout\ & ((\data_RRFA1~6_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~10_combout\,
	datac => \data_RRFA1~6_combout\,
	datad => \data_RRFB2~2_combout\,
	combout => \data_RRFB2~3_combout\);

-- Location: LCCOMB_X28_Y27_N16
\data_RRFB2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~0_combout\ = (\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\) # ((\data_RRFA1~1_combout\)))) # (!\tag_B2[1]~input_o\ & (!\tag_B2[2]~input_o\ & (\data_RRFA1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~2_combout\,
	datad => \data_RRFA1~1_combout\,
	combout => \data_RRFB2~0_combout\);

-- Location: LCCOMB_X28_Y27_N6
\data_RRFB2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~1_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~0_combout\ & ((\data_RRFA1~4_combout\))) # (!\data_RRFB2~0_combout\ & (\data_RRFA1~0_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~0_combout\,
	datac => \data_RRFA1~4_combout\,
	datad => \data_RRFB2~0_combout\,
	combout => \data_RRFB2~1_combout\);

-- Location: LCCOMB_X28_Y27_N20
\data_RRFB2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~4_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~1_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~3_combout\,
	datad => \data_RRFB2~1_combout\,
	combout => \data_RRFB2~4_combout\);

-- Location: FF_X28_Y27_N21
\data_RRFB2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[0]~reg0_q\);

-- Location: LCCOMB_X29_Y27_N24
\data_RRFB2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~7_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFA1~20_combout\) # ((\tag_B2[1]~input_o\)))) # (!\tag_B2[2]~input_o\ & (((!\tag_B2[1]~input_o\ & \data_RRFA1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~20_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \tag_B2[1]~input_o\,
	datad => \data_RRFA1~21_combout\,
	combout => \data_RRFB2~7_combout\);

-- Location: LCCOMB_X29_Y27_N14
\data_RRFB2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~8_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~7_combout\ & ((\data_RRFA1~23_combout\))) # (!\data_RRFB2~7_combout\ & (\data_RRFA1~19_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~19_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~23_combout\,
	datad => \data_RRFB2~7_combout\,
	combout => \data_RRFB2~8_combout\);

-- Location: LCCOMB_X29_Y27_N12
\data_RRFB2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~5_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFA1~14_combout\) # ((\tag_B2[2]~input_o\)))) # (!\tag_B2[1]~input_o\ & (((!\tag_B2[2]~input_o\ & \data_RRFA1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~14_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~15_combout\,
	combout => \data_RRFB2~5_combout\);

-- Location: LCCOMB_X29_Y27_N18
\data_RRFB2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~6_combout\ = (\data_RRFB2~5_combout\ & ((\data_RRFA1~17_combout\) # ((!\tag_B2[2]~input_o\)))) # (!\data_RRFB2~5_combout\ & (((\tag_B2[2]~input_o\ & \data_RRFA1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFB2~5_combout\,
	datab => \data_RRFA1~17_combout\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~13_combout\,
	combout => \data_RRFB2~6_combout\);

-- Location: LCCOMB_X29_Y27_N20
\data_RRFB2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~9_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~6_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~8_combout\,
	datad => \data_RRFB2~6_combout\,
	combout => \data_RRFB2~9_combout\);

-- Location: FF_X29_Y27_N21
\data_RRFB2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~9_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[1]~reg0_q\);

-- Location: LCCOMB_X30_Y25_N18
\data_RRFB2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~10_combout\ = (\tag_B2[2]~input_o\ & (((\tag_B2[1]~input_o\)))) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & (\data_RRFA1~27_combout\)) # (!\tag_B2[1]~input_o\ & ((\data_RRFA1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~27_combout\,
	datac => \tag_B2[1]~input_o\,
	datad => \data_RRFA1~28_combout\,
	combout => \data_RRFB2~10_combout\);

-- Location: LCCOMB_X30_Y25_N8
\data_RRFB2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~11_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~10_combout\ & (\data_RRFA1~30_combout\)) # (!\data_RRFB2~10_combout\ & ((\data_RRFA1~26_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~30_combout\,
	datac => \data_RRFA1~26_combout\,
	datad => \data_RRFB2~10_combout\,
	combout => \data_RRFB2~11_combout\);

-- Location: LCCOMB_X30_Y25_N26
\data_RRFB2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~12_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~33_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & (\data_RRFA1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~34_combout\,
	datad => \data_RRFA1~33_combout\,
	combout => \data_RRFB2~12_combout\);

-- Location: LCCOMB_X30_Y25_N28
\data_RRFB2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~13_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~12_combout\ & (\data_RRFA1~36_combout\)) # (!\data_RRFB2~12_combout\ & ((\data_RRFA1~32_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~36_combout\,
	datac => \data_RRFB2~12_combout\,
	datad => \data_RRFA1~32_combout\,
	combout => \data_RRFB2~13_combout\);

-- Location: LCCOMB_X30_Y25_N20
\data_RRFB2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~14_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~11_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~11_combout\,
	datad => \data_RRFB2~13_combout\,
	combout => \data_RRFB2~14_combout\);

-- Location: FF_X30_Y25_N21
\data_RRFB2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~14_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[2]~reg0_q\);

-- Location: LCCOMB_X34_Y27_N28
\data_RRFB2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~15_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & (\data_RRFA1~40_combout\)) # (!\tag_B2[1]~input_o\ & ((\data_RRFA1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~40_combout\,
	datad => \data_RRFA1~41_combout\,
	combout => \data_RRFB2~15_combout\);

-- Location: LCCOMB_X34_Y27_N26
\data_RRFB2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~16_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~15_combout\ & ((\data_RRFA1~43_combout\))) # (!\data_RRFB2~15_combout\ & (\data_RRFA1~39_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~39_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~43_combout\,
	datad => \data_RRFB2~15_combout\,
	combout => \data_RRFB2~16_combout\);

-- Location: LCCOMB_X34_Y27_N20
\data_RRFB2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~17_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~46_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~46_combout\,
	datad => \data_RRFA1~47_combout\,
	combout => \data_RRFB2~17_combout\);

-- Location: LCCOMB_X34_Y27_N2
\data_RRFB2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~18_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~17_combout\ & (\data_RRFA1~49_combout\)) # (!\data_RRFB2~17_combout\ & ((\data_RRFA1~45_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~49_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~45_combout\,
	datad => \data_RRFB2~17_combout\,
	combout => \data_RRFB2~18_combout\);

-- Location: LCCOMB_X34_Y27_N0
\data_RRFB2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~19_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~16_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~16_combout\,
	datad => \data_RRFB2~18_combout\,
	combout => \data_RRFB2~19_combout\);

-- Location: FF_X34_Y27_N1
\data_RRFB2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~19_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[3]~reg0_q\);

-- Location: LCCOMB_X30_Y28_N12
\data_RRFB2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~20_combout\ = (\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\) # ((\data_RRFA1~53_combout\)))) # (!\tag_B2[1]~input_o\ & (!\tag_B2[2]~input_o\ & (\data_RRFA1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~54_combout\,
	datad => \data_RRFA1~53_combout\,
	combout => \data_RRFB2~20_combout\);

-- Location: LCCOMB_X30_Y28_N26
\data_RRFB2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~21_combout\ = (\data_RRFB2~20_combout\ & (((\data_RRFA1~56_combout\)) # (!\tag_B2[2]~input_o\))) # (!\data_RRFB2~20_combout\ & (\tag_B2[2]~input_o\ & (\data_RRFA1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFB2~20_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~52_combout\,
	datad => \data_RRFA1~56_combout\,
	combout => \data_RRFB2~21_combout\);

-- Location: LCCOMB_X30_Y28_N0
\data_RRFB2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~22_combout\ = (\tag_B2[1]~input_o\ & (\tag_B2[2]~input_o\)) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & ((\data_RRFA1~59_combout\))) # (!\tag_B2[2]~input_o\ & (\data_RRFA1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~60_combout\,
	datad => \data_RRFA1~59_combout\,
	combout => \data_RRFB2~22_combout\);

-- Location: LCCOMB_X30_Y28_N10
\data_RRFB2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~23_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~22_combout\ & (\data_RRFA1~62_combout\)) # (!\data_RRFB2~22_combout\ & ((\data_RRFA1~58_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~62_combout\,
	datac => \data_RRFA1~58_combout\,
	datad => \data_RRFB2~22_combout\,
	combout => \data_RRFB2~23_combout\);

-- Location: LCCOMB_X30_Y28_N6
\data_RRFB2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~24_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~21_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~21_combout\,
	datad => \data_RRFB2~23_combout\,
	combout => \data_RRFB2~24_combout\);

-- Location: FF_X30_Y28_N7
\data_RRFB2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~24_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[4]~reg0_q\);

-- Location: LCCOMB_X31_Y28_N10
\data_RRFB2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~25_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & ((\data_RRFA1~66_combout\))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~67_combout\,
	datad => \data_RRFA1~66_combout\,
	combout => \data_RRFB2~25_combout\);

-- Location: LCCOMB_X31_Y28_N20
\data_RRFB2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~26_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~25_combout\ & (\data_RRFA1~69_combout\)) # (!\data_RRFB2~25_combout\ & ((\data_RRFA1~65_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~69_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~65_combout\,
	datad => \data_RRFB2~25_combout\,
	combout => \data_RRFB2~26_combout\);

-- Location: LCCOMB_X31_Y28_N18
\data_RRFB2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~27_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~72_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & (\data_RRFA1~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~73_combout\,
	datad => \data_RRFA1~72_combout\,
	combout => \data_RRFB2~27_combout\);

-- Location: LCCOMB_X31_Y28_N4
\data_RRFB2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~28_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~27_combout\ & ((\data_RRFA1~75_combout\))) # (!\data_RRFB2~27_combout\ & (\data_RRFA1~71_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~71_combout\,
	datac => \data_RRFA1~75_combout\,
	datad => \data_RRFB2~27_combout\,
	combout => \data_RRFB2~28_combout\);

-- Location: LCCOMB_X30_Y28_N28
\data_RRFB2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~29_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~26_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~26_combout\,
	datad => \data_RRFB2~28_combout\,
	combout => \data_RRFB2~29_combout\);

-- Location: FF_X30_Y28_N29
\data_RRFB2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~29_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[5]~reg0_q\);

-- Location: LCCOMB_X32_Y28_N10
\data_RRFB2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~32_combout\ = (\tag_B2[1]~input_o\ & (((\tag_B2[2]~input_o\)))) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & (\data_RRFA1~85_combout\)) # (!\tag_B2[2]~input_o\ & ((\data_RRFA1~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~85_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~86_combout\,
	combout => \data_RRFB2~32_combout\);

-- Location: LCCOMB_X32_Y28_N4
\data_RRFB2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~33_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~32_combout\ & ((\data_RRFA1~88_combout\))) # (!\data_RRFB2~32_combout\ & (\data_RRFA1~84_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~84_combout\,
	datab => \data_RRFA1~88_combout\,
	datac => \tag_B2[1]~input_o\,
	datad => \data_RRFB2~32_combout\,
	combout => \data_RRFB2~33_combout\);

-- Location: LCCOMB_X32_Y28_N18
\data_RRFB2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~30_combout\ = (\tag_B2[1]~input_o\ & (((\tag_B2[2]~input_o\) # (\data_RRFA1~79_combout\)))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~80_combout\ & (!\tag_B2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~80_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~79_combout\,
	combout => \data_RRFB2~30_combout\);

-- Location: LCCOMB_X32_Y28_N24
\data_RRFB2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~31_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~30_combout\ & ((\data_RRFA1~82_combout\))) # (!\data_RRFB2~30_combout\ & (\data_RRFA1~78_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~78_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~82_combout\,
	datad => \data_RRFB2~30_combout\,
	combout => \data_RRFB2~31_combout\);

-- Location: LCCOMB_X32_Y28_N16
\data_RRFB2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~34_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~31_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~33_combout\,
	datad => \data_RRFB2~31_combout\,
	combout => \data_RRFB2~34_combout\);

-- Location: FF_X32_Y28_N17
\data_RRFB2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~34_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[6]~reg0_q\);

-- Location: LCCOMB_X32_Y25_N28
\data_RRFB2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~35_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & ((\data_RRFA1~92_combout\))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~93_combout\,
	datad => \data_RRFA1~92_combout\,
	combout => \data_RRFB2~35_combout\);

-- Location: LCCOMB_X32_Y25_N26
\data_RRFB2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~36_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~35_combout\ & (\data_RRFA1~95_combout\)) # (!\data_RRFB2~35_combout\ & ((\data_RRFA1~91_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~95_combout\,
	datac => \data_RRFA1~91_combout\,
	datad => \data_RRFB2~35_combout\,
	combout => \data_RRFB2~36_combout\);

-- Location: LCCOMB_X32_Y25_N24
\data_RRFB2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~37_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~98_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~98_combout\,
	datad => \data_RRFA1~99_combout\,
	combout => \data_RRFB2~37_combout\);

-- Location: LCCOMB_X32_Y25_N6
\data_RRFB2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~38_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~37_combout\ & ((\data_RRFA1~101_combout\))) # (!\data_RRFB2~37_combout\ & (\data_RRFA1~97_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~97_combout\,
	datab => \data_RRFA1~101_combout\,
	datac => \tag_B2[1]~input_o\,
	datad => \data_RRFB2~37_combout\,
	combout => \data_RRFB2~38_combout\);

-- Location: LCCOMB_X32_Y25_N8
\data_RRFB2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~39_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~36_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~36_combout\,
	datad => \data_RRFB2~38_combout\,
	combout => \data_RRFB2~39_combout\);

-- Location: FF_X32_Y25_N9
\data_RRFB2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~39_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[7]~reg0_q\);

-- Location: LCCOMB_X30_Y30_N20
\data_RRFB2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~40_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & (\data_RRFA1~105_combout\)) # (!\tag_B2[1]~input_o\ & ((\data_RRFA1~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~105_combout\,
	datad => \data_RRFA1~106_combout\,
	combout => \data_RRFB2~40_combout\);

-- Location: LCCOMB_X30_Y30_N30
\data_RRFB2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~41_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~40_combout\ & ((\data_RRFA1~108_combout\))) # (!\data_RRFB2~40_combout\ & (\data_RRFA1~104_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~104_combout\,
	datac => \data_RRFA1~108_combout\,
	datad => \data_RRFB2~40_combout\,
	combout => \data_RRFB2~41_combout\);

-- Location: LCCOMB_X30_Y30_N24
\data_RRFB2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~42_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~111_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~111_combout\,
	datad => \data_RRFA1~112_combout\,
	combout => \data_RRFB2~42_combout\);

-- Location: LCCOMB_X30_Y30_N18
\data_RRFB2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~43_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~42_combout\ & (\data_RRFA1~114_combout\)) # (!\data_RRFB2~42_combout\ & ((\data_RRFA1~110_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~114_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~110_combout\,
	datad => \data_RRFB2~42_combout\,
	combout => \data_RRFB2~43_combout\);

-- Location: LCCOMB_X30_Y30_N0
\data_RRFB2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~44_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~41_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~41_combout\,
	datad => \data_RRFB2~43_combout\,
	combout => \data_RRFB2~44_combout\);

-- Location: FF_X30_Y30_N1
\data_RRFB2[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~44_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[8]~reg0_q\);

-- Location: LCCOMB_X29_Y26_N16
\data_RRFB2~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~47_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~124_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & (\data_RRFA1~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~125_combout\,
	datad => \data_RRFA1~124_combout\,
	combout => \data_RRFB2~47_combout\);

-- Location: LCCOMB_X29_Y26_N22
\data_RRFB2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~48_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~47_combout\ & (\data_RRFA1~127_combout\)) # (!\data_RRFB2~47_combout\ & ((\data_RRFA1~123_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~127_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~123_combout\,
	datad => \data_RRFB2~47_combout\,
	combout => \data_RRFB2~48_combout\);

-- Location: LCCOMB_X29_Y26_N24
\data_RRFB2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~45_combout\ = (\tag_B2[1]~input_o\ & (((\tag_B2[2]~input_o\) # (\data_RRFA1~118_combout\)))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~119_combout\ & (!\tag_B2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~119_combout\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~118_combout\,
	combout => \data_RRFB2~45_combout\);

-- Location: LCCOMB_X29_Y26_N2
\data_RRFB2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~46_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~45_combout\ & ((\data_RRFA1~121_combout\))) # (!\data_RRFB2~45_combout\ & (\data_RRFA1~117_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~117_combout\,
	datac => \data_RRFA1~121_combout\,
	datad => \data_RRFB2~45_combout\,
	combout => \data_RRFB2~46_combout\);

-- Location: LCCOMB_X29_Y26_N28
\data_RRFB2~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~49_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~46_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~48_combout\,
	datad => \data_RRFB2~46_combout\,
	combout => \data_RRFB2~49_combout\);

-- Location: FF_X29_Y26_N29
\data_RRFB2[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~49_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[9]~reg0_q\);

-- Location: LCCOMB_X29_Y25_N12
\data_RRFB2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~50_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & (\data_RRFA1~131_combout\)) # (!\tag_B2[1]~input_o\ & ((\data_RRFA1~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~131_combout\,
	datad => \data_RRFA1~132_combout\,
	combout => \data_RRFB2~50_combout\);

-- Location: LCCOMB_X29_Y25_N14
\data_RRFB2~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~51_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~50_combout\ & (\data_RRFA1~134_combout\)) # (!\data_RRFB2~50_combout\ & ((\data_RRFA1~130_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~134_combout\,
	datac => \data_RRFA1~130_combout\,
	datad => \data_RRFB2~50_combout\,
	combout => \data_RRFB2~51_combout\);

-- Location: LCCOMB_X29_Y25_N16
\data_RRFB2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~52_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~137_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~137_combout\,
	datad => \data_RRFA1~138_combout\,
	combout => \data_RRFB2~52_combout\);

-- Location: LCCOMB_X29_Y25_N2
\data_RRFB2~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~53_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~52_combout\ & (\data_RRFA1~140_combout\)) # (!\data_RRFB2~52_combout\ & ((\data_RRFA1~136_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~140_combout\,
	datac => \data_RRFA1~136_combout\,
	datad => \data_RRFB2~52_combout\,
	combout => \data_RRFB2~53_combout\);

-- Location: LCCOMB_X29_Y25_N0
\data_RRFB2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~54_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~51_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~51_combout\,
	datad => \data_RRFB2~53_combout\,
	combout => \data_RRFB2~54_combout\);

-- Location: FF_X29_Y25_N1
\data_RRFB2[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~54_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[10]~reg0_q\);

-- Location: LCCOMB_X29_Y26_N20
\data_RRFB2~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~57_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~150_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~150_combout\,
	datad => \data_RRFA1~151_combout\,
	combout => \data_RRFB2~57_combout\);

-- Location: LCCOMB_X29_Y26_N26
\data_RRFB2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~58_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~57_combout\ & ((\data_RRFA1~153_combout\))) # (!\data_RRFB2~57_combout\ & (\data_RRFA1~149_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~149_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~153_combout\,
	datad => \data_RRFB2~57_combout\,
	combout => \data_RRFB2~58_combout\);

-- Location: LCCOMB_X29_Y26_N12
\data_RRFB2~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~55_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & ((\data_RRFA1~144_combout\))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~145_combout\,
	datad => \data_RRFA1~144_combout\,
	combout => \data_RRFB2~55_combout\);

-- Location: LCCOMB_X29_Y26_N6
\data_RRFB2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~56_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~55_combout\ & (\data_RRFA1~147_combout\)) # (!\data_RRFB2~55_combout\ & ((\data_RRFA1~143_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~147_combout\,
	datac => \data_RRFA1~143_combout\,
	datad => \data_RRFB2~55_combout\,
	combout => \data_RRFB2~56_combout\);

-- Location: LCCOMB_X29_Y26_N30
\data_RRFB2~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~59_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~56_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~58_combout\,
	datad => \data_RRFB2~56_combout\,
	combout => \data_RRFB2~59_combout\);

-- Location: FF_X29_Y26_N31
\data_RRFB2[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~59_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[11]~reg0_q\);

-- Location: LCCOMB_X28_Y30_N20
\data_RRFB2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~60_combout\ = (\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\) # ((\data_RRFA1~157_combout\)))) # (!\tag_B2[1]~input_o\ & (!\tag_B2[2]~input_o\ & ((\data_RRFA1~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~157_combout\,
	datad => \data_RRFA1~158_combout\,
	combout => \data_RRFB2~60_combout\);

-- Location: LCCOMB_X28_Y30_N22
\data_RRFB2~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~61_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~60_combout\ & ((\data_RRFA1~160_combout\))) # (!\data_RRFB2~60_combout\ & (\data_RRFA1~156_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~156_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~160_combout\,
	datad => \data_RRFB2~60_combout\,
	combout => \data_RRFB2~61_combout\);

-- Location: LCCOMB_X28_Y30_N28
\data_RRFB2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~62_combout\ = (\tag_B2[1]~input_o\ & (\tag_B2[2]~input_o\)) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & (\data_RRFA1~163_combout\)) # (!\tag_B2[2]~input_o\ & ((\data_RRFA1~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~163_combout\,
	datad => \data_RRFA1~164_combout\,
	combout => \data_RRFB2~62_combout\);

-- Location: LCCOMB_X28_Y30_N6
\data_RRFB2~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~63_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~62_combout\ & (\data_RRFA1~166_combout\)) # (!\data_RRFB2~62_combout\ & ((\data_RRFA1~162_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~166_combout\,
	datac => \data_RRFA1~162_combout\,
	datad => \data_RRFB2~62_combout\,
	combout => \data_RRFB2~63_combout\);

-- Location: LCCOMB_X28_Y30_N0
\data_RRFB2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~64_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~61_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~61_combout\,
	datad => \data_RRFB2~63_combout\,
	combout => \data_RRFB2~64_combout\);

-- Location: FF_X28_Y30_N1
\data_RRFB2[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~64_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[12]~reg0_q\);

-- Location: LCCOMB_X32_Y29_N10
\data_RRFB2~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~67_combout\ = (\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\) # ((\data_RRFA1~176_combout\)))) # (!\tag_B2[2]~input_o\ & (!\tag_B2[1]~input_o\ & ((\data_RRFA1~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~176_combout\,
	datad => \data_RRFA1~177_combout\,
	combout => \data_RRFB2~67_combout\);

-- Location: LCCOMB_X32_Y29_N4
\data_RRFB2~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~68_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~67_combout\ & (\data_RRFA1~179_combout\)) # (!\data_RRFB2~67_combout\ & ((\data_RRFA1~175_combout\))))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~179_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~175_combout\,
	datad => \data_RRFB2~67_combout\,
	combout => \data_RRFB2~68_combout\);

-- Location: LCCOMB_X31_Y29_N30
\data_RRFB2~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~65_combout\ = (\tag_B2[2]~input_o\ & (((\tag_B2[1]~input_o\)))) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & (\data_RRFA1~170_combout\)) # (!\tag_B2[1]~input_o\ & ((\data_RRFA1~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~170_combout\,
	datac => \tag_B2[1]~input_o\,
	datad => \data_RRFA1~171_combout\,
	combout => \data_RRFB2~65_combout\);

-- Location: LCCOMB_X32_Y29_N0
\data_RRFB2~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~66_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~65_combout\ & (\data_RRFA1~173_combout\)) # (!\data_RRFB2~65_combout\ & ((\data_RRFA1~169_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~173_combout\,
	datac => \data_RRFA1~169_combout\,
	datad => \data_RRFB2~65_combout\,
	combout => \data_RRFB2~66_combout\);

-- Location: LCCOMB_X32_Y29_N24
\data_RRFB2~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~69_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~66_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~68_combout\,
	datad => \data_RRFB2~66_combout\,
	combout => \data_RRFB2~69_combout\);

-- Location: FF_X32_Y29_N25
\data_RRFB2[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~69_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[13]~reg0_q\);

-- Location: LCCOMB_X32_Y29_N18
\data_RRFB2~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~72_combout\ = (\tag_B2[1]~input_o\ & (((\tag_B2[2]~input_o\)))) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & (\data_RRFA1~189_combout\)) # (!\tag_B2[2]~input_o\ & ((\data_RRFA1~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~189_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~190_combout\,
	combout => \data_RRFB2~72_combout\);

-- Location: LCCOMB_X32_Y29_N28
\data_RRFB2~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~73_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~72_combout\ & ((\data_RRFA1~192_combout\))) # (!\data_RRFB2~72_combout\ & (\data_RRFA1~188_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~188_combout\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~192_combout\,
	datad => \data_RRFB2~72_combout\,
	combout => \data_RRFB2~73_combout\);

-- Location: LCCOMB_X32_Y29_N22
\data_RRFB2~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~70_combout\ = (\tag_B2[2]~input_o\ & (\tag_B2[1]~input_o\)) # (!\tag_B2[2]~input_o\ & ((\tag_B2[1]~input_o\ & ((\data_RRFA1~183_combout\))) # (!\tag_B2[1]~input_o\ & (\data_RRFA1~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \tag_B2[1]~input_o\,
	datac => \data_RRFA1~184_combout\,
	datad => \data_RRFA1~183_combout\,
	combout => \data_RRFB2~70_combout\);

-- Location: LCCOMB_X32_Y29_N12
\data_RRFB2~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~71_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~70_combout\ & (\data_RRFA1~186_combout\)) # (!\data_RRFB2~70_combout\ & ((\data_RRFA1~182_combout\))))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[2]~input_o\,
	datab => \data_RRFA1~186_combout\,
	datac => \data_RRFB2~70_combout\,
	datad => \data_RRFA1~182_combout\,
	combout => \data_RRFB2~71_combout\);

-- Location: LCCOMB_X32_Y29_N30
\data_RRFB2~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~74_combout\ = (\tag_B2[0]~input_o\ & ((\data_RRFB2~71_combout\))) # (!\tag_B2[0]~input_o\ & (\data_RRFB2~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_RRFB2~73_combout\,
	datac => \tag_B2[0]~input_o\,
	datad => \data_RRFB2~71_combout\,
	combout => \data_RRFB2~74_combout\);

-- Location: FF_X32_Y29_N31
\data_RRFB2[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~74_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[14]~reg0_q\);

-- Location: LCCOMB_X28_Y27_N4
\data_RRFB2~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~75_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFA1~196_combout\) # ((\tag_B2[2]~input_o\)))) # (!\tag_B2[1]~input_o\ & (((!\tag_B2[2]~input_o\ & \data_RRFA1~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~196_combout\,
	datac => \tag_B2[2]~input_o\,
	datad => \data_RRFA1~197_combout\,
	combout => \data_RRFB2~75_combout\);

-- Location: LCCOMB_X28_Y27_N22
\data_RRFB2~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~76_combout\ = (\tag_B2[2]~input_o\ & ((\data_RRFB2~75_combout\ & ((\data_RRFA1~199_combout\))) # (!\data_RRFB2~75_combout\ & (\data_RRFA1~195_combout\)))) # (!\tag_B2[2]~input_o\ & (((\data_RRFB2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~195_combout\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFB2~75_combout\,
	datad => \data_RRFA1~199_combout\,
	combout => \data_RRFB2~76_combout\);

-- Location: LCCOMB_X28_Y27_N28
\data_RRFB2~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~77_combout\ = (\tag_B2[1]~input_o\ & (\tag_B2[2]~input_o\)) # (!\tag_B2[1]~input_o\ & ((\tag_B2[2]~input_o\ & (\data_RRFA1~202_combout\)) # (!\tag_B2[2]~input_o\ & ((\data_RRFA1~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \tag_B2[2]~input_o\,
	datac => \data_RRFA1~202_combout\,
	datad => \data_RRFA1~203_combout\,
	combout => \data_RRFB2~77_combout\);

-- Location: LCCOMB_X28_Y27_N18
\data_RRFB2~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~78_combout\ = (\tag_B2[1]~input_o\ & ((\data_RRFB2~77_combout\ & ((\data_RRFA1~205_combout\))) # (!\data_RRFB2~77_combout\ & (\data_RRFA1~201_combout\)))) # (!\tag_B2[1]~input_o\ & (((\data_RRFB2~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[1]~input_o\,
	datab => \data_RRFA1~201_combout\,
	datac => \data_RRFA1~205_combout\,
	datad => \data_RRFB2~77_combout\,
	combout => \data_RRFB2~78_combout\);

-- Location: LCCOMB_X28_Y27_N30
\data_RRFB2~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRFB2~79_combout\ = (\tag_B2[0]~input_o\ & (\data_RRFB2~76_combout\)) # (!\tag_B2[0]~input_o\ & ((\data_RRFB2~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_B2[0]~input_o\,
	datac => \data_RRFB2~76_combout\,
	datad => \data_RRFB2~78_combout\,
	combout => \data_RRFB2~79_combout\);

-- Location: FF_X28_Y27_N31
\data_RRFB2[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRFB2~79_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRFB2[15]~reg0_q\);

-- Location: IOIBUF_X49_Y34_N1
\tag_ROB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_ROB(0),
	o => \tag_ROB[0]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\tag_ROB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_ROB(2),
	o => \tag_ROB[2]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\tag_ROB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_ROB(1),
	o => \tag_ROB[1]~input_o\);

-- Location: LCCOMB_X28_Y26_N16
\data_RRF~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~0_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\)))) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & (\data_RRFA1~1_combout\)) # (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~1_combout\,
	datac => \data_RRFA1~2_combout\,
	datad => \tag_ROB[1]~input_o\,
	combout => \data_RRF~0_combout\);

-- Location: LCCOMB_X28_Y26_N26
\data_RRF~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~1_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~0_combout\ & (\data_RRFA1~4_combout\)) # (!\data_RRF~0_combout\ & ((\data_RRFA1~0_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~4_combout\,
	datac => \data_RRFA1~0_combout\,
	datad => \data_RRF~0_combout\,
	combout => \data_RRF~1_combout\);

-- Location: LCCOMB_X28_Y26_N12
\data_RRF~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~2_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~7_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~7_combout\,
	datad => \data_RRFA1~8_combout\,
	combout => \data_RRF~2_combout\);

-- Location: LCCOMB_X28_Y26_N18
\data_RRF~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~3_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~2_combout\ & ((\data_RRFA1~10_combout\))) # (!\data_RRF~2_combout\ & (\data_RRFA1~6_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~6_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~10_combout\,
	datad => \data_RRF~2_combout\,
	combout => \data_RRF~3_combout\);

-- Location: LCCOMB_X28_Y26_N20
\data_RRF~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~4_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~1_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~1_combout\,
	datad => \data_RRF~3_combout\,
	combout => \data_RRF~4_combout\);

-- Location: FF_X28_Y26_N21
\data_RRF[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[0]~reg0_q\);

-- Location: LCCOMB_X30_Y25_N22
\data_RRF~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~7_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~20_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & (\data_RRFA1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~21_combout\,
	datad => \data_RRFA1~20_combout\,
	combout => \data_RRF~7_combout\);

-- Location: LCCOMB_X30_Y25_N4
\data_RRF~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~8_combout\ = (\data_RRF~7_combout\ & (((\data_RRFA1~23_combout\)) # (!\tag_ROB[1]~input_o\))) # (!\data_RRF~7_combout\ & (\tag_ROB[1]~input_o\ & ((\data_RRFA1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRF~7_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~23_combout\,
	datad => \data_RRFA1~19_combout\,
	combout => \data_RRF~8_combout\);

-- Location: LCCOMB_X30_Y25_N10
\data_RRF~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~5_combout\ = (\tag_ROB[2]~input_o\ & (\tag_ROB[1]~input_o\)) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & ((\data_RRFA1~14_combout\))) # (!\tag_ROB[1]~input_o\ & (\data_RRFA1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~15_combout\,
	datad => \data_RRFA1~14_combout\,
	combout => \data_RRF~5_combout\);

-- Location: LCCOMB_X30_Y25_N24
\data_RRF~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~6_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~5_combout\ & ((\data_RRFA1~17_combout\))) # (!\data_RRF~5_combout\ & (\data_RRFA1~13_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~13_combout\,
	datab => \data_RRFA1~17_combout\,
	datac => \tag_ROB[2]~input_o\,
	datad => \data_RRF~5_combout\,
	combout => \data_RRF~6_combout\);

-- Location: LCCOMB_X30_Y25_N30
\data_RRF~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~9_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~6_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[0]~input_o\,
	datac => \data_RRF~8_combout\,
	datad => \data_RRF~6_combout\,
	combout => \data_RRF~9_combout\);

-- Location: FF_X30_Y25_N31
\data_RRF[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~9_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[1]~reg0_q\);

-- Location: LCCOMB_X30_Y25_N6
\data_RRF~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~10_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\)))) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & (\data_RRFA1~27_combout\)) # (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~27_combout\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRFA1~28_combout\,
	combout => \data_RRF~10_combout\);

-- Location: LCCOMB_X30_Y25_N16
\data_RRF~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~11_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~10_combout\ & (\data_RRFA1~30_combout\)) # (!\data_RRF~10_combout\ & ((\data_RRFA1~26_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~30_combout\,
	datac => \data_RRFA1~26_combout\,
	datad => \data_RRF~10_combout\,
	combout => \data_RRF~11_combout\);

-- Location: LCCOMB_X30_Y25_N14
\data_RRF~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~12_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~33_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & (\data_RRFA1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~34_combout\,
	datad => \data_RRFA1~33_combout\,
	combout => \data_RRF~12_combout\);

-- Location: LCCOMB_X30_Y25_N12
\data_RRF~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~13_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~12_combout\ & (\data_RRFA1~36_combout\)) # (!\data_RRF~12_combout\ & ((\data_RRFA1~32_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRFA1~36_combout\,
	datac => \data_RRF~12_combout\,
	datad => \data_RRFA1~32_combout\,
	combout => \data_RRF~13_combout\);

-- Location: LCCOMB_X30_Y25_N0
\data_RRF~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~14_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~11_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[0]~input_o\,
	datab => \data_RRF~11_combout\,
	datad => \data_RRF~13_combout\,
	combout => \data_RRF~14_combout\);

-- Location: FF_X30_Y25_N1
\data_RRF[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~14_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[2]~reg0_q\);

-- Location: LCCOMB_X34_Y27_N16
\data_RRF~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~15_combout\ = (\tag_ROB[2]~input_o\ & (\tag_ROB[1]~input_o\)) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & (\data_RRFA1~40_combout\)) # (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~40_combout\,
	datad => \data_RRFA1~41_combout\,
	combout => \data_RRF~15_combout\);

-- Location: LCCOMB_X34_Y27_N14
\data_RRF~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~16_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~15_combout\ & ((\data_RRFA1~43_combout\))) # (!\data_RRF~15_combout\ & (\data_RRFA1~39_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~39_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~43_combout\,
	datad => \data_RRF~15_combout\,
	combout => \data_RRF~16_combout\);

-- Location: LCCOMB_X34_Y27_N24
\data_RRF~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~17_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~46_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~46_combout\,
	datad => \data_RRFA1~47_combout\,
	combout => \data_RRF~17_combout\);

-- Location: LCCOMB_X34_Y27_N10
\data_RRF~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~18_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~17_combout\ & (\data_RRFA1~49_combout\)) # (!\data_RRF~17_combout\ & ((\data_RRFA1~45_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~49_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~45_combout\,
	datad => \data_RRF~17_combout\,
	combout => \data_RRF~18_combout\);

-- Location: LCCOMB_X34_Y27_N22
\data_RRF~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~19_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~16_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~16_combout\,
	datad => \data_RRF~18_combout\,
	combout => \data_RRF~19_combout\);

-- Location: FF_X34_Y27_N23
\data_RRF[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~19_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[3]~reg0_q\);

-- Location: LCCOMB_X34_Y27_N4
\data_RRF~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~20_combout\ = (\tag_ROB[2]~input_o\ & (\tag_ROB[1]~input_o\)) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & ((\data_RRFA1~53_combout\))) # (!\tag_ROB[1]~input_o\ & (\data_RRFA1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~54_combout\,
	datad => \data_RRFA1~53_combout\,
	combout => \data_RRF~20_combout\);

-- Location: LCCOMB_X34_Y27_N30
\data_RRF~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~21_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~20_combout\ & (\data_RRFA1~56_combout\)) # (!\data_RRF~20_combout\ & ((\data_RRFA1~52_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~56_combout\,
	datac => \data_RRF~20_combout\,
	datad => \data_RRFA1~52_combout\,
	combout => \data_RRF~21_combout\);

-- Location: LCCOMB_X34_Y27_N8
\data_RRF~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~22_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~59_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & (\data_RRFA1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~60_combout\,
	datad => \data_RRFA1~59_combout\,
	combout => \data_RRF~22_combout\);

-- Location: LCCOMB_X34_Y27_N18
\data_RRF~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~23_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~22_combout\ & ((\data_RRFA1~62_combout\))) # (!\data_RRF~22_combout\ & (\data_RRFA1~58_combout\)))) # (!\tag_ROB[1]~input_o\ & (\data_RRF~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRF~22_combout\,
	datac => \data_RRFA1~58_combout\,
	datad => \data_RRFA1~62_combout\,
	combout => \data_RRF~23_combout\);

-- Location: LCCOMB_X34_Y27_N12
\data_RRF~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~24_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~21_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~21_combout\,
	datad => \data_RRF~23_combout\,
	combout => \data_RRF~24_combout\);

-- Location: FF_X34_Y27_N13
\data_RRF[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~24_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[4]~reg0_q\);

-- Location: LCCOMB_X31_Y26_N14
\data_RRF~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~28_combout\ = (\tag_ROB[1]~input_o\ & (((\tag_ROB[2]~input_o\)))) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~72_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRFA1~72_combout\,
	datac => \tag_ROB[2]~input_o\,
	datad => \data_RRFA1~73_combout\,
	combout => \data_RRF~28_combout\);

-- Location: LCCOMB_X31_Y26_N20
\data_RRF~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~29_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~28_combout\ & (\data_RRFA1~75_combout\)) # (!\data_RRF~28_combout\ & ((\data_RRFA1~71_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRFA1~75_combout\,
	datac => \data_RRF~28_combout\,
	datad => \data_RRFA1~71_combout\,
	combout => \data_RRF~29_combout\);

-- Location: LCCOMB_X30_Y27_N26
\data_RRF~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~25_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\)))) # (!\tag_ROB[2]~input_o\ & (((\memory[3][5]~q\ & \memory[3][16]~q\)) # (!\tag_ROB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \memory[3][5]~q\,
	datac => \tag_ROB[1]~input_o\,
	datad => \memory[3][16]~q\,
	combout => \data_RRF~25_combout\);

-- Location: LCCOMB_X31_Y28_N8
\data_RRF~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~26_combout\ = (\data_RRF~25_combout\ & ((\tag_ROB[1]~input_o\) # ((\memory[1][16]~q\ & \memory[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \memory[1][16]~q\,
	datac => \memory[1][5]~q\,
	datad => \data_RRF~25_combout\,
	combout => \data_RRF~26_combout\);

-- Location: LCCOMB_X30_Y26_N20
\data_RRF~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~27_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~26_combout\ & (\data_RRFA1~69_combout\)) # (!\data_RRF~26_combout\ & ((\data_RRFA1~65_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~69_combout\,
	datab => \data_RRFA1~65_combout\,
	datac => \tag_ROB[2]~input_o\,
	datad => \data_RRF~26_combout\,
	combout => \data_RRF~27_combout\);

-- Location: LCCOMB_X30_Y26_N8
\data_RRF~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~30_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~27_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~29_combout\,
	datad => \data_RRF~27_combout\,
	combout => \data_RRF~30_combout\);

-- Location: FF_X30_Y26_N9
\data_RRF[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~30_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[5]~reg0_q\);

-- Location: LCCOMB_X32_Y28_N26
\data_RRF~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~31_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~79_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & (\data_RRFA1~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~80_combout\,
	datad => \data_RRFA1~79_combout\,
	combout => \data_RRF~31_combout\);

-- Location: LCCOMB_X32_Y28_N8
\data_RRF~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~32_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~31_combout\ & (\data_RRFA1~82_combout\)) # (!\data_RRF~31_combout\ & ((\data_RRFA1~78_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~82_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRF~31_combout\,
	datad => \data_RRFA1~78_combout\,
	combout => \data_RRF~32_combout\);

-- Location: LCCOMB_X32_Y28_N6
\data_RRF~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~33_combout\ = (\tag_ROB[1]~input_o\ & (\tag_ROB[2]~input_o\)) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~85_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~85_combout\,
	datad => \data_RRFA1~86_combout\,
	combout => \data_RRF~33_combout\);

-- Location: LCCOMB_X32_Y28_N20
\data_RRF~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~34_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~33_combout\ & ((\data_RRFA1~88_combout\))) # (!\data_RRF~33_combout\ & (\data_RRFA1~84_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~84_combout\,
	datab => \data_RRFA1~88_combout\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRF~33_combout\,
	combout => \data_RRF~34_combout\);

-- Location: LCCOMB_X32_Y28_N22
\data_RRF~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~35_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~32_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[0]~input_o\,
	datac => \data_RRF~32_combout\,
	datad => \data_RRF~34_combout\,
	combout => \data_RRF~35_combout\);

-- Location: FF_X32_Y28_N23
\data_RRF[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~35_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[6]~reg0_q\);

-- Location: LCCOMB_X31_Y28_N6
\data_RRF~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~36_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\)))) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & ((\data_RRFA1~92_combout\))) # (!\tag_ROB[1]~input_o\ & (\data_RRFA1~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~93_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRFA1~92_combout\,
	combout => \data_RRF~36_combout\);

-- Location: LCCOMB_X32_Y28_N14
\data_RRF~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~37_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~36_combout\ & ((\data_RRFA1~95_combout\))) # (!\data_RRF~36_combout\ & (\data_RRFA1~91_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~91_combout\,
	datac => \data_RRF~36_combout\,
	datad => \data_RRFA1~95_combout\,
	combout => \data_RRF~37_combout\);

-- Location: LCCOMB_X32_Y28_N12
\data_RRF~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~38_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~98_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & (\data_RRFA1~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~99_combout\,
	datad => \data_RRFA1~98_combout\,
	combout => \data_RRF~38_combout\);

-- Location: LCCOMB_X32_Y28_N2
\data_RRF~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~39_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~38_combout\ & (\data_RRFA1~101_combout\)) # (!\data_RRF~38_combout\ & ((\data_RRFA1~97_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~101_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~97_combout\,
	datad => \data_RRF~38_combout\,
	combout => \data_RRF~39_combout\);

-- Location: LCCOMB_X32_Y28_N0
\data_RRF~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~40_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~37_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[0]~input_o\,
	datac => \data_RRF~37_combout\,
	datad => \data_RRF~39_combout\,
	combout => \data_RRF~40_combout\);

-- Location: FF_X32_Y28_N1
\data_RRF[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~40_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[7]~reg0_q\);

-- Location: LCCOMB_X30_Y30_N4
\data_RRF~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~41_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~105_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~105_combout\,
	datad => \data_RRFA1~106_combout\,
	combout => \data_RRF~41_combout\);

-- Location: LCCOMB_X30_Y30_N26
\data_RRF~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~42_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~41_combout\ & (\data_RRFA1~108_combout\)) # (!\data_RRF~41_combout\ & ((\data_RRFA1~104_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~108_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRF~41_combout\,
	datad => \data_RRFA1~104_combout\,
	combout => \data_RRF~42_combout\);

-- Location: LCCOMB_X30_Y30_N12
\data_RRF~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~43_combout\ = (\tag_ROB[1]~input_o\ & (\tag_ROB[2]~input_o\)) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~111_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~111_combout\,
	datad => \data_RRFA1~112_combout\,
	combout => \data_RRF~43_combout\);

-- Location: LCCOMB_X30_Y30_N10
\data_RRF~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~44_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~43_combout\ & (\data_RRFA1~114_combout\)) # (!\data_RRF~43_combout\ & ((\data_RRFA1~110_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~114_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~110_combout\,
	datad => \data_RRF~43_combout\,
	combout => \data_RRF~44_combout\);

-- Location: LCCOMB_X30_Y30_N14
\data_RRF~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~45_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~42_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~42_combout\,
	datad => \data_RRF~44_combout\,
	combout => \data_RRF~45_combout\);

-- Location: FF_X30_Y30_N15
\data_RRF[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~45_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[8]~reg0_q\);

-- Location: LCCOMB_X30_Y30_N16
\data_RRF~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~48_combout\ = (\tag_ROB[1]~input_o\ & (\tag_ROB[2]~input_o\)) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~124_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~124_combout\,
	datad => \data_RRFA1~125_combout\,
	combout => \data_RRF~48_combout\);

-- Location: LCCOMB_X30_Y30_N22
\data_RRF~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~49_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~48_combout\ & (\data_RRFA1~127_combout\)) # (!\data_RRF~48_combout\ & ((\data_RRFA1~123_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~127_combout\,
	datab => \data_RRFA1~123_combout\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRF~48_combout\,
	combout => \data_RRF~49_combout\);

-- Location: LCCOMB_X30_Y30_N8
\data_RRF~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~46_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~118_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~118_combout\,
	datad => \data_RRFA1~119_combout\,
	combout => \data_RRF~46_combout\);

-- Location: LCCOMB_X30_Y30_N2
\data_RRF~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~47_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~46_combout\ & ((\data_RRFA1~121_combout\))) # (!\data_RRF~46_combout\ & (\data_RRFA1~117_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~117_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRF~46_combout\,
	datad => \data_RRFA1~121_combout\,
	combout => \data_RRF~47_combout\);

-- Location: LCCOMB_X30_Y30_N28
\data_RRF~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~50_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~47_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~49_combout\,
	datad => \data_RRF~47_combout\,
	combout => \data_RRF~50_combout\);

-- Location: FF_X30_Y30_N29
\data_RRF[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~50_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[9]~reg0_q\);

-- Location: LCCOMB_X29_Y25_N20
\data_RRF~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~51_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~131_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~131_combout\,
	datad => \data_RRFA1~132_combout\,
	combout => \data_RRF~51_combout\);

-- Location: LCCOMB_X29_Y25_N30
\data_RRF~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~52_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~51_combout\ & (\data_RRFA1~134_combout\)) # (!\data_RRF~51_combout\ & ((\data_RRFA1~130_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~134_combout\,
	datac => \data_RRFA1~130_combout\,
	datad => \data_RRF~51_combout\,
	combout => \data_RRF~52_combout\);

-- Location: LCCOMB_X29_Y25_N28
\data_RRF~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~53_combout\ = (\tag_ROB[1]~input_o\ & (\tag_ROB[2]~input_o\)) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~137_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~137_combout\,
	datad => \data_RRFA1~138_combout\,
	combout => \data_RRF~53_combout\);

-- Location: LCCOMB_X29_Y25_N10
\data_RRF~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~54_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~53_combout\ & (\data_RRFA1~140_combout\)) # (!\data_RRF~53_combout\ & ((\data_RRFA1~136_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRFA1~140_combout\,
	datac => \data_RRFA1~136_combout\,
	datad => \data_RRF~53_combout\,
	combout => \data_RRF~54_combout\);

-- Location: LCCOMB_X29_Y25_N22
\data_RRF~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~55_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~52_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~52_combout\,
	datad => \data_RRF~54_combout\,
	combout => \data_RRF~55_combout\);

-- Location: FF_X29_Y25_N23
\data_RRF[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~55_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[10]~reg0_q\);

-- Location: LCCOMB_X29_Y25_N4
\data_RRF~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~58_combout\ = (\tag_ROB[1]~input_o\ & (\tag_ROB[2]~input_o\)) # (!\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\ & (\data_RRFA1~150_combout\)) # (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~150_combout\,
	datad => \data_RRFA1~151_combout\,
	combout => \data_RRF~58_combout\);

-- Location: LCCOMB_X29_Y25_N26
\data_RRF~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~59_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~58_combout\ & (\data_RRFA1~153_combout\)) # (!\data_RRF~58_combout\ & ((\data_RRFA1~149_combout\))))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \data_RRFA1~153_combout\,
	datac => \data_RRF~58_combout\,
	datad => \data_RRFA1~149_combout\,
	combout => \data_RRF~59_combout\);

-- Location: LCCOMB_X29_Y25_N24
\data_RRF~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~56_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~144_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~144_combout\,
	datad => \data_RRFA1~145_combout\,
	combout => \data_RRF~56_combout\);

-- Location: LCCOMB_X29_Y25_N6
\data_RRF~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~57_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~56_combout\ & (\data_RRFA1~147_combout\)) # (!\data_RRF~56_combout\ & ((\data_RRFA1~143_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~147_combout\,
	datac => \data_RRFA1~143_combout\,
	datad => \data_RRF~56_combout\,
	combout => \data_RRF~57_combout\);

-- Location: LCCOMB_X29_Y25_N8
\data_RRF~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~60_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~57_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~59_combout\,
	datad => \data_RRF~57_combout\,
	combout => \data_RRF~60_combout\);

-- Location: FF_X29_Y25_N9
\data_RRF[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~60_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[11]~reg0_q\);

-- Location: LCCOMB_X28_Y29_N20
\data_RRF~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~63_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\) # (\data_RRFA1~163_combout\)))) # (!\tag_ROB[2]~input_o\ & (\data_RRFA1~164_combout\ & (!\tag_ROB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~164_combout\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRFA1~163_combout\,
	combout => \data_RRF~63_combout\);

-- Location: LCCOMB_X28_Y29_N30
\data_RRF~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~64_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~63_combout\ & ((\data_RRFA1~166_combout\))) # (!\data_RRF~63_combout\ & (\data_RRFA1~162_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~162_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~166_combout\,
	datad => \data_RRF~63_combout\,
	combout => \data_RRF~64_combout\);

-- Location: LCCOMB_X28_Y29_N28
\data_RRF~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~61_combout\ = (\tag_ROB[2]~input_o\ & (\tag_ROB[1]~input_o\)) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & ((\data_RRFA1~157_combout\))) # (!\tag_ROB[1]~input_o\ & (\data_RRFA1~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~158_combout\,
	datad => \data_RRFA1~157_combout\,
	combout => \data_RRF~61_combout\);

-- Location: LCCOMB_X28_Y29_N2
\data_RRF~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~62_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~61_combout\ & (\data_RRFA1~160_combout\)) # (!\data_RRF~61_combout\ & ((\data_RRFA1~156_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~160_combout\,
	datac => \data_RRFA1~156_combout\,
	datad => \data_RRF~61_combout\,
	combout => \data_RRF~62_combout\);

-- Location: LCCOMB_X28_Y29_N6
\data_RRF~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~65_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~62_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~64_combout\,
	datad => \data_RRF~62_combout\,
	combout => \data_RRF~65_combout\);

-- Location: FF_X28_Y29_N7
\data_RRF[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~65_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[12]~reg0_q\);

-- Location: LCCOMB_X32_Y29_N14
\data_RRF~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~68_combout\ = (\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\) # ((\data_RRFA1~176_combout\)))) # (!\tag_ROB[2]~input_o\ & (!\tag_ROB[1]~input_o\ & ((\data_RRFA1~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~176_combout\,
	datad => \data_RRFA1~177_combout\,
	combout => \data_RRF~68_combout\);

-- Location: LCCOMB_X28_Y29_N22
\data_RRF~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~69_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~68_combout\ & ((\data_RRFA1~179_combout\))) # (!\data_RRF~68_combout\ & (\data_RRFA1~175_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~175_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~179_combout\,
	datad => \data_RRF~68_combout\,
	combout => \data_RRF~69_combout\);

-- Location: LCCOMB_X29_Y29_N2
\data_RRF~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~66_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~170_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & (\data_RRFA1~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~171_combout\,
	datad => \data_RRFA1~170_combout\,
	combout => \data_RRF~66_combout\);

-- Location: LCCOMB_X28_Y29_N0
\data_RRF~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~67_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~66_combout\ & ((\data_RRFA1~173_combout\))) # (!\data_RRF~66_combout\ & (\data_RRFA1~169_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~169_combout\,
	datac => \data_RRFA1~173_combout\,
	datad => \data_RRF~66_combout\,
	combout => \data_RRF~67_combout\);

-- Location: LCCOMB_X28_Y29_N4
\data_RRF~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~70_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~67_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~69_combout\,
	datad => \data_RRF~67_combout\,
	combout => \data_RRF~70_combout\);

-- Location: FF_X28_Y29_N5
\data_RRF[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~70_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[13]~reg0_q\);

-- Location: LCCOMB_X32_Y29_N16
\data_RRF~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~73_combout\ = (\tag_ROB[2]~input_o\ & (((\tag_ROB[1]~input_o\) # (\data_RRFA1~189_combout\)))) # (!\tag_ROB[2]~input_o\ & (\data_RRFA1~190_combout\ & (!\tag_ROB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~190_combout\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRFA1~189_combout\,
	combout => \data_RRF~73_combout\);

-- Location: LCCOMB_X32_Y29_N26
\data_RRF~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~74_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~73_combout\ & ((\data_RRFA1~192_combout\))) # (!\data_RRF~73_combout\ & (\data_RRFA1~188_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~188_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~192_combout\,
	datad => \data_RRF~73_combout\,
	combout => \data_RRF~74_combout\);

-- Location: LCCOMB_X32_Y29_N8
\data_RRF~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~71_combout\ = (\tag_ROB[2]~input_o\ & (\tag_ROB[1]~input_o\)) # (!\tag_ROB[2]~input_o\ & ((\tag_ROB[1]~input_o\ & ((\data_RRFA1~183_combout\))) # (!\tag_ROB[1]~input_o\ & (\data_RRFA1~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~184_combout\,
	datad => \data_RRFA1~183_combout\,
	combout => \data_RRF~71_combout\);

-- Location: LCCOMB_X32_Y29_N6
\data_RRF~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~72_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~71_combout\ & (\data_RRFA1~186_combout\)) # (!\data_RRF~71_combout\ & ((\data_RRFA1~182_combout\))))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[2]~input_o\,
	datab => \data_RRFA1~186_combout\,
	datac => \data_RRF~71_combout\,
	datad => \data_RRFA1~182_combout\,
	combout => \data_RRF~72_combout\);

-- Location: LCCOMB_X32_Y29_N20
\data_RRF~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~75_combout\ = (\tag_ROB[0]~input_o\ & ((\data_RRF~72_combout\))) # (!\tag_ROB[0]~input_o\ & (\data_RRF~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_ROB[0]~input_o\,
	datac => \data_RRF~74_combout\,
	datad => \data_RRF~72_combout\,
	combout => \data_RRF~75_combout\);

-- Location: FF_X32_Y29_N21
\data_RRF[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~75_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[14]~reg0_q\);

-- Location: LCCOMB_X28_Y27_N8
\data_RRF~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~76_combout\ = (\tag_ROB[1]~input_o\ & ((\tag_ROB[2]~input_o\) # ((\data_RRFA1~196_combout\)))) # (!\tag_ROB[1]~input_o\ & (!\tag_ROB[2]~input_o\ & ((\data_RRFA1~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[1]~input_o\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRFA1~196_combout\,
	datad => \data_RRFA1~197_combout\,
	combout => \data_RRF~76_combout\);

-- Location: LCCOMB_X28_Y27_N26
\data_RRF~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~77_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRF~76_combout\ & ((\data_RRFA1~199_combout\))) # (!\data_RRF~76_combout\ & (\data_RRFA1~195_combout\)))) # (!\tag_ROB[2]~input_o\ & (((\data_RRF~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~195_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \data_RRF~76_combout\,
	datad => \data_RRFA1~199_combout\,
	combout => \data_RRF~77_combout\);

-- Location: LCCOMB_X28_Y27_N24
\data_RRF~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~78_combout\ = (\tag_ROB[2]~input_o\ & ((\data_RRFA1~202_combout\) # ((\tag_ROB[1]~input_o\)))) # (!\tag_ROB[2]~input_o\ & (((!\tag_ROB[1]~input_o\ & \data_RRFA1~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~202_combout\,
	datab => \tag_ROB[2]~input_o\,
	datac => \tag_ROB[1]~input_o\,
	datad => \data_RRFA1~203_combout\,
	combout => \data_RRF~78_combout\);

-- Location: LCCOMB_X28_Y27_N2
\data_RRF~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~79_combout\ = (\tag_ROB[1]~input_o\ & ((\data_RRF~78_combout\ & ((\data_RRFA1~205_combout\))) # (!\data_RRF~78_combout\ & (\data_RRFA1~201_combout\)))) # (!\tag_ROB[1]~input_o\ & (((\data_RRF~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_RRFA1~201_combout\,
	datab => \tag_ROB[1]~input_o\,
	datac => \data_RRFA1~205_combout\,
	datad => \data_RRF~78_combout\,
	combout => \data_RRF~79_combout\);

-- Location: LCCOMB_X28_Y27_N12
\data_RRF~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_RRF~80_combout\ = (\tag_ROB[0]~input_o\ & (\data_RRF~77_combout\)) # (!\tag_ROB[0]~input_o\ & ((\data_RRF~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ROB[0]~input_o\,
	datac => \data_RRF~77_combout\,
	datad => \data_RRF~79_combout\,
	combout => \data_RRF~80_combout\);

-- Location: FF_X28_Y27_N13
\data_RRF[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_RRF~80_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_RRF[15]~reg0_q\);

ww_data_RRFA1(0) <= \data_RRFA1[0]~output_o\;

ww_data_RRFA1(1) <= \data_RRFA1[1]~output_o\;

ww_data_RRFA1(2) <= \data_RRFA1[2]~output_o\;

ww_data_RRFA1(3) <= \data_RRFA1[3]~output_o\;

ww_data_RRFA1(4) <= \data_RRFA1[4]~output_o\;

ww_data_RRFA1(5) <= \data_RRFA1[5]~output_o\;

ww_data_RRFA1(6) <= \data_RRFA1[6]~output_o\;

ww_data_RRFA1(7) <= \data_RRFA1[7]~output_o\;

ww_data_RRFA1(8) <= \data_RRFA1[8]~output_o\;

ww_data_RRFA1(9) <= \data_RRFA1[9]~output_o\;

ww_data_RRFA1(10) <= \data_RRFA1[10]~output_o\;

ww_data_RRFA1(11) <= \data_RRFA1[11]~output_o\;

ww_data_RRFA1(12) <= \data_RRFA1[12]~output_o\;

ww_data_RRFA1(13) <= \data_RRFA1[13]~output_o\;

ww_data_RRFA1(14) <= \data_RRFA1[14]~output_o\;

ww_data_RRFA1(15) <= \data_RRFA1[15]~output_o\;

ww_data_RRFB1(0) <= \data_RRFB1[0]~output_o\;

ww_data_RRFB1(1) <= \data_RRFB1[1]~output_o\;

ww_data_RRFB1(2) <= \data_RRFB1[2]~output_o\;

ww_data_RRFB1(3) <= \data_RRFB1[3]~output_o\;

ww_data_RRFB1(4) <= \data_RRFB1[4]~output_o\;

ww_data_RRFB1(5) <= \data_RRFB1[5]~output_o\;

ww_data_RRFB1(6) <= \data_RRFB1[6]~output_o\;

ww_data_RRFB1(7) <= \data_RRFB1[7]~output_o\;

ww_data_RRFB1(8) <= \data_RRFB1[8]~output_o\;

ww_data_RRFB1(9) <= \data_RRFB1[9]~output_o\;

ww_data_RRFB1(10) <= \data_RRFB1[10]~output_o\;

ww_data_RRFB1(11) <= \data_RRFB1[11]~output_o\;

ww_data_RRFB1(12) <= \data_RRFB1[12]~output_o\;

ww_data_RRFB1(13) <= \data_RRFB1[13]~output_o\;

ww_data_RRFB1(14) <= \data_RRFB1[14]~output_o\;

ww_data_RRFB1(15) <= \data_RRFB1[15]~output_o\;

ww_data_RRFA2(0) <= \data_RRFA2[0]~output_o\;

ww_data_RRFA2(1) <= \data_RRFA2[1]~output_o\;

ww_data_RRFA2(2) <= \data_RRFA2[2]~output_o\;

ww_data_RRFA2(3) <= \data_RRFA2[3]~output_o\;

ww_data_RRFA2(4) <= \data_RRFA2[4]~output_o\;

ww_data_RRFA2(5) <= \data_RRFA2[5]~output_o\;

ww_data_RRFA2(6) <= \data_RRFA2[6]~output_o\;

ww_data_RRFA2(7) <= \data_RRFA2[7]~output_o\;

ww_data_RRFA2(8) <= \data_RRFA2[8]~output_o\;

ww_data_RRFA2(9) <= \data_RRFA2[9]~output_o\;

ww_data_RRFA2(10) <= \data_RRFA2[10]~output_o\;

ww_data_RRFA2(11) <= \data_RRFA2[11]~output_o\;

ww_data_RRFA2(12) <= \data_RRFA2[12]~output_o\;

ww_data_RRFA2(13) <= \data_RRFA2[13]~output_o\;

ww_data_RRFA2(14) <= \data_RRFA2[14]~output_o\;

ww_data_RRFA2(15) <= \data_RRFA2[15]~output_o\;

ww_data_RRFB2(0) <= \data_RRFB2[0]~output_o\;

ww_data_RRFB2(1) <= \data_RRFB2[1]~output_o\;

ww_data_RRFB2(2) <= \data_RRFB2[2]~output_o\;

ww_data_RRFB2(3) <= \data_RRFB2[3]~output_o\;

ww_data_RRFB2(4) <= \data_RRFB2[4]~output_o\;

ww_data_RRFB2(5) <= \data_RRFB2[5]~output_o\;

ww_data_RRFB2(6) <= \data_RRFB2[6]~output_o\;

ww_data_RRFB2(7) <= \data_RRFB2[7]~output_o\;

ww_data_RRFB2(8) <= \data_RRFB2[8]~output_o\;

ww_data_RRFB2(9) <= \data_RRFB2[9]~output_o\;

ww_data_RRFB2(10) <= \data_RRFB2[10]~output_o\;

ww_data_RRFB2(11) <= \data_RRFB2[11]~output_o\;

ww_data_RRFB2(12) <= \data_RRFB2[12]~output_o\;

ww_data_RRFB2(13) <= \data_RRFB2[13]~output_o\;

ww_data_RRFB2(14) <= \data_RRFB2[14]~output_o\;

ww_data_RRFB2(15) <= \data_RRFB2[15]~output_o\;

ww_data_RRF(0) <= \data_RRF[0]~output_o\;

ww_data_RRF(1) <= \data_RRF[1]~output_o\;

ww_data_RRF(2) <= \data_RRF[2]~output_o\;

ww_data_RRF(3) <= \data_RRF[3]~output_o\;

ww_data_RRF(4) <= \data_RRF[4]~output_o\;

ww_data_RRF(5) <= \data_RRF[5]~output_o\;

ww_data_RRF(6) <= \data_RRF[6]~output_o\;

ww_data_RRF(7) <= \data_RRF[7]~output_o\;

ww_data_RRF(8) <= \data_RRF[8]~output_o\;

ww_data_RRF(9) <= \data_RRF[9]~output_o\;

ww_data_RRF(10) <= \data_RRF[10]~output_o\;

ww_data_RRF(11) <= \data_RRF[11]~output_o\;

ww_data_RRF(12) <= \data_RRF[12]~output_o\;

ww_data_RRF(13) <= \data_RRF[13]~output_o\;

ww_data_RRF(14) <= \data_RRF[14]~output_o\;

ww_data_RRF(15) <= \data_RRF[15]~output_o\;
END structure;


