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

-- DATE "05/01/2015 01:02:23"

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

ENTITY 	InstrMem IS
    PORT (
	clock : IN std_logic;
	write : IN std_logic;
	read : IN std_logic;
	address : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out_1 : OUT std_logic_vector(15 DOWNTO 0);
	data_out_2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END InstrMem;

-- Design Ports Information
-- data_out_1[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_2[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF InstrMem IS
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
SIGNAL ww_write : std_logic;
SIGNAL ww_read : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out_1[0]~output_o\ : std_logic;
SIGNAL \data_out_1[1]~output_o\ : std_logic;
SIGNAL \data_out_1[2]~output_o\ : std_logic;
SIGNAL \data_out_1[3]~output_o\ : std_logic;
SIGNAL \data_out_1[4]~output_o\ : std_logic;
SIGNAL \data_out_1[5]~output_o\ : std_logic;
SIGNAL \data_out_1[6]~output_o\ : std_logic;
SIGNAL \data_out_1[7]~output_o\ : std_logic;
SIGNAL \data_out_1[8]~output_o\ : std_logic;
SIGNAL \data_out_1[9]~output_o\ : std_logic;
SIGNAL \data_out_1[10]~output_o\ : std_logic;
SIGNAL \data_out_1[11]~output_o\ : std_logic;
SIGNAL \data_out_1[12]~output_o\ : std_logic;
SIGNAL \data_out_1[13]~output_o\ : std_logic;
SIGNAL \data_out_1[14]~output_o\ : std_logic;
SIGNAL \data_out_1[15]~output_o\ : std_logic;
SIGNAL \data_out_2[0]~output_o\ : std_logic;
SIGNAL \data_out_2[1]~output_o\ : std_logic;
SIGNAL \data_out_2[2]~output_o\ : std_logic;
SIGNAL \data_out_2[3]~output_o\ : std_logic;
SIGNAL \data_out_2[4]~output_o\ : std_logic;
SIGNAL \data_out_2[5]~output_o\ : std_logic;
SIGNAL \data_out_2[6]~output_o\ : std_logic;
SIGNAL \data_out_2[7]~output_o\ : std_logic;
SIGNAL \data_out_2[8]~output_o\ : std_logic;
SIGNAL \data_out_2[9]~output_o\ : std_logic;
SIGNAL \data_out_2[10]~output_o\ : std_logic;
SIGNAL \data_out_2[11]~output_o\ : std_logic;
SIGNAL \data_out_2[12]~output_o\ : std_logic;
SIGNAL \data_out_2[13]~output_o\ : std_logic;
SIGNAL \data_out_2[14]~output_o\ : std_logic;
SIGNAL \data_out_2[15]~output_o\ : std_logic;
SIGNAL \write~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \address[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \read~input_o\ : std_logic;
SIGNAL \data_out_1[0]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \data_out_1[1]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[1]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \data_out_1[2]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \data_out_1[3]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[3]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \data_out_1[4]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \data_out_1[5]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[5]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \data_out_1[6]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[6]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \data_out_1[7]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \data_out_1[8]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[8]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \data_out_1[9]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[9]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \data_out_1[10]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[10]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \data_out_1[11]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \data_out_1[12]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[12]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \data_out_1[13]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \data_out_1[14]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \data_out_1[15]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_1[15]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[0]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[0]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[1]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[2]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[3]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[3]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[4]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[5]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[6]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[6]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[7]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[7]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[8]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[8]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[9]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[10]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[11]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[12]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[13]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[14]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[14]~en_q\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \data_out_2[15]~enfeeder_combout\ : std_logic;
SIGNAL \data_out_2[15]~en_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_write <= write;
ww_read <= read;
ww_address <= address;
ww_data_in <= data_in;
data_out_1 <= ww_data_out_1;
data_out_2 <= ww_data_out_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \data_in[15]~input_o\ & \data_in[14]~input_o\ & \data_in[13]~input_o\ & \data_in[12]~input_o\ & \data_in[11]~input_o\ & \data_in[10]~input_o\ & \data_in[9]~input_o\ & 
\data_in[8]~input_o\ & \data_in[7]~input_o\ & \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\ & \data_in[3]~input_o\ & \data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Add0~12_combout\ & \Add0~10_combout\ & \Add0~8_combout\ & \Add0~6_combout\ & \Add0~4_combout\ & \Add0~2_combout\ & \Add0~0_combout\ & \address[0]~_wirecell_combout\);

\mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_rtl_0|auto_generated|ram_block1a1\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_rtl_0|auto_generated|ram_block1a2\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_rtl_0|auto_generated|ram_block1a3\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_rtl_0|auto_generated|ram_block1a4\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_rtl_0|auto_generated|ram_block1a5\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_rtl_0|auto_generated|ram_block1a6\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_rtl_0|auto_generated|ram_block1a7\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_rtl_0|auto_generated|ram_block1a8\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem_rtl_0|auto_generated|ram_block1a9\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem_rtl_0|auto_generated|ram_block1a10\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem_rtl_0|auto_generated|ram_block1a11\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem_rtl_0|auto_generated|ram_block1a12\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem_rtl_0|auto_generated|ram_block1a13\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem_rtl_0|auto_generated|ram_block1a14\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem_rtl_0|auto_generated|ram_block1a15\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X53_Y30_N2
\data_out_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	oe => \data_out_1[0]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[0]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\data_out_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a1\,
	oe => \data_out_1[1]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[1]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\data_out_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a2\,
	oe => \data_out_1[2]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\data_out_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a3\,
	oe => \data_out_1[3]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[3]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\data_out_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a4\,
	oe => \data_out_1[4]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\data_out_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a5\,
	oe => \data_out_1[5]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\data_out_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a6\,
	oe => \data_out_1[6]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[6]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\data_out_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a7\,
	oe => \data_out_1[7]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\data_out_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a8\,
	oe => \data_out_1[8]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[8]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\data_out_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a9\,
	oe => \data_out_1[9]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[9]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_out_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a10\,
	oe => \data_out_1[10]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[10]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\data_out_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a11\,
	oe => \data_out_1[11]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[11]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\data_out_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a12\,
	oe => \data_out_1[12]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[12]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\data_out_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a13\,
	oe => \data_out_1[13]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[13]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\data_out_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a14\,
	oe => \data_out_1[14]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[14]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a15\,
	oe => \data_out_1[15]~en_q\,
	devoe => ww_devoe,
	o => \data_out_1[15]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\data_out_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	oe => \data_out_2[0]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[0]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\data_out_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	oe => \data_out_2[1]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\data_out_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	oe => \data_out_2[2]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\data_out_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	oe => \data_out_2[3]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\data_out_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	oe => \data_out_2[4]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\data_out_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	oe => \data_out_2[5]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\data_out_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	oe => \data_out_2[6]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[6]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\data_out_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	oe => \data_out_2[7]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[7]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_out_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	oe => \data_out_2[8]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[8]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\data_out_2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	oe => \data_out_2[9]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[9]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\data_out_2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	oe => \data_out_2[10]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[10]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\data_out_2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	oe => \data_out_2[11]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[11]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\data_out_2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	oe => \data_out_2[12]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[12]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\data_out_2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	oe => \data_out_2[13]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\data_out_2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	oe => \data_out_2[14]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[14]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\data_out_2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	oe => \data_out_2[15]~en_q\,
	devoe => ww_devoe,
	o => \data_out_2[15]~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write,
	o => \write~input_o\);

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

-- Location: IOIBUF_X27_Y0_N1
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: LCCOMB_X34_Y17_N0
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

-- Location: LCCOMB_X32_Y18_N30
\address[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[0]~_wirecell_combout\ = !\address[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \address[0]~input_o\,
	combout => \address[0]~_wirecell_combout\);

-- Location: LCCOMB_X32_Y18_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ $ (VCC))) # (!\address[0]~input_o\ & (\address[1]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\address[0]~input_o\ & \address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y18_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\address[2]~input_o\ & (!\Add0~1\)) # (!\address[2]~input_o\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\address[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y18_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\address[3]~input_o\ & (\Add0~3\ $ (GND))) # (!\address[3]~input_o\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\address[3]~input_o\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X32_Y18_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\address[4]~input_o\ & (!\Add0~5\)) # (!\address[4]~input_o\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y18_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\address[5]~input_o\ & (\Add0~7\ $ (GND))) # (!\address[5]~input_o\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\address[5]~input_o\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[5]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y18_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\address[6]~input_o\ & (!\Add0~9\)) # (!\address[6]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\address[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[6]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y18_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\ $ (!\address[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \address[7]~input_o\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: IOIBUF_X53_Y11_N1
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\data_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\data_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\data_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\data_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: M9K_X33_Y18_N0
\mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_rtl_0|altsyncram_cgu1:auto_generated|ALTSYNCRAM",
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
	portawe => \write~input_o\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X47_Y34_N22
\read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read,
	o => \read~input_o\);

-- Location: FF_X52_Y30_N25
\data_out_1[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[0]~en_q\);

-- Location: LCCOMB_X39_Y33_N0
\data_out_1[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[1]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[1]~enfeeder_combout\);

-- Location: FF_X39_Y33_N1
\data_out_1[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[1]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[1]~en_q\);

-- Location: FF_X52_Y30_N3
\data_out_1[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[2]~en_q\);

-- Location: LCCOMB_X39_Y33_N18
\data_out_1[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[3]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[3]~enfeeder_combout\);

-- Location: FF_X39_Y33_N19
\data_out_1[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[3]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[3]~en_q\);

-- Location: FF_X52_Y30_N29
\data_out_1[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[4]~en_q\);

-- Location: LCCOMB_X39_Y33_N4
\data_out_1[5]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[5]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[5]~enfeeder_combout\);

-- Location: FF_X39_Y33_N5
\data_out_1[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[5]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[5]~en_q\);

-- Location: LCCOMB_X39_Y33_N30
\data_out_1[6]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[6]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[6]~enfeeder_combout\);

-- Location: FF_X39_Y33_N31
\data_out_1[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[6]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[6]~en_q\);

-- Location: FF_X52_Y30_N31
\data_out_1[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[7]~en_q\);

-- Location: LCCOMB_X39_Y33_N24
\data_out_1[8]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[8]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[8]~enfeeder_combout\);

-- Location: FF_X39_Y33_N25
\data_out_1[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[8]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[8]~en_q\);

-- Location: LCCOMB_X39_Y33_N2
\data_out_1[9]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[9]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[9]~enfeeder_combout\);

-- Location: FF_X39_Y33_N3
\data_out_1[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[9]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[9]~en_q\);

-- Location: LCCOMB_X39_Y33_N20
\data_out_1[10]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[10]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[10]~enfeeder_combout\);

-- Location: FF_X39_Y33_N21
\data_out_1[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[10]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[10]~en_q\);

-- Location: FF_X52_Y30_N17
\data_out_1[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[11]~en_q\);

-- Location: LCCOMB_X39_Y33_N22
\data_out_1[12]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[12]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[12]~enfeeder_combout\);

-- Location: FF_X39_Y33_N23
\data_out_1[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[12]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[12]~en_q\);

-- Location: FF_X52_Y30_N27
\data_out_1[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[13]~en_q\);

-- Location: FF_X52_Y30_N5
\data_out_1[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[14]~en_q\);

-- Location: LCCOMB_X39_Y33_N16
\data_out_1[15]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_1[15]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_1[15]~enfeeder_combout\);

-- Location: FF_X39_Y33_N17
\data_out_1[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_1[15]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[15]~en_q\);

-- Location: LCCOMB_X39_Y33_N26
\data_out_2[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[0]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[0]~enfeeder_combout\);

-- Location: FF_X39_Y33_N27
\data_out_2[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[0]~en_q\);

-- Location: FF_X52_Y30_N23
\data_out_2[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[1]~en_q\);

-- Location: FF_X52_Y30_N1
\data_out_2[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[2]~en_q\);

-- Location: LCCOMB_X39_Y33_N28
\data_out_2[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[3]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[3]~enfeeder_combout\);

-- Location: FF_X39_Y33_N29
\data_out_2[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[3]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[3]~en_q\);

-- Location: FF_X52_Y30_N11
\data_out_2[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[4]~en_q\);

-- Location: FF_X52_Y30_N13
\data_out_2[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[5]~en_q\);

-- Location: LCCOMB_X39_Y33_N6
\data_out_2[6]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[6]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[6]~enfeeder_combout\);

-- Location: FF_X39_Y33_N7
\data_out_2[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[6]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[6]~en_q\);

-- Location: LCCOMB_X39_Y33_N8
\data_out_2[7]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[7]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[7]~enfeeder_combout\);

-- Location: FF_X39_Y33_N9
\data_out_2[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[7]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[7]~en_q\);

-- Location: LCCOMB_X39_Y33_N10
\data_out_2[8]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[8]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[8]~enfeeder_combout\);

-- Location: FF_X39_Y33_N11
\data_out_2[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[8]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[8]~en_q\);

-- Location: FF_X52_Y30_N15
\data_out_2[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[9]~en_q\);

-- Location: FF_X52_Y30_N9
\data_out_2[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[10]~en_q\);

-- Location: FF_X52_Y30_N19
\data_out_2[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[11]~en_q\);

-- Location: FF_X52_Y30_N21
\data_out_2[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[12]~en_q\);

-- Location: FF_X52_Y30_N7
\data_out_2[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \read~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[13]~en_q\);

-- Location: LCCOMB_X39_Y33_N12
\data_out_2[14]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[14]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[14]~enfeeder_combout\);

-- Location: FF_X39_Y33_N13
\data_out_2[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[14]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[14]~en_q\);

-- Location: LCCOMB_X39_Y33_N14
\data_out_2[15]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_2[15]~enfeeder_combout\ = \read~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \read~input_o\,
	combout => \data_out_2[15]~enfeeder_combout\);

-- Location: FF_X39_Y33_N15
\data_out_2[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_2[15]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_2[15]~en_q\);

ww_data_out_1(0) <= \data_out_1[0]~output_o\;

ww_data_out_1(1) <= \data_out_1[1]~output_o\;

ww_data_out_1(2) <= \data_out_1[2]~output_o\;

ww_data_out_1(3) <= \data_out_1[3]~output_o\;

ww_data_out_1(4) <= \data_out_1[4]~output_o\;

ww_data_out_1(5) <= \data_out_1[5]~output_o\;

ww_data_out_1(6) <= \data_out_1[6]~output_o\;

ww_data_out_1(7) <= \data_out_1[7]~output_o\;

ww_data_out_1(8) <= \data_out_1[8]~output_o\;

ww_data_out_1(9) <= \data_out_1[9]~output_o\;

ww_data_out_1(10) <= \data_out_1[10]~output_o\;

ww_data_out_1(11) <= \data_out_1[11]~output_o\;

ww_data_out_1(12) <= \data_out_1[12]~output_o\;

ww_data_out_1(13) <= \data_out_1[13]~output_o\;

ww_data_out_1(14) <= \data_out_1[14]~output_o\;

ww_data_out_1(15) <= \data_out_1[15]~output_o\;

ww_data_out_2(0) <= \data_out_2[0]~output_o\;

ww_data_out_2(1) <= \data_out_2[1]~output_o\;

ww_data_out_2(2) <= \data_out_2[2]~output_o\;

ww_data_out_2(3) <= \data_out_2[3]~output_o\;

ww_data_out_2(4) <= \data_out_2[4]~output_o\;

ww_data_out_2(5) <= \data_out_2[5]~output_o\;

ww_data_out_2(6) <= \data_out_2[6]~output_o\;

ww_data_out_2(7) <= \data_out_2[7]~output_o\;

ww_data_out_2(8) <= \data_out_2[8]~output_o\;

ww_data_out_2(9) <= \data_out_2[9]~output_o\;

ww_data_out_2(10) <= \data_out_2[10]~output_o\;

ww_data_out_2(11) <= \data_out_2[11]~output_o\;

ww_data_out_2(12) <= \data_out_2[12]~output_o\;

ww_data_out_2(13) <= \data_out_2[13]~output_o\;

ww_data_out_2(14) <= \data_out_2[14]~output_o\;

ww_data_out_2(15) <= \data_out_2[15]~output_o\;
END structure;


