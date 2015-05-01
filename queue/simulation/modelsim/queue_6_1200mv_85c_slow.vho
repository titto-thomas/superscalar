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

-- DATE "05/01/2015 16:33:36"

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

ENTITY 	queue IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	rd_en : IN std_logic;
	wr_en : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	empty : BUFFER std_logic;
	full : BUFFER std_logic;
	w_err : BUFFER std_logic;
	r_err : BUFFER std_logic
	);
END queue;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- full	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_err	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_err	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_en	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF queue IS
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
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rd_en : std_logic;
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_w_err : std_logic;
SIGNAL ww_r_err : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \full~output_o\ : std_logic;
SIGNAL \w_err~output_o\ : std_logic;
SIGNAL \r_err~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~96_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \READ_POINTER~0_combout\ : std_logic;
SIGNAL \rd_en~input_o\ : std_logic;
SIGNAL \READ_POINTER~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \memory~0_combout\ : std_logic;
SIGNAL \memory[1][0]~feeder_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \wr_en~input_o\ : std_logic;
SIGNAL \WRITE_POINTER~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \COUNTER~1_combout\ : std_logic;
SIGNAL \count[13]~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add3~95_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add3~19_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add3~24\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Add3~31_combout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~37_combout\ : std_logic;
SIGNAL \Add3~36\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41_combout\ : std_logic;
SIGNAL \Add3~43_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47_combout\ : std_logic;
SIGNAL \Add3~49_combout\ : std_logic;
SIGNAL \Add3~48\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53_combout\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~60\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add3~64_combout\ : std_logic;
SIGNAL \Add3~63\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Add3~67_combout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~68_combout\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~69\ : std_logic;
SIGNAL \Add3~71_combout\ : std_logic;
SIGNAL \Add3~73_combout\ : std_logic;
SIGNAL \Add3~72\ : std_logic;
SIGNAL \Add3~74_combout\ : std_logic;
SIGNAL \Add3~76_combout\ : std_logic;
SIGNAL \Add3~75\ : std_logic;
SIGNAL \Add3~77_combout\ : std_logic;
SIGNAL \Add3~79_combout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~82_combout\ : std_logic;
SIGNAL \Add3~81\ : std_logic;
SIGNAL \Add3~83_combout\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add3~84\ : std_logic;
SIGNAL \Add3~86_combout\ : std_logic;
SIGNAL \Add3~93_combout\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~88_combout\ : std_logic;
SIGNAL \Add3~94_combout\ : std_logic;
SIGNAL \Add3~89\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~92_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \COUNTER~0_combout\ : std_logic;
SIGNAL \Add3~59_combout\ : std_logic;
SIGNAL \Add3~61_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \memory[5][7]~1_combout\ : std_logic;
SIGNAL \memory[1][7]~9_combout\ : std_logic;
SIGNAL \memory[1][0]~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \memory[0][2]~10_combout\ : std_logic;
SIGNAL \memory[0][0]~q\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \memory[3][5]~11_combout\ : std_logic;
SIGNAL \memory[3][0]~q\ : std_logic;
SIGNAL \memory[6][6]~3_combout\ : std_logic;
SIGNAL \memory[2][7]~8_combout\ : std_logic;
SIGNAL \memory[2][0]~q\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \memory[4][2]~5_combout\ : std_logic;
SIGNAL \memory[4][2]~6_combout\ : std_logic;
SIGNAL \memory[4][0]~q\ : std_logic;
SIGNAL \memory[6][0]~feeder_combout\ : std_logic;
SIGNAL \memory[6][6]~4_combout\ : std_logic;
SIGNAL \memory[6][0]~q\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \memory[7][6]~7_combout\ : std_logic;
SIGNAL \memory[7][0]~q\ : std_logic;
SIGNAL \memory[5][0]~feeder_combout\ : std_logic;
SIGNAL \memory[5][7]~2_combout\ : std_logic;
SIGNAL \memory[5][0]~q\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \data_out[7]~5_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \memory~12_combout\ : std_logic;
SIGNAL \memory[4][1]~q\ : std_logic;
SIGNAL \memory[6][1]~feeder_combout\ : std_logic;
SIGNAL \memory[6][1]~q\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \memory[7][1]~q\ : std_logic;
SIGNAL \memory[5][1]~feeder_combout\ : std_logic;
SIGNAL \memory[5][1]~q\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \memory[3][1]~q\ : std_logic;
SIGNAL \memory[2][1]~q\ : std_logic;
SIGNAL \memory[1][1]~q\ : std_logic;
SIGNAL \memory[0][1]~q\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \data_out~9_combout\ : std_logic;
SIGNAL \data_out~10_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \memory~13_combout\ : std_logic;
SIGNAL \memory[3][2]~q\ : std_logic;
SIGNAL \memory[2][2]~q\ : std_logic;
SIGNAL \memory[0][2]~q\ : std_logic;
SIGNAL \memory[1][2]~q\ : std_logic;
SIGNAL \data_out~13_combout\ : std_logic;
SIGNAL \data_out~14_combout\ : std_logic;
SIGNAL \memory[5][2]~feeder_combout\ : std_logic;
SIGNAL \memory[5][2]~q\ : std_logic;
SIGNAL \memory[7][2]~q\ : std_logic;
SIGNAL \memory[6][2]~q\ : std_logic;
SIGNAL \memory[4][2]~q\ : std_logic;
SIGNAL \data_out~11_combout\ : std_logic;
SIGNAL \data_out~12_combout\ : std_logic;
SIGNAL \data_out~15_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \memory~14_combout\ : std_logic;
SIGNAL \memory[0][3]~q\ : std_logic;
SIGNAL \memory[1][3]~q\ : std_logic;
SIGNAL \data_out~18_combout\ : std_logic;
SIGNAL \memory[2][3]~q\ : std_logic;
SIGNAL \memory[3][3]~q\ : std_logic;
SIGNAL \data_out~19_combout\ : std_logic;
SIGNAL \memory[6][3]~feeder_combout\ : std_logic;
SIGNAL \memory[6][3]~q\ : std_logic;
SIGNAL \memory[4][3]~q\ : std_logic;
SIGNAL \data_out~16_combout\ : std_logic;
SIGNAL \memory[7][3]~q\ : std_logic;
SIGNAL \memory[5][3]~feeder_combout\ : std_logic;
SIGNAL \memory[5][3]~q\ : std_logic;
SIGNAL \data_out~17_combout\ : std_logic;
SIGNAL \data_out~20_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \memory~15_combout\ : std_logic;
SIGNAL \memory[1][4]~q\ : std_logic;
SIGNAL \memory[0][4]~q\ : std_logic;
SIGNAL \data_out~23_combout\ : std_logic;
SIGNAL \memory[2][4]~q\ : std_logic;
SIGNAL \memory[3][4]~q\ : std_logic;
SIGNAL \data_out~24_combout\ : std_logic;
SIGNAL \memory[4][4]~q\ : std_logic;
SIGNAL \memory[6][4]~feeder_combout\ : std_logic;
SIGNAL \memory[6][4]~q\ : std_logic;
SIGNAL \data_out~21_combout\ : std_logic;
SIGNAL \memory[5][4]~feeder_combout\ : std_logic;
SIGNAL \memory[5][4]~q\ : std_logic;
SIGNAL \memory[7][4]~q\ : std_logic;
SIGNAL \data_out~22_combout\ : std_logic;
SIGNAL \data_out~25_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \memory~16_combout\ : std_logic;
SIGNAL \memory[0][5]~q\ : std_logic;
SIGNAL \memory[1][5]~feeder_combout\ : std_logic;
SIGNAL \memory[1][5]~q\ : std_logic;
SIGNAL \data_out~28_combout\ : std_logic;
SIGNAL \memory[2][5]~q\ : std_logic;
SIGNAL \memory[3][5]~q\ : std_logic;
SIGNAL \data_out~29_combout\ : std_logic;
SIGNAL \memory[4][5]~q\ : std_logic;
SIGNAL \memory[6][5]~feeder_combout\ : std_logic;
SIGNAL \memory[6][5]~q\ : std_logic;
SIGNAL \data_out~26_combout\ : std_logic;
SIGNAL \memory[7][5]~q\ : std_logic;
SIGNAL \memory[5][5]~q\ : std_logic;
SIGNAL \data_out~27_combout\ : std_logic;
SIGNAL \data_out~30_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \memory~17_combout\ : std_logic;
SIGNAL \memory[3][6]~q\ : std_logic;
SIGNAL \memory[2][6]~q\ : std_logic;
SIGNAL \memory[1][6]~feeder_combout\ : std_logic;
SIGNAL \memory[1][6]~q\ : std_logic;
SIGNAL \memory[0][6]~q\ : std_logic;
SIGNAL \data_out~33_combout\ : std_logic;
SIGNAL \data_out~34_combout\ : std_logic;
SIGNAL \memory[5][6]~feeder_combout\ : std_logic;
SIGNAL \memory[5][6]~q\ : std_logic;
SIGNAL \memory[7][6]~q\ : std_logic;
SIGNAL \memory[4][6]~q\ : std_logic;
SIGNAL \memory[6][6]~feeder_combout\ : std_logic;
SIGNAL \memory[6][6]~q\ : std_logic;
SIGNAL \data_out~31_combout\ : std_logic;
SIGNAL \data_out~32_combout\ : std_logic;
SIGNAL \data_out~35_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \memory~18_combout\ : std_logic;
SIGNAL \memory[0][7]~q\ : std_logic;
SIGNAL \memory[1][7]~q\ : std_logic;
SIGNAL \data_out~38_combout\ : std_logic;
SIGNAL \memory[2][7]~q\ : std_logic;
SIGNAL \memory[3][7]~q\ : std_logic;
SIGNAL \data_out~39_combout\ : std_logic;
SIGNAL \memory[4][7]~q\ : std_logic;
SIGNAL \memory[6][7]~q\ : std_logic;
SIGNAL \data_out~36_combout\ : std_logic;
SIGNAL \memory[7][7]~q\ : std_logic;
SIGNAL \memory[5][7]~feeder_combout\ : std_logic;
SIGNAL \memory[5][7]~q\ : std_logic;
SIGNAL \data_out~37_combout\ : std_logic;
SIGNAL \data_out~40_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \WRITE_DATA~0_combout\ : std_logic;
SIGNAL \w_err~reg0_q\ : std_logic;
SIGNAL \READ_DATA~0_combout\ : std_logic;
SIGNAL \r_err~reg0_q\ : std_logic;
SIGNAL wr_ptr : std_logic_vector(31 DOWNTO 0);
SIGNAL rd_ptr : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_data_in <= data_in;
ww_rd_en <= rd_en;
ww_wr_en <= wr_en;
data_out <= ww_data_out;
empty <= ww_empty;
full <= ww_full;
w_err <= ww_w_err;
r_err <= ww_r_err;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X45_Y34_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\w_err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_err~reg0_q\,
	devoe => ww_devoe,
	o => \w_err~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\r_err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_err~reg0_q\,
	devoe => ww_devoe,
	o => \r_err~output_o\);

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

-- Location: LCCOMB_X11_Y10_N2
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (rd_ptr(1) & (!\Add1~2\)) # (!rd_ptr(1) & ((\Add1~2\) # (GND)))
-- \Add1~5\ = CARRY((!\Add1~2\) # (!rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(1),
	datad => VCC,
	cin => \Add1~2\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X11_Y10_N4
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (rd_ptr(2) & (\Add1~5\ $ (GND))) # (!rd_ptr(2) & (!\Add1~5\ & VCC))
-- \Add1~8\ = CARRY((rd_ptr(2) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(2),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: LCCOMB_X12_Y9_N30
\Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!rd_ptr(2) & (rd_ptr(0) & (!rd_ptr(1) & rd_ptr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(2),
	datab => rd_ptr(0),
	datac => rd_ptr(1),
	datad => rd_ptr(3),
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X11_Y10_N20
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (rd_ptr(10) & (\Add1~28\ $ (GND))) # (!rd_ptr(10) & (!\Add1~28\ & VCC))
-- \Add1~31\ = CARRY((rd_ptr(10) & !\Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X11_Y10_N22
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (rd_ptr(11) & (!\Add1~31\)) # (!rd_ptr(11) & ((\Add1~31\) # (GND)))
-- \Add1~34\ = CARRY((!\Add1~31\) # (!rd_ptr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X10_Y10_N16
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\Add1~33_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~33_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~35_combout\);

-- Location: FF_X10_Y10_N17
\rd_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(11));

-- Location: LCCOMB_X11_Y10_N24
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (rd_ptr(12) & (\Add1~34\ $ (GND))) # (!rd_ptr(12) & (!\Add1~34\ & VCC))
-- \Add1~37\ = CARRY((rd_ptr(12) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X10_Y9_N8
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~36_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~38_combout\);

-- Location: FF_X10_Y9_N9
\rd_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(12));

-- Location: LCCOMB_X11_Y10_N26
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (rd_ptr(13) & (!\Add1~37\)) # (!rd_ptr(13) & ((\Add1~37\) # (GND)))
-- \Add1~40\ = CARRY((!\Add1~37\) # (!rd_ptr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X10_Y9_N10
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\Add1~39_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X10_Y9_N11
\rd_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(13));

-- Location: LCCOMB_X11_Y10_N28
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (rd_ptr(14) & (\Add1~40\ $ (GND))) # (!rd_ptr(14) & (!\Add1~40\ & VCC))
-- \Add1~43\ = CARRY((rd_ptr(14) & !\Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X10_Y9_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Add1~0_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Add1~42_combout\,
	combout => \Add1~44_combout\);

-- Location: FF_X10_Y9_N13
\rd_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(14));

-- Location: LCCOMB_X11_Y10_N30
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (rd_ptr(15) & (!\Add1~43\)) # (!rd_ptr(15) & ((\Add1~43\) # (GND)))
-- \Add1~46\ = CARRY((!\Add1~43\) # (!rd_ptr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(15),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X10_Y9_N14
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~0_combout\ & \Add1~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Add1~45_combout\,
	combout => \Add1~47_combout\);

-- Location: FF_X10_Y9_N15
\rd_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(15));

-- Location: LCCOMB_X11_Y9_N0
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (rd_ptr(16) & (\Add1~46\ $ (GND))) # (!rd_ptr(16) & (!\Add1~46\ & VCC))
-- \Add1~49\ = CARRY((rd_ptr(16) & !\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(16),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X10_Y10_N12
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add1~48_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~48_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~50_combout\);

-- Location: FF_X10_Y10_N13
\rd_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(16));

-- Location: LCCOMB_X11_Y9_N2
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (rd_ptr(17) & (!\Add1~49\)) # (!rd_ptr(17) & ((\Add1~49\) # (GND)))
-- \Add1~52\ = CARRY((!\Add1~49\) # (!rd_ptr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(17),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X10_Y10_N30
\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (\Add1~51_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~51_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~53_combout\);

-- Location: FF_X10_Y10_N31
\rd_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(17));

-- Location: LCCOMB_X11_Y9_N4
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (rd_ptr(18) & (\Add1~52\ $ (GND))) # (!rd_ptr(18) & (!\Add1~52\ & VCC))
-- \Add1~55\ = CARRY((rd_ptr(18) & !\Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(18),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X10_Y10_N8
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\Add1~54_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~54_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~56_combout\);

-- Location: FF_X10_Y10_N9
\rd_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(18));

-- Location: LCCOMB_X11_Y9_N6
\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (rd_ptr(19) & (!\Add1~55\)) # (!rd_ptr(19) & ((\Add1~55\) # (GND)))
-- \Add1~58\ = CARRY((!\Add1~55\) # (!rd_ptr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(19),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X10_Y10_N26
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (\Add1~57_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~57_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~59_combout\);

-- Location: FF_X10_Y10_N27
\rd_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(19));

-- Location: LCCOMB_X11_Y9_N8
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (rd_ptr(20) & (\Add1~58\ $ (GND))) # (!rd_ptr(20) & (!\Add1~58\ & VCC))
-- \Add1~61\ = CARRY((rd_ptr(20) & !\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(20),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X12_Y9_N6
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\Add1~60_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~62_combout\);

-- Location: FF_X12_Y9_N7
\rd_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(20));

-- Location: LCCOMB_X11_Y9_N10
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (rd_ptr(21) & (!\Add1~61\)) # (!rd_ptr(21) & ((\Add1~61\) # (GND)))
-- \Add1~64\ = CARRY((!\Add1~61\) # (!rd_ptr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(21),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X12_Y9_N8
\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\Add1~63_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~63_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~65_combout\);

-- Location: FF_X12_Y9_N9
\rd_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(21));

-- Location: LCCOMB_X11_Y9_N12
\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (rd_ptr(22) & (\Add1~64\ $ (GND))) # (!rd_ptr(22) & (!\Add1~64\ & VCC))
-- \Add1~67\ = CARRY((rd_ptr(22) & !\Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(22),
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X12_Y9_N10
\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~66_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~66_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~68_combout\);

-- Location: FF_X12_Y9_N11
\rd_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(22));

-- Location: LCCOMB_X11_Y9_N14
\Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (rd_ptr(23) & (!\Add1~67\)) # (!rd_ptr(23) & ((\Add1~67\) # (GND)))
-- \Add1~70\ = CARRY((!\Add1~67\) # (!rd_ptr(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(23),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~69_combout\,
	cout => \Add1~70\);

-- Location: LCCOMB_X12_Y9_N28
\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Add1~69_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~69_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~71_combout\);

-- Location: FF_X12_Y9_N29
\rd_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(23));

-- Location: LCCOMB_X11_Y9_N16
\Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (rd_ptr(24) & (\Add1~70\ $ (GND))) # (!rd_ptr(24) & (!\Add1~70\ & VCC))
-- \Add1~73\ = CARRY((rd_ptr(24) & !\Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(24),
	datad => VCC,
	cin => \Add1~70\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X10_Y9_N2
\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Add1~72_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~72_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~74_combout\);

-- Location: FF_X10_Y9_N3
\rd_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(24));

-- Location: LCCOMB_X11_Y9_N18
\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (rd_ptr(25) & (!\Add1~73\)) # (!rd_ptr(25) & ((\Add1~73\) # (GND)))
-- \Add1~76\ = CARRY((!\Add1~73\) # (!rd_ptr(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(25),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: LCCOMB_X10_Y9_N28
\Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\Add1~75_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~75_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~77_combout\);

-- Location: FF_X10_Y9_N29
\rd_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(25));

-- Location: LCCOMB_X11_Y9_N20
\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (rd_ptr(26) & (\Add1~76\ $ (GND))) # (!rd_ptr(26) & (!\Add1~76\ & VCC))
-- \Add1~79\ = CARRY((rd_ptr(26) & !\Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(26),
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X10_Y9_N30
\Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\Add1~0_combout\ & \Add1~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Add1~78_combout\,
	combout => \Add1~80_combout\);

-- Location: FF_X10_Y9_N31
\rd_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(26));

-- Location: LCCOMB_X11_Y9_N22
\Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (rd_ptr(27) & (!\Add1~79\)) # (!rd_ptr(27) & ((\Add1~79\) # (GND)))
-- \Add1~82\ = CARRY((!\Add1~79\) # (!rd_ptr(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(27),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~81_combout\,
	cout => \Add1~82\);

-- Location: LCCOMB_X10_Y9_N16
\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (\Add1~81_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~81_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~83_combout\);

-- Location: FF_X10_Y9_N17
\rd_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(27));

-- Location: LCCOMB_X11_Y9_N24
\Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (rd_ptr(28) & (\Add1~82\ $ (GND))) # (!rd_ptr(28) & (!\Add1~82\ & VCC))
-- \Add1~85\ = CARRY((rd_ptr(28) & !\Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(28),
	datad => VCC,
	cin => \Add1~82\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X10_Y9_N20
\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\Add1~0_combout\ & \Add1~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Add1~84_combout\,
	combout => \Add1~86_combout\);

-- Location: FF_X10_Y9_N21
\rd_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(28));

-- Location: LCCOMB_X11_Y9_N26
\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (rd_ptr(29) & (!\Add1~85\)) # (!rd_ptr(29) & ((\Add1~85\) # (GND)))
-- \Add1~88\ = CARRY((!\Add1~85\) # (!rd_ptr(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(29),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~87_combout\,
	cout => \Add1~88\);

-- Location: LCCOMB_X10_Y9_N22
\Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (\Add1~87_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~87_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~89_combout\);

-- Location: FF_X10_Y9_N23
\rd_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(29));

-- Location: LCCOMB_X11_Y9_N28
\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (rd_ptr(30) & (\Add1~88\ $ (GND))) # (!rd_ptr(30) & (!\Add1~88\ & VCC))
-- \Add1~91\ = CARRY((rd_ptr(30) & !\Add1~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(30),
	datad => VCC,
	cin => \Add1~88\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: LCCOMB_X10_Y9_N24
\Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (\Add1~90_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~90_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~92_combout\);

-- Location: FF_X10_Y9_N25
\rd_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(30));

-- Location: LCCOMB_X10_Y9_N26
\Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!rd_ptr(30) & (!rd_ptr(29) & !rd_ptr(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(30),
	datac => rd_ptr(29),
	datad => rd_ptr(28),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X10_Y9_N18
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!rd_ptr(27) & (!rd_ptr(25) & (!rd_ptr(26) & !rd_ptr(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(27),
	datab => rd_ptr(25),
	datac => rd_ptr(26),
	datad => rd_ptr(24),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X12_Y9_N22
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!rd_ptr(20) & (!rd_ptr(23) & (!rd_ptr(21) & !rd_ptr(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(20),
	datab => rd_ptr(23),
	datac => rd_ptr(21),
	datad => rd_ptr(22),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X12_Y9_N16
\Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (\Equal3~7_combout\ & (\Equal3~6_combout\ & (\Equal3~5_combout\ & \Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~6_combout\,
	datac => \Equal3~5_combout\,
	datad => \Equal3~4_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X11_Y9_N30
\Add1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = \Add1~91\ $ (!rd_ptr(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rd_ptr(31),
	cin => \Add1~91\,
	combout => \Add1~93_combout\);

-- Location: LCCOMB_X12_Y9_N26
\Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (!\Add1~0_combout\) # (!\Add1~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~93_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~95_combout\);

-- Location: FF_X12_Y9_N27
\rd_ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(31));

-- Location: IOIBUF_X53_Y17_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X12_Y9_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\rst~input_o\ & (((!rd_ptr(31)) # (!\Equal3~8_combout\)) # (!\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal3~8_combout\,
	datac => rd_ptr(31),
	datad => \rst~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\Add1~7_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~7_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~9_combout\);

-- Location: FF_X12_Y9_N13
\rd_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(2));

-- Location: LCCOMB_X11_Y10_N6
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (rd_ptr(3) & (!\Add1~8\)) # (!rd_ptr(3) & ((\Add1~8\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~8\) # (!rd_ptr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(3),
	datad => VCC,
	cin => \Add1~8\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X12_Y9_N20
\Add1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~96_combout\ = (\Add1~10_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~96_combout\);

-- Location: FF_X12_Y9_N21
\rd_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(3));

-- Location: LCCOMB_X11_Y10_N8
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (rd_ptr(4) & (\Add1~11\ $ (GND))) # (!rd_ptr(4) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((rd_ptr(4) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(4),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X10_Y10_N0
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~12_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X10_Y10_N1
\rd_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(4));

-- Location: LCCOMB_X11_Y10_N10
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (rd_ptr(5) & (!\Add1~13\)) # (!rd_ptr(5) & ((\Add1~13\) # (GND)))
-- \Add1~16\ = CARRY((!\Add1~13\) # (!rd_ptr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X10_Y10_N2
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\Add1~15_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~15_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X10_Y10_N3
\rd_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(5));

-- Location: LCCOMB_X11_Y10_N12
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (rd_ptr(6) & (\Add1~16\ $ (GND))) # (!rd_ptr(6) & (!\Add1~16\ & VCC))
-- \Add1~19\ = CARRY((rd_ptr(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X10_Y10_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~18_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X10_Y10_N21
\rd_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(6));

-- Location: LCCOMB_X11_Y10_N14
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (rd_ptr(7) & (!\Add1~19\)) # (!rd_ptr(7) & ((\Add1~19\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~19\) # (!rd_ptr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X10_Y10_N14
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~21_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~21_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X10_Y10_N15
\rd_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(7));

-- Location: LCCOMB_X11_Y10_N16
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (rd_ptr(8) & (\Add1~22\ $ (GND))) # (!rd_ptr(8) & (!\Add1~22\ & VCC))
-- \Add1~25\ = CARRY((rd_ptr(8) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X10_Y10_N18
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~24_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X10_Y10_N19
\rd_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(8));

-- Location: LCCOMB_X11_Y10_N18
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (rd_ptr(9) & (!\Add1~25\)) # (!rd_ptr(9) & ((\Add1~25\) # (GND)))
-- \Add1~28\ = CARRY((!\Add1~25\) # (!rd_ptr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X10_Y10_N4
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~27_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X10_Y10_N5
\rd_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(9));

-- Location: LCCOMB_X10_Y10_N6
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add1~30_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~30_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~32_combout\);

-- Location: FF_X10_Y10_N7
\rd_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(10));

-- Location: LCCOMB_X10_Y10_N10
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!rd_ptr(10) & (!rd_ptr(8) & (!rd_ptr(9) & !rd_ptr(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(10),
	datab => rd_ptr(8),
	datac => rd_ptr(9),
	datad => rd_ptr(11),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X10_Y10_N28
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!rd_ptr(19) & (!rd_ptr(18) & (!rd_ptr(17) & !rd_ptr(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(19),
	datab => rd_ptr(18),
	datac => rd_ptr(17),
	datad => rd_ptr(16),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X10_Y9_N0
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!rd_ptr(13) & (!rd_ptr(12) & (!rd_ptr(15) & !rd_ptr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(13),
	datab => rd_ptr(12),
	datac => rd_ptr(15),
	datad => rd_ptr(14),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X10_Y10_N24
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!rd_ptr(6) & (!rd_ptr(4) & (!rd_ptr(7) & !rd_ptr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(6),
	datab => rd_ptr(4),
	datac => rd_ptr(7),
	datad => rd_ptr(5),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X10_Y10_N22
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~1_combout\ & (\Equal3~3_combout\ & (\Equal3~2_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X12_Y9_N18
\READ_POINTER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \READ_POINTER~0_combout\ = (\Equal3~7_combout\ & (\Equal3~6_combout\ & (\Equal3~5_combout\ & !rd_ptr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~6_combout\,
	datac => \Equal3~5_combout\,
	datad => rd_ptr(3),
	combout => \READ_POINTER~0_combout\);

-- Location: IOIBUF_X53_Y17_N1
\rd_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_en,
	o => \rd_en~input_o\);

-- Location: LCCOMB_X12_Y9_N4
\READ_POINTER~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \READ_POINTER~1_combout\ = (\rd_en~input_o\ & (((\Equal3~4_combout\ & \READ_POINTER~0_combout\)) # (!rd_ptr(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \READ_POINTER~0_combout\,
	datac => rd_ptr(31),
	datad => \rd_en~input_o\,
	combout => \READ_POINTER~1_combout\);

-- Location: LCCOMB_X11_Y10_N0
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (rd_ptr(0) & (\READ_POINTER~1_combout\ & VCC)) # (!rd_ptr(0) & (\READ_POINTER~1_combout\ $ (VCC)))
-- \Add1~2\ = CARRY((!rd_ptr(0) & \READ_POINTER~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \READ_POINTER~1_combout\,
	datad => VCC,
	combout => \Add1~1_combout\,
	cout => \Add1~2\);

-- Location: LCCOMB_X12_Y9_N24
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (!\Add1~0_combout\) # (!\Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X12_Y9_N25
\rd_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(0));

-- Location: LCCOMB_X12_Y9_N2
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~4_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~6_combout\);

-- Location: FF_X12_Y9_N3
\rd_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(1));

-- Location: IOIBUF_X45_Y34_N1
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X36_Y30_N24
\memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~0_combout\ = (\data_in[0]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~0_combout\);

-- Location: LCCOMB_X39_Y30_N26
\memory[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][0]~feeder_combout\ = \memory~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~0_combout\,
	combout => \memory[1][0]~feeder_combout\);

-- Location: LCCOMB_X29_Y28_N0
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (wr_ptr(0) & (\WRITE_POINTER~0_combout\ & VCC)) # (!wr_ptr(0) & (\WRITE_POINTER~0_combout\ $ (VCC)))
-- \Add0~2\ = CARRY((!wr_ptr(0) & \WRITE_POINTER~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(0),
	datab => \WRITE_POINTER~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X29_Y28_N2
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (wr_ptr(1) & (!\Add0~2\)) # (!wr_ptr(1) & ((\Add0~2\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~2\) # (!wr_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(1),
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X28_Y27_N0
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~3_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X28_Y27_N1
\wr_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(1));

-- Location: LCCOMB_X29_Y28_N4
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (wr_ptr(2) & (\Add0~4\ $ (GND))) # (!wr_ptr(2) & (!\Add0~4\ & VCC))
-- \Add0~8\ = CARRY((wr_ptr(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X28_Y27_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~7_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~9_combout\);

-- Location: FF_X28_Y27_N21
\wr_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(2));

-- Location: LCCOMB_X29_Y28_N6
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (wr_ptr(3) & (!\Add0~8\)) # (!wr_ptr(3) & ((\Add0~8\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~8\) # (!wr_ptr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(3),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X36_Y30_N16
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\Add0~10_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~96_combout\);

-- Location: FF_X36_Y30_N17
\wr_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(3));

-- Location: LCCOMB_X36_Y30_N18
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (!wr_ptr(2) & (!wr_ptr(1) & (wr_ptr(0) & wr_ptr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(2),
	datab => wr_ptr(1),
	datac => wr_ptr(0),
	datad => wr_ptr(3),
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X29_Y27_N28
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (wr_ptr(30) & (\Add0~88\ $ (GND))) # (!wr_ptr(30) & (!\Add0~88\ & VCC))
-- \Add0~91\ = CARRY((wr_ptr(30) & !\Add0~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(30),
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X29_Y27_N30
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \Add0~91\ $ (!wr_ptr(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => wr_ptr(31),
	cin => \Add0~91\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X36_Y30_N22
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (!\Add0~0_combout\) # (!\Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~93_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X36_Y30_N23
\wr_ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(31));

-- Location: LCCOMB_X36_Y30_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\rst~input_o\ & (((!wr_ptr(31)) # (!\Equal2~10_combout\)) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~10_combout\,
	datac => wr_ptr(31),
	datad => \rst~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X29_Y28_N8
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (wr_ptr(4) & (\Add0~11\ $ (GND))) # (!wr_ptr(4) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((wr_ptr(4) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(4),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X28_Y28_N0
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~0_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~12_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X28_Y28_N1
\wr_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(4));

-- Location: LCCOMB_X29_Y28_N10
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (wr_ptr(5) & (!\Add0~13\)) # (!wr_ptr(5) & ((\Add0~13\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~13\) # (!wr_ptr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X28_Y28_N18
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~0_combout\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X28_Y28_N19
\wr_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(5));

-- Location: LCCOMB_X29_Y28_N12
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (wr_ptr(6) & (\Add0~16\ $ (GND))) # (!wr_ptr(6) & (!\Add0~16\ & VCC))
-- \Add0~19\ = CARRY((wr_ptr(6) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(6),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X28_Y28_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~0_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~18_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X28_Y28_N5
\wr_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(6));

-- Location: LCCOMB_X29_Y28_N14
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (wr_ptr(7) & (!\Add0~19\)) # (!wr_ptr(7) & ((\Add0~19\) # (GND)))
-- \Add0~22\ = CARRY((!\Add0~19\) # (!wr_ptr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(7),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X28_Y28_N22
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~0_combout\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X28_Y28_N23
\wr_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(7));

-- Location: LCCOMB_X29_Y28_N16
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (wr_ptr(8) & (\Add0~22\ $ (GND))) # (!wr_ptr(8) & (!\Add0~22\ & VCC))
-- \Add0~25\ = CARRY((wr_ptr(8) & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(8),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X28_Y28_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~24_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datac => \Add0~0_combout\,
	combout => \Add0~26_combout\);

-- Location: FF_X28_Y28_N3
\wr_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(8));

-- Location: LCCOMB_X29_Y28_N18
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (wr_ptr(9) & (!\Add0~25\)) # (!wr_ptr(9) & ((\Add0~25\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~25\) # (!wr_ptr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(9),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X28_Y28_N12
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~27_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~0_combout\,
	combout => \Add0~29_combout\);

-- Location: FF_X28_Y28_N13
\wr_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(9));

-- Location: LCCOMB_X29_Y28_N20
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (wr_ptr(10) & (\Add0~28\ $ (GND))) # (!wr_ptr(10) & (!\Add0~28\ & VCC))
-- \Add0~31\ = CARRY((wr_ptr(10) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(10),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X28_Y28_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~0_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~30_combout\,
	combout => \Add0~32_combout\);

-- Location: FF_X28_Y28_N7
\wr_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(10));

-- Location: LCCOMB_X29_Y28_N22
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (wr_ptr(11) & (!\Add0~31\)) # (!wr_ptr(11) & ((\Add0~31\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~31\) # (!wr_ptr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(11),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X28_Y28_N8
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~33_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~33_combout\,
	datac => \Add0~0_combout\,
	combout => \Add0~35_combout\);

-- Location: FF_X28_Y28_N9
\wr_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(11));

-- Location: LCCOMB_X29_Y28_N24
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (wr_ptr(12) & (\Add0~34\ $ (GND))) # (!wr_ptr(12) & (!\Add0~34\ & VCC))
-- \Add0~37\ = CARRY((wr_ptr(12) & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(12),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X28_Y28_N20
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~36_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datac => \Add0~0_combout\,
	combout => \Add0~38_combout\);

-- Location: FF_X28_Y28_N21
\wr_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(12));

-- Location: LCCOMB_X29_Y28_N26
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (wr_ptr(13) & (!\Add0~37\)) # (!wr_ptr(13) & ((\Add0~37\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~37\) # (!wr_ptr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(13),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X28_Y28_N14
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~0_combout\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~41_combout\);

-- Location: FF_X28_Y28_N15
\wr_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(13));

-- Location: LCCOMB_X29_Y28_N28
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (wr_ptr(14) & (\Add0~40\ $ (GND))) # (!wr_ptr(14) & (!\Add0~40\ & VCC))
-- \Add0~43\ = CARRY((wr_ptr(14) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(14),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X28_Y28_N16
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~42_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datac => \Add0~0_combout\,
	combout => \Add0~44_combout\);

-- Location: FF_X28_Y28_N17
\wr_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(14));

-- Location: LCCOMB_X29_Y28_N30
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (wr_ptr(15) & (!\Add0~43\)) # (!wr_ptr(15) & ((\Add0~43\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~43\) # (!wr_ptr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(15),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X28_Y28_N10
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~0_combout\ & \Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~45_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X28_Y28_N11
\wr_ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(15));

-- Location: LCCOMB_X29_Y27_N0
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (wr_ptr(16) & (\Add0~46\ $ (GND))) # (!wr_ptr(16) & (!\Add0~46\ & VCC))
-- \Add0~49\ = CARRY((wr_ptr(16) & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(16),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X28_Y27_N6
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~48_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X28_Y27_N7
\wr_ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(16));

-- Location: LCCOMB_X29_Y27_N2
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (wr_ptr(17) & (!\Add0~49\)) # (!wr_ptr(17) & ((\Add0~49\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~49\) # (!wr_ptr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(17),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X28_Y27_N8
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~51_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~53_combout\);

-- Location: FF_X28_Y27_N9
\wr_ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(17));

-- Location: LCCOMB_X29_Y27_N4
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (wr_ptr(18) & (\Add0~52\ $ (GND))) # (!wr_ptr(18) & (!\Add0~52\ & VCC))
-- \Add0~55\ = CARRY((wr_ptr(18) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(18),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X28_Y27_N2
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~54_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~56_combout\);

-- Location: FF_X28_Y27_N3
\wr_ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(18));

-- Location: LCCOMB_X29_Y27_N6
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (wr_ptr(19) & (!\Add0~55\)) # (!wr_ptr(19) & ((\Add0~55\) # (GND)))
-- \Add0~58\ = CARRY((!\Add0~55\) # (!wr_ptr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(19),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X28_Y27_N12
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~57_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~59_combout\);

-- Location: FF_X28_Y27_N13
\wr_ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(19));

-- Location: LCCOMB_X29_Y27_N8
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (wr_ptr(20) & (\Add0~58\ $ (GND))) # (!wr_ptr(20) & (!\Add0~58\ & VCC))
-- \Add0~61\ = CARRY((wr_ptr(20) & !\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(20),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X30_Y27_N0
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\Add0~60_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~62_combout\);

-- Location: FF_X30_Y27_N1
\wr_ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(20));

-- Location: LCCOMB_X29_Y27_N10
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (wr_ptr(21) & (!\Add0~61\)) # (!wr_ptr(21) & ((\Add0~61\) # (GND)))
-- \Add0~64\ = CARRY((!\Add0~61\) # (!wr_ptr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(21),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X30_Y27_N2
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~63_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X30_Y27_N3
\wr_ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(21));

-- Location: LCCOMB_X29_Y27_N12
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (wr_ptr(22) & (\Add0~64\ $ (GND))) # (!wr_ptr(22) & (!\Add0~64\ & VCC))
-- \Add0~67\ = CARRY((wr_ptr(22) & !\Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(22),
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X30_Y27_N28
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~66_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X30_Y27_N29
\wr_ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(22));

-- Location: LCCOMB_X29_Y27_N14
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (wr_ptr(23) & (!\Add0~67\)) # (!wr_ptr(23) & ((\Add0~67\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~67\) # (!wr_ptr(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(23),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X30_Y27_N14
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~69_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X30_Y27_N15
\wr_ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(23));

-- Location: LCCOMB_X29_Y27_N16
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (wr_ptr(24) & (\Add0~70\ $ (GND))) # (!wr_ptr(24) & (!\Add0~70\ & VCC))
-- \Add0~73\ = CARRY((wr_ptr(24) & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(24),
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X30_Y27_N26
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~72_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~72_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X30_Y27_N27
\wr_ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(24));

-- Location: LCCOMB_X29_Y27_N18
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (wr_ptr(25) & (!\Add0~73\)) # (!wr_ptr(25) & ((\Add0~73\) # (GND)))
-- \Add0~76\ = CARRY((!\Add0~73\) # (!wr_ptr(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(25),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X30_Y27_N12
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~75_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~75_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X30_Y27_N13
\wr_ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(25));

-- Location: LCCOMB_X29_Y27_N20
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (wr_ptr(26) & (\Add0~76\ $ (GND))) # (!wr_ptr(26) & (!\Add0~76\ & VCC))
-- \Add0~79\ = CARRY((wr_ptr(26) & !\Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(26),
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X30_Y27_N22
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~78_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~78_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X30_Y27_N23
\wr_ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(26));

-- Location: LCCOMB_X29_Y27_N22
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (wr_ptr(27) & (!\Add0~79\)) # (!wr_ptr(27) & ((\Add0~79\) # (GND)))
-- \Add0~82\ = CARRY((!\Add0~79\) # (!wr_ptr(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(27),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X30_Y27_N8
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~81_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~81_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X30_Y27_N9
\wr_ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(27));

-- Location: LCCOMB_X29_Y27_N24
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (wr_ptr(28) & (\Add0~82\ $ (GND))) # (!wr_ptr(28) & (!\Add0~82\ & VCC))
-- \Add0~85\ = CARRY((wr_ptr(28) & !\Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(28),
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X30_Y27_N20
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~84_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~84_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X30_Y27_N21
\wr_ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(28));

-- Location: LCCOMB_X29_Y27_N26
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (wr_ptr(29) & (!\Add0~85\)) # (!wr_ptr(29) & ((\Add0~85\) # (GND)))
-- \Add0~88\ = CARRY((!\Add0~85\) # (!wr_ptr(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(29),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X30_Y27_N30
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~87_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~87_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X30_Y27_N31
\wr_ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(29));

-- Location: LCCOMB_X30_Y27_N16
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~90_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~90_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X30_Y27_N17
\wr_ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(30));

-- Location: LCCOMB_X30_Y27_N10
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!wr_ptr(30) & (!wr_ptr(29) & !wr_ptr(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(30),
	datac => wr_ptr(29),
	datad => wr_ptr(28),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X30_Y27_N18
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!wr_ptr(26) & (!wr_ptr(27) & (!wr_ptr(24) & !wr_ptr(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(26),
	datab => wr_ptr(27),
	datac => wr_ptr(24),
	datad => wr_ptr(25),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X28_Y28_N26
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!wr_ptr(10) & (!wr_ptr(8) & (!wr_ptr(11) & !wr_ptr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(10),
	datab => wr_ptr(8),
	datac => wr_ptr(11),
	datad => wr_ptr(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X28_Y28_N24
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!wr_ptr(7) & (!wr_ptr(4) & (!wr_ptr(6) & !wr_ptr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(7),
	datab => wr_ptr(4),
	datac => wr_ptr(6),
	datad => wr_ptr(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X28_Y27_N22
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!wr_ptr(19) & (!wr_ptr(18) & (!wr_ptr(17) & !wr_ptr(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(19),
	datab => wr_ptr(18),
	datac => wr_ptr(17),
	datad => wr_ptr(16),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X28_Y28_N28
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!wr_ptr(15) & (!wr_ptr(14) & (!wr_ptr(13) & !wr_ptr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(15),
	datab => wr_ptr(14),
	datac => wr_ptr(13),
	datad => wr_ptr(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X28_Y28_N30
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & (\Equal2~4_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X30_Y27_N24
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!wr_ptr(21) & (!wr_ptr(22) & (!wr_ptr(23) & !wr_ptr(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(21),
	datab => wr_ptr(22),
	datac => wr_ptr(23),
	datad => wr_ptr(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X30_Y27_N4
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~8_combout\ & (\Equal2~7_combout\ & (\Equal2~5_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~7_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~9_combout\);

-- Location: IOIBUF_X38_Y34_N15
\wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en,
	o => \wr_en~input_o\);

-- Location: LCCOMB_X36_Y30_N30
\WRITE_POINTER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WRITE_POINTER~0_combout\ = (\wr_en~input_o\ & (((\Equal2~9_combout\ & !wr_ptr(3))) # (!wr_ptr(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \wr_en~input_o\,
	datac => wr_ptr(31),
	datad => wr_ptr(3),
	combout => \WRITE_POINTER~0_combout\);

-- Location: LCCOMB_X28_Y27_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (!\Add0~0_combout\) # (!\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~6_combout\);

-- Location: FF_X28_Y27_N11
\wr_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(0));

-- Location: LCCOMB_X30_Y21_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = count(0) $ (GND)
-- \Add3~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X31_Y20_N24
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (!\Add3~0_combout\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~0_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X35_Y30_N4
\COUNTER~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER~1_combout\ = (\wr_en~input_o\ & (!\Equal0~10_combout\ & !\rd_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datac => \Equal0~10_combout\,
	datad => \rd_en~input_o\,
	combout => \COUNTER~1_combout\);

-- Location: LCCOMB_X35_Y30_N6
\count[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~0_combout\ = (\COUNTER~0_combout\ $ (\COUNTER~1_combout\)) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \COUNTER~0_combout\,
	datac => \COUNTER~1_combout\,
	combout => \count[13]~0_combout\);

-- Location: FF_X31_Y20_N25
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X30_Y21_N2
\Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (count(1) & ((\COUNTER~0_combout\ & (\Add3~1\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~1\)))) # (!count(1) & ((\COUNTER~0_combout\ & (!\Add3~1\)) # (!\COUNTER~0_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~4\ = CARRY((count(1) & (!\COUNTER~0_combout\ & !\Add3~1\)) # (!count(1) & ((!\Add3~1\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X31_Y20_N10
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\rst~input_o\ & \Add3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~3_combout\,
	combout => \Add3~5_combout\);

-- Location: FF_X31_Y20_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~5_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X30_Y21_N4
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = ((count(2) $ (\COUNTER~0_combout\ $ (!\Add3~4\)))) # (GND)
-- \Add3~7\ = CARRY((count(2) & ((\COUNTER~0_combout\) # (!\Add3~4\))) # (!count(2) & (\COUNTER~0_combout\ & !\Add3~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X31_Y20_N20
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~6_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datac => \rst~input_o\,
	combout => \Add3~8_combout\);

-- Location: FF_X31_Y20_N21
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X30_Y21_N6
\Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (count(3) & ((\COUNTER~0_combout\ & (\Add3~7\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~7\)))) # (!count(3) & ((\COUNTER~0_combout\ & (!\Add3~7\)) # (!\COUNTER~0_combout\ & ((\Add3~7\) # (GND)))))
-- \Add3~10\ = CARRY((count(3) & (!\COUNTER~0_combout\ & !\Add3~7\)) # (!count(3) & ((!\Add3~7\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~9_combout\,
	cout => \Add3~10\);

-- Location: LCCOMB_X29_Y20_N22
\Add3~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~95_combout\ = (\rst~input_o\ & \Add3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~9_combout\,
	combout => \Add3~95_combout\);

-- Location: FF_X29_Y20_N23
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~95_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X30_Y21_N8
\Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = ((count(4) $ (\COUNTER~0_combout\ $ (!\Add3~10\)))) # (GND)
-- \Add3~12\ = CARRY((count(4) & ((\COUNTER~0_combout\) # (!\Add3~10\))) # (!count(4) & (\COUNTER~0_combout\ & !\Add3~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~10\,
	combout => \Add3~11_combout\,
	cout => \Add3~12\);

-- Location: LCCOMB_X31_Y20_N22
\Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (\Add3~11_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~11_combout\,
	datac => \rst~input_o\,
	combout => \Add3~13_combout\);

-- Location: FF_X31_Y20_N23
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~13_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X30_Y21_N10
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (count(5) & ((\COUNTER~0_combout\ & (\Add3~12\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~12\)))) # (!count(5) & ((\COUNTER~0_combout\ & (!\Add3~12\)) # (!\COUNTER~0_combout\ & ((\Add3~12\) # (GND)))))
-- \Add3~15\ = CARRY((count(5) & (!\COUNTER~0_combout\ & !\Add3~12\)) # (!count(5) & ((!\Add3~12\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~12\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X31_Y21_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\rst~input_o\ & \Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~14_combout\,
	combout => \Add3~16_combout\);

-- Location: FF_X31_Y21_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X30_Y21_N12
\Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = ((count(6) $ (\COUNTER~0_combout\ $ (!\Add3~15\)))) # (GND)
-- \Add3~18\ = CARRY((count(6) & ((\COUNTER~0_combout\) # (!\Add3~15\))) # (!count(6) & (\COUNTER~0_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~17_combout\,
	cout => \Add3~18\);

-- Location: LCCOMB_X31_Y21_N2
\Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~19_combout\ = (\rst~input_o\ & \Add3~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~17_combout\,
	combout => \Add3~19_combout\);

-- Location: FF_X31_Y21_N3
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~19_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X30_Y21_N14
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (count(7) & ((\COUNTER~0_combout\ & (\Add3~18\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~18\)))) # (!count(7) & ((\COUNTER~0_combout\ & (!\Add3~18\)) # (!\COUNTER~0_combout\ & ((\Add3~18\) # (GND)))))
-- \Add3~21\ = CARRY((count(7) & (!\COUNTER~0_combout\ & !\Add3~18\)) # (!count(7) & ((!\Add3~18\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~18\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X31_Y21_N12
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\rst~input_o\ & \Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~20_combout\,
	combout => \Add3~22_combout\);

-- Location: FF_X31_Y21_N13
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X30_Y21_N16
\Add3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~23_combout\ = ((count(8) $ (\COUNTER~0_combout\ $ (!\Add3~21\)))) # (GND)
-- \Add3~24\ = CARRY((count(8) & ((\COUNTER~0_combout\) # (!\Add3~21\))) # (!count(8) & (\COUNTER~0_combout\ & !\Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~23_combout\,
	cout => \Add3~24\);

-- Location: LCCOMB_X31_Y21_N6
\Add3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (\Add3~23_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~23_combout\,
	datac => \rst~input_o\,
	combout => \Add3~25_combout\);

-- Location: FF_X31_Y21_N7
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~25_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X30_Y21_N18
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\COUNTER~0_combout\ & ((count(9) & (\Add3~24\ & VCC)) # (!count(9) & (!\Add3~24\)))) # (!\COUNTER~0_combout\ & ((count(9) & (!\Add3~24\)) # (!count(9) & ((\Add3~24\) # (GND)))))
-- \Add3~27\ = CARRY((\COUNTER~0_combout\ & (!count(9) & !\Add3~24\)) # (!\COUNTER~0_combout\ & ((!\Add3~24\) # (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(9),
	datad => VCC,
	cin => \Add3~24\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X31_Y21_N26
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\rst~input_o\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~26_combout\,
	combout => \Add3~28_combout\);

-- Location: FF_X31_Y21_N27
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X30_Y21_N20
\Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~29_combout\ = ((\COUNTER~0_combout\ $ (count(10) $ (!\Add3~27\)))) # (GND)
-- \Add3~30\ = CARRY((\COUNTER~0_combout\ & ((count(10)) # (!\Add3~27\))) # (!\COUNTER~0_combout\ & (count(10) & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(10),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~29_combout\,
	cout => \Add3~30\);

-- Location: LCCOMB_X31_Y21_N4
\Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~31_combout\ = (\rst~input_o\ & \Add3~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~29_combout\,
	combout => \Add3~31_combout\);

-- Location: FF_X31_Y21_N5
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~31_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X30_Y21_N22
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\COUNTER~0_combout\ & ((count(11) & (\Add3~30\ & VCC)) # (!count(11) & (!\Add3~30\)))) # (!\COUNTER~0_combout\ & ((count(11) & (!\Add3~30\)) # (!count(11) & ((\Add3~30\) # (GND)))))
-- \Add3~33\ = CARRY((\COUNTER~0_combout\ & (!count(11) & !\Add3~30\)) # (!\COUNTER~0_combout\ & ((!\Add3~30\) # (!count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(11),
	datad => VCC,
	cin => \Add3~30\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X31_Y21_N22
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\rst~input_o\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~32_combout\,
	combout => \Add3~34_combout\);

-- Location: FF_X31_Y21_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~34_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X30_Y21_N24
\Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~35_combout\ = ((\COUNTER~0_combout\ $ (count(12) $ (!\Add3~33\)))) # (GND)
-- \Add3~36\ = CARRY((\COUNTER~0_combout\ & ((count(12)) # (!\Add3~33\))) # (!\COUNTER~0_combout\ & (count(12) & !\Add3~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(12),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~35_combout\,
	cout => \Add3~36\);

-- Location: LCCOMB_X31_Y21_N0
\Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~37_combout\ = (\rst~input_o\ & \Add3~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~35_combout\,
	combout => \Add3~37_combout\);

-- Location: FF_X31_Y21_N1
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~37_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X30_Y21_N26
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\COUNTER~0_combout\ & ((count(13) & (\Add3~36\ & VCC)) # (!count(13) & (!\Add3~36\)))) # (!\COUNTER~0_combout\ & ((count(13) & (!\Add3~36\)) # (!count(13) & ((\Add3~36\) # (GND)))))
-- \Add3~39\ = CARRY((\COUNTER~0_combout\ & (!count(13) & !\Add3~36\)) # (!\COUNTER~0_combout\ & ((!\Add3~36\) # (!count(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(13),
	datad => VCC,
	cin => \Add3~36\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X31_Y21_N20
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\Add3~38_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~38_combout\,
	datac => \rst~input_o\,
	combout => \Add3~40_combout\);

-- Location: FF_X31_Y21_N21
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X30_Y21_N28
\Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~41_combout\ = ((\COUNTER~0_combout\ $ (count(14) $ (!\Add3~39\)))) # (GND)
-- \Add3~42\ = CARRY((\COUNTER~0_combout\ & ((count(14)) # (!\Add3~39\))) # (!\COUNTER~0_combout\ & (count(14) & !\Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(14),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~41_combout\,
	cout => \Add3~42\);

-- Location: LCCOMB_X31_Y21_N30
\Add3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~43_combout\ = (\rst~input_o\ & \Add3~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~41_combout\,
	combout => \Add3~43_combout\);

-- Location: FF_X31_Y21_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~43_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X30_Y21_N30
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\COUNTER~0_combout\ & ((count(15) & (\Add3~42\ & VCC)) # (!count(15) & (!\Add3~42\)))) # (!\COUNTER~0_combout\ & ((count(15) & (!\Add3~42\)) # (!count(15) & ((\Add3~42\) # (GND)))))
-- \Add3~45\ = CARRY((\COUNTER~0_combout\ & (!count(15) & !\Add3~42\)) # (!\COUNTER~0_combout\ & ((!\Add3~42\) # (!count(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(15),
	datad => VCC,
	cin => \Add3~42\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X31_Y21_N8
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\rst~input_o\ & \Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~44_combout\,
	combout => \Add3~46_combout\);

-- Location: FF_X31_Y21_N9
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X30_Y20_N0
\Add3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~47_combout\ = ((\COUNTER~0_combout\ $ (count(16) $ (!\Add3~45\)))) # (GND)
-- \Add3~48\ = CARRY((\COUNTER~0_combout\ & ((count(16)) # (!\Add3~45\))) # (!\COUNTER~0_combout\ & (count(16) & !\Add3~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(16),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~47_combout\,
	cout => \Add3~48\);

-- Location: LCCOMB_X31_Y21_N18
\Add3~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~49_combout\ = (\Add3~47_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~47_combout\,
	datac => \rst~input_o\,
	combout => \Add3~49_combout\);

-- Location: FF_X31_Y21_N19
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~49_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X30_Y20_N2
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\COUNTER~0_combout\ & ((count(17) & (\Add3~48\ & VCC)) # (!count(17) & (!\Add3~48\)))) # (!\COUNTER~0_combout\ & ((count(17) & (!\Add3~48\)) # (!count(17) & ((\Add3~48\) # (GND)))))
-- \Add3~51\ = CARRY((\COUNTER~0_combout\ & (!count(17) & !\Add3~48\)) # (!\COUNTER~0_combout\ & ((!\Add3~48\) # (!count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(17),
	datad => VCC,
	cin => \Add3~48\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X29_Y20_N16
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (\rst~input_o\ & \Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~50_combout\,
	combout => \Add3~52_combout\);

-- Location: FF_X29_Y20_N17
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~52_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X30_Y20_N4
\Add3~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~53_combout\ = ((\COUNTER~0_combout\ $ (count(18) $ (!\Add3~51\)))) # (GND)
-- \Add3~54\ = CARRY((\COUNTER~0_combout\ & ((count(18)) # (!\Add3~51\))) # (!\COUNTER~0_combout\ & (count(18) & !\Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(18),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~53_combout\,
	cout => \Add3~54\);

-- Location: LCCOMB_X29_Y20_N26
\Add3~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~55_combout\ = (\rst~input_o\ & \Add3~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~53_combout\,
	combout => \Add3~55_combout\);

-- Location: FF_X29_Y20_N27
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~55_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X30_Y20_N6
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (\COUNTER~0_combout\ & ((count(19) & (\Add3~54\ & VCC)) # (!count(19) & (!\Add3~54\)))) # (!\COUNTER~0_combout\ & ((count(19) & (!\Add3~54\)) # (!count(19) & ((\Add3~54\) # (GND)))))
-- \Add3~57\ = CARRY((\COUNTER~0_combout\ & (!count(19) & !\Add3~54\)) # (!\COUNTER~0_combout\ & ((!\Add3~54\) # (!count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(19),
	datad => VCC,
	cin => \Add3~54\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X29_Y20_N28
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\rst~input_o\ & \Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~56_combout\,
	combout => \Add3~58_combout\);

-- Location: FF_X29_Y20_N29
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~58_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X30_Y20_N8
\Add3~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~59_combout\ = ((\COUNTER~0_combout\ $ (count(20) $ (!\Add3~57\)))) # (GND)
-- \Add3~60\ = CARRY((\COUNTER~0_combout\ & ((count(20)) # (!\Add3~57\))) # (!\COUNTER~0_combout\ & (count(20) & !\Add3~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(20),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~59_combout\,
	cout => \Add3~60\);

-- Location: LCCOMB_X30_Y20_N10
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = (\COUNTER~0_combout\ & ((count(21) & (\Add3~60\ & VCC)) # (!count(21) & (!\Add3~60\)))) # (!\COUNTER~0_combout\ & ((count(21) & (!\Add3~60\)) # (!count(21) & ((\Add3~60\) # (GND)))))
-- \Add3~63\ = CARRY((\COUNTER~0_combout\ & (!count(21) & !\Add3~60\)) # (!\COUNTER~0_combout\ & ((!\Add3~60\) # (!count(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(21),
	datad => VCC,
	cin => \Add3~60\,
	combout => \Add3~62_combout\,
	cout => \Add3~63\);

-- Location: LCCOMB_X29_Y20_N2
\Add3~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~64_combout\ = (\Add3~62_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~62_combout\,
	datac => \rst~input_o\,
	combout => \Add3~64_combout\);

-- Location: FF_X29_Y20_N3
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~64_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X30_Y20_N12
\Add3~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~65_combout\ = ((\COUNTER~0_combout\ $ (count(22) $ (!\Add3~63\)))) # (GND)
-- \Add3~66\ = CARRY((\COUNTER~0_combout\ & ((count(22)) # (!\Add3~63\))) # (!\COUNTER~0_combout\ & (count(22) & !\Add3~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(22),
	datad => VCC,
	cin => \Add3~63\,
	combout => \Add3~65_combout\,
	cout => \Add3~66\);

-- Location: LCCOMB_X29_Y20_N20
\Add3~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~67_combout\ = (\Add3~65_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~65_combout\,
	datac => \rst~input_o\,
	combout => \Add3~67_combout\);

-- Location: FF_X29_Y20_N21
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~67_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X30_Y20_N14
\Add3~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~68_combout\ = (count(23) & ((\COUNTER~0_combout\ & (\Add3~66\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~66\)))) # (!count(23) & ((\COUNTER~0_combout\ & (!\Add3~66\)) # (!\COUNTER~0_combout\ & ((\Add3~66\) # (GND)))))
-- \Add3~69\ = CARRY((count(23) & (!\COUNTER~0_combout\ & !\Add3~66\)) # (!count(23) & ((!\Add3~66\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~66\,
	combout => \Add3~68_combout\,
	cout => \Add3~69\);

-- Location: LCCOMB_X29_Y20_N30
\Add3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~70_combout\ = (\Add3~68_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~68_combout\,
	datac => \rst~input_o\,
	combout => \Add3~70_combout\);

-- Location: FF_X29_Y20_N31
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~70_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X30_Y20_N16
\Add3~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~71_combout\ = ((\COUNTER~0_combout\ $ (count(24) $ (!\Add3~69\)))) # (GND)
-- \Add3~72\ = CARRY((\COUNTER~0_combout\ & ((count(24)) # (!\Add3~69\))) # (!\COUNTER~0_combout\ & (count(24) & !\Add3~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(24),
	datad => VCC,
	cin => \Add3~69\,
	combout => \Add3~71_combout\,
	cout => \Add3~72\);

-- Location: LCCOMB_X29_Y20_N24
\Add3~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~73_combout\ = (\rst~input_o\ & \Add3~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~71_combout\,
	combout => \Add3~73_combout\);

-- Location: FF_X29_Y20_N25
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~73_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X30_Y20_N18
\Add3~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~74_combout\ = (count(25) & ((\COUNTER~0_combout\ & (\Add3~72\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~72\)))) # (!count(25) & ((\COUNTER~0_combout\ & (!\Add3~72\)) # (!\COUNTER~0_combout\ & ((\Add3~72\) # (GND)))))
-- \Add3~75\ = CARRY((count(25) & (!\COUNTER~0_combout\ & !\Add3~72\)) # (!count(25) & ((!\Add3~72\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~72\,
	combout => \Add3~74_combout\,
	cout => \Add3~75\);

-- Location: LCCOMB_X31_Y20_N18
\Add3~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~76_combout\ = (\rst~input_o\ & \Add3~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~74_combout\,
	combout => \Add3~76_combout\);

-- Location: FF_X31_Y20_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~76_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X30_Y20_N20
\Add3~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~77_combout\ = ((count(26) $ (\COUNTER~0_combout\ $ (!\Add3~75\)))) # (GND)
-- \Add3~78\ = CARRY((count(26) & ((\COUNTER~0_combout\) # (!\Add3~75\))) # (!count(26) & (\COUNTER~0_combout\ & !\Add3~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~75\,
	combout => \Add3~77_combout\,
	cout => \Add3~78\);

-- Location: LCCOMB_X31_Y20_N12
\Add3~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~79_combout\ = (\rst~input_o\ & \Add3~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~77_combout\,
	combout => \Add3~79_combout\);

-- Location: FF_X31_Y20_N13
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~79_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X30_Y20_N22
\Add3~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~80_combout\ = (count(27) & ((\COUNTER~0_combout\ & (\Add3~78\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~78\)))) # (!count(27) & ((\COUNTER~0_combout\ & (!\Add3~78\)) # (!\COUNTER~0_combout\ & ((\Add3~78\) # (GND)))))
-- \Add3~81\ = CARRY((count(27) & (!\COUNTER~0_combout\ & !\Add3~78\)) # (!count(27) & ((!\Add3~78\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~78\,
	combout => \Add3~80_combout\,
	cout => \Add3~81\);

-- Location: LCCOMB_X31_Y20_N14
\Add3~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~82_combout\ = (\rst~input_o\ & \Add3~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~80_combout\,
	combout => \Add3~82_combout\);

-- Location: FF_X31_Y20_N15
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~82_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X30_Y20_N24
\Add3~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~83_combout\ = ((count(28) $ (\COUNTER~0_combout\ $ (!\Add3~81\)))) # (GND)
-- \Add3~84\ = CARRY((count(28) & ((\COUNTER~0_combout\) # (!\Add3~81\))) # (!count(28) & (\COUNTER~0_combout\ & !\Add3~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~81\,
	combout => \Add3~83_combout\,
	cout => \Add3~84\);

-- Location: LCCOMB_X31_Y20_N0
\Add3~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~85_combout\ = (\rst~input_o\ & \Add3~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~83_combout\,
	combout => \Add3~85_combout\);

-- Location: FF_X31_Y20_N1
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~85_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X30_Y20_N26
\Add3~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~86_combout\ = (count(29) & ((\COUNTER~0_combout\ & (\Add3~84\ & VCC)) # (!\COUNTER~0_combout\ & (!\Add3~84\)))) # (!count(29) & ((\COUNTER~0_combout\ & (!\Add3~84\)) # (!\COUNTER~0_combout\ & ((\Add3~84\) # (GND)))))
-- \Add3~87\ = CARRY((count(29) & (!\COUNTER~0_combout\ & !\Add3~84\)) # (!count(29) & ((!\Add3~84\) # (!\COUNTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~84\,
	combout => \Add3~86_combout\,
	cout => \Add3~87\);

-- Location: LCCOMB_X31_Y20_N30
\Add3~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~93_combout\ = (\Add3~86_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~86_combout\,
	datac => \rst~input_o\,
	combout => \Add3~93_combout\);

-- Location: FF_X31_Y20_N31
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~93_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X30_Y20_N28
\Add3~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~88_combout\ = ((count(30) $ (\COUNTER~0_combout\ $ (!\Add3~87\)))) # (GND)
-- \Add3~89\ = CARRY((count(30) & ((\COUNTER~0_combout\) # (!\Add3~87\))) # (!count(30) & (\COUNTER~0_combout\ & !\Add3~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => \COUNTER~0_combout\,
	datad => VCC,
	cin => \Add3~87\,
	combout => \Add3~88_combout\,
	cout => \Add3~89\);

-- Location: LCCOMB_X31_Y20_N16
\Add3~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~94_combout\ = (\rst~input_o\ & \Add3~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~88_combout\,
	combout => \Add3~94_combout\);

-- Location: FF_X31_Y20_N17
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~94_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X30_Y20_N30
\Add3~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~90_combout\ = \COUNTER~0_combout\ $ (count(31) $ (!\Add3~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER~0_combout\,
	datab => count(31),
	cin => \Add3~89\,
	combout => \Add3~90_combout\);

-- Location: LCCOMB_X31_Y20_N28
\Add3~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~92_combout\ = (!\Add3~90_combout\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~90_combout\,
	combout => \Add3~92_combout\);

-- Location: FF_X31_Y20_N29
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~92_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X31_Y20_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(26) & (!count(28) & (!count(27) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(28),
	datac => count(27),
	datad => count(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X31_Y20_N2
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(29) & (count(31) & (\Equal0~8_combout\ & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(31),
	datac => \Equal0~8_combout\,
	datad => count(30),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y21_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(11) & (!count(12) & (!count(10) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(12),
	datac => count(10),
	datad => count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y21_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(14) & (!count(16) & (!count(15) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(16),
	datac => count(15),
	datad => count(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y20_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(1) & (!count(2) & (!count(4) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(4),
	datad => count(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(8) & (!count(5) & (!count(6) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(5),
	datac => count(6),
	datad => count(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N14
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X35_Y30_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~7_combout\ & (!count(3) & (\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => count(3),
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X35_Y30_N18
\COUNTER~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER~0_combout\ = (!\Equal1~0_combout\ & (\rd_en~input_o\ & !\wr_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rd_en~input_o\,
	datad => \wr_en~input_o\,
	combout => \COUNTER~0_combout\);

-- Location: LCCOMB_X29_Y20_N6
\Add3~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~61_combout\ = (\Add3~59_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~59_combout\,
	datac => \rst~input_o\,
	combout => \Add3~61_combout\);

-- Location: FF_X29_Y20_N7
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~61_combout\,
	ena => \count[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X29_Y20_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(20) & (!count(19) & (!count(18) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(19),
	datac => count(18),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y20_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(24) & (!count(22) & (!count(23) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(22),
	datac => count(23),
	datad => count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X29_Y20_N4
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X35_Y30_N14
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (count(3) & (\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => count(3),
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X35_Y30_N8
\memory[5][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][7]~1_combout\ = (!wr_ptr(0) & (!\Equal0~10_combout\ & \wr_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(0),
	datac => \Equal0~10_combout\,
	datad => \wr_en~input_o\,
	combout => \memory[5][7]~1_combout\);

-- Location: LCCOMB_X36_Y30_N10
\memory[1][7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][7]~9_combout\ = ((\memory[5][7]~1_combout\ & (!wr_ptr(1) & !wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][7]~1_combout\,
	datab => wr_ptr(1),
	datac => wr_ptr(2),
	datad => \rst~input_o\,
	combout => \memory[1][7]~9_combout\);

-- Location: FF_X39_Y30_N27
\memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[1][0]~feeder_combout\,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][0]~q\);

-- Location: LCCOMB_X35_Y30_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (wr_ptr(0) & (!wr_ptr(1) & !wr_ptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(0),
	datac => wr_ptr(1),
	datad => wr_ptr(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X35_Y30_N22
\memory[0][2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[0][2]~10_combout\ = ((\wr_en~input_o\ & (!\Equal0~10_combout\ & \Equal2~0_combout\))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~input_o\,
	datab => \Equal0~10_combout\,
	datac => \rst~input_o\,
	datad => \Equal2~0_combout\,
	combout => \memory[0][2]~10_combout\);

-- Location: FF_X37_Y30_N27
\memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~0_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][0]~q\);

-- Location: LCCOMB_X37_Y30_N26
\data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (rd_ptr(1) & (((!rd_ptr(0))))) # (!rd_ptr(1) & ((rd_ptr(0) & ((\memory[0][0]~q\))) # (!rd_ptr(0) & (\memory[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[1][0]~q\,
	datac => \memory[0][0]~q\,
	datad => rd_ptr(0),
	combout => \data_out~2_combout\);

-- Location: LCCOMB_X36_Y30_N12
\memory[3][5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[3][5]~11_combout\ = ((\memory[5][7]~1_combout\ & (wr_ptr(1) & !wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][7]~1_combout\,
	datab => wr_ptr(1),
	datac => wr_ptr(2),
	datad => \rst~input_o\,
	combout => \memory[3][5]~11_combout\);

-- Location: FF_X36_Y30_N25
\memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~0_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][0]~q\);

-- Location: LCCOMB_X35_Y30_N10
\memory[6][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][6]~3_combout\ = (!\Equal0~10_combout\ & (wr_ptr(1) & \wr_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => wr_ptr(1),
	datad => \wr_en~input_o\,
	combout => \memory[6][6]~3_combout\);

-- Location: LCCOMB_X35_Y30_N2
\memory[2][7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][7]~8_combout\ = ((\memory[6][6]~3_combout\ & (wr_ptr(0) & !wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][6]~3_combout\,
	datab => wr_ptr(0),
	datac => \rst~input_o\,
	datad => wr_ptr(2),
	combout => \memory[2][7]~8_combout\);

-- Location: FF_X37_Y30_N17
\memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~0_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][0]~q\);

-- Location: LCCOMB_X37_Y30_N16
\data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\data_out~2_combout\ & ((\memory[3][0]~q\) # ((!rd_ptr(1))))) # (!\data_out~2_combout\ & (((\memory[2][0]~q\ & rd_ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~2_combout\,
	datab => \memory[3][0]~q\,
	datac => \memory[2][0]~q\,
	datad => rd_ptr(1),
	combout => \data_out~3_combout\);

-- Location: LCCOMB_X35_Y30_N30
\memory[4][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[4][2]~5_combout\ = ((wr_ptr(1)) # (!wr_ptr(2))) # (!wr_ptr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(0),
	datac => wr_ptr(1),
	datad => wr_ptr(2),
	combout => \memory[4][2]~5_combout\);

-- Location: LCCOMB_X35_Y30_N16
\memory[4][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[4][2]~6_combout\ = ((!\memory[4][2]~5_combout\ & (!\Equal0~10_combout\ & \wr_en~input_o\))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[4][2]~5_combout\,
	datab => \Equal0~10_combout\,
	datac => \rst~input_o\,
	datad => \wr_en~input_o\,
	combout => \memory[4][2]~6_combout\);

-- Location: FF_X38_Y30_N19
\memory[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~0_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][0]~q\);

-- Location: LCCOMB_X38_Y30_N0
\memory[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][0]~feeder_combout\ = \memory~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~0_combout\,
	combout => \memory[6][0]~feeder_combout\);

-- Location: LCCOMB_X35_Y30_N20
\memory[6][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][6]~4_combout\ = ((\memory[6][6]~3_combout\ & (wr_ptr(0) & wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[6][6]~3_combout\,
	datab => wr_ptr(0),
	datac => \rst~input_o\,
	datad => wr_ptr(2),
	combout => \memory[6][6]~4_combout\);

-- Location: FF_X38_Y30_N1
\memory[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][0]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][0]~q\);

-- Location: LCCOMB_X38_Y30_N18
\data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][0]~q\))) # (!rd_ptr(1) & (\memory[4][0]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][0]~q\,
	datad => \memory[6][0]~q\,
	combout => \data_out~0_combout\);

-- Location: LCCOMB_X36_Y30_N0
\memory[7][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[7][6]~7_combout\ = ((\memory[5][7]~1_combout\ & (wr_ptr(1) & wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][7]~1_combout\,
	datab => wr_ptr(1),
	datac => wr_ptr(2),
	datad => \rst~input_o\,
	combout => \memory[7][6]~7_combout\);

-- Location: FF_X39_Y30_N17
\memory[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~0_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][0]~q\);

-- Location: LCCOMB_X40_Y30_N24
\memory[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][0]~feeder_combout\ = \memory~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~0_combout\,
	combout => \memory[5][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y30_N14
\memory[5][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][7]~2_combout\ = ((\memory[5][7]~1_combout\ & (!wr_ptr(1) & wr_ptr(2)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[5][7]~1_combout\,
	datab => wr_ptr(1),
	datac => wr_ptr(2),
	datad => \rst~input_o\,
	combout => \memory[5][7]~2_combout\);

-- Location: FF_X40_Y30_N25
\memory[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][0]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][0]~q\);

-- Location: LCCOMB_X39_Y30_N16
\data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (rd_ptr(0) & (\data_out~0_combout\)) # (!rd_ptr(0) & ((\data_out~0_combout\ & (\memory[7][0]~q\)) # (!\data_out~0_combout\ & ((\memory[5][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \data_out~0_combout\,
	datac => \memory[7][0]~q\,
	datad => \memory[5][0]~q\,
	combout => \data_out~1_combout\);

-- Location: LCCOMB_X41_Y30_N16
\data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (rd_ptr(2) & ((\data_out~1_combout\))) # (!rd_ptr(2) & (\data_out~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~3_combout\,
	datac => rd_ptr(2),
	datad => \data_out~1_combout\,
	combout => \data_out~4_combout\);

-- Location: LCCOMB_X35_Y30_N24
\data_out[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~5_combout\ = ((!\Equal1~0_combout\ & \rd_en~input_o\)) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rd_en~input_o\,
	datac => \rst~input_o\,
	combout => \data_out[7]~5_combout\);

-- Location: FF_X41_Y30_N17
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~4_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N8
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X36_Y30_N26
\memory~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~12_combout\ = (\data_in[1]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~12_combout\);

-- Location: FF_X38_Y30_N15
\memory[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~12_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][1]~q\);

-- Location: LCCOMB_X38_Y30_N12
\memory[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][1]~feeder_combout\ = \memory~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~12_combout\,
	combout => \memory[6][1]~feeder_combout\);

-- Location: FF_X38_Y30_N13
\memory[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][1]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][1]~q\);

-- Location: LCCOMB_X38_Y30_N14
\data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][1]~q\))) # (!rd_ptr(1) & (\memory[4][1]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][1]~q\,
	datad => \memory[6][1]~q\,
	combout => \data_out~6_combout\);

-- Location: FF_X39_Y30_N29
\memory[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~12_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][1]~q\);

-- Location: LCCOMB_X40_Y30_N2
\memory[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][1]~feeder_combout\ = \memory~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~12_combout\,
	combout => \memory[5][1]~feeder_combout\);

-- Location: FF_X40_Y30_N3
\memory[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][1]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][1]~q\);

-- Location: LCCOMB_X39_Y30_N28
\data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (rd_ptr(0) & (\data_out~6_combout\)) # (!rd_ptr(0) & ((\data_out~6_combout\ & (\memory[7][1]~q\)) # (!\data_out~6_combout\ & ((\memory[5][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \data_out~6_combout\,
	datac => \memory[7][1]~q\,
	datad => \memory[5][1]~q\,
	combout => \data_out~7_combout\);

-- Location: FF_X36_Y30_N27
\memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~12_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][1]~q\);

-- Location: FF_X37_Y30_N21
\memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~12_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][1]~q\);

-- Location: FF_X39_Y30_N15
\memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~12_combout\,
	sload => VCC,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][1]~q\);

-- Location: FF_X37_Y30_N7
\memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~12_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][1]~q\);

-- Location: LCCOMB_X37_Y30_N6
\data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (rd_ptr(1) & (((!rd_ptr(0))))) # (!rd_ptr(1) & ((rd_ptr(0) & ((\memory[0][1]~q\))) # (!rd_ptr(0) & (\memory[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[1][1]~q\,
	datac => \memory[0][1]~q\,
	datad => rd_ptr(0),
	combout => \data_out~8_combout\);

-- Location: LCCOMB_X37_Y30_N20
\data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~9_combout\ = (rd_ptr(1) & ((\data_out~8_combout\ & (\memory[3][1]~q\)) # (!\data_out~8_combout\ & ((\memory[2][1]~q\))))) # (!rd_ptr(1) & (((\data_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[3][1]~q\,
	datac => \memory[2][1]~q\,
	datad => \data_out~8_combout\,
	combout => \data_out~9_combout\);

-- Location: LCCOMB_X41_Y30_N2
\data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~10_combout\ = (rd_ptr(2) & (\data_out~7_combout\)) # (!rd_ptr(2) & ((\data_out~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~7_combout\,
	datab => \data_out~9_combout\,
	datac => rd_ptr(2),
	combout => \data_out~10_combout\);

-- Location: FF_X41_Y30_N3
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~10_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: IOIBUF_X43_Y34_N15
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X36_Y30_N4
\memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~13_combout\ = (\data_in[2]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[2]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~13_combout\);

-- Location: FF_X36_Y30_N5
\memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~13_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][2]~q\);

-- Location: FF_X37_Y30_N9
\memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][2]~q\);

-- Location: FF_X37_Y30_N19
\memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][2]~q\);

-- Location: FF_X39_Y30_N19
\memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][2]~q\);

-- Location: LCCOMB_X37_Y30_N18
\data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~13_combout\ = (rd_ptr(1) & (!rd_ptr(0))) # (!rd_ptr(1) & ((rd_ptr(0) & (\memory[0][2]~q\)) # (!rd_ptr(0) & ((\memory[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => rd_ptr(0),
	datac => \memory[0][2]~q\,
	datad => \memory[1][2]~q\,
	combout => \data_out~13_combout\);

-- Location: LCCOMB_X37_Y30_N8
\data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~14_combout\ = (rd_ptr(1) & ((\data_out~13_combout\ & (\memory[3][2]~q\)) # (!\data_out~13_combout\ & ((\memory[2][2]~q\))))) # (!rd_ptr(1) & (((\data_out~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[3][2]~q\,
	datac => \memory[2][2]~q\,
	datad => \data_out~13_combout\,
	combout => \data_out~14_combout\);

-- Location: LCCOMB_X40_Y30_N20
\memory[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][2]~feeder_combout\ = \memory~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~13_combout\,
	combout => \memory[5][2]~feeder_combout\);

-- Location: FF_X40_Y30_N21
\memory[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][2]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][2]~q\);

-- Location: FF_X39_Y30_N1
\memory[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][2]~q\);

-- Location: FF_X38_Y30_N9
\memory[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][2]~q\);

-- Location: FF_X38_Y30_N11
\memory[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~13_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][2]~q\);

-- Location: LCCOMB_X38_Y30_N10
\data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~11_combout\ = (rd_ptr(0) & ((rd_ptr(1) & (\memory[6][2]~q\)) # (!rd_ptr(1) & ((\memory[4][2]~q\))))) # (!rd_ptr(0) & (((rd_ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \memory[6][2]~q\,
	datac => \memory[4][2]~q\,
	datad => rd_ptr(1),
	combout => \data_out~11_combout\);

-- Location: LCCOMB_X39_Y30_N0
\data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~12_combout\ = (rd_ptr(0) & (((\data_out~11_combout\)))) # (!rd_ptr(0) & ((\data_out~11_combout\ & ((\memory[7][2]~q\))) # (!\data_out~11_combout\ & (\memory[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \memory[5][2]~q\,
	datac => \memory[7][2]~q\,
	datad => \data_out~11_combout\,
	combout => \data_out~12_combout\);

-- Location: LCCOMB_X41_Y30_N20
\data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~15_combout\ = (rd_ptr(2) & ((\data_out~12_combout\))) # (!rd_ptr(2) & (\data_out~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out~14_combout\,
	datac => rd_ptr(2),
	datad => \data_out~12_combout\,
	combout => \data_out~15_combout\);

-- Location: FF_X41_Y30_N21
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~15_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: IOIBUF_X40_Y34_N1
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X36_Y30_N6
\memory~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~14_combout\ = (\data_in[3]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~14_combout\);

-- Location: FF_X37_Y30_N15
\memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~14_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][3]~q\);

-- Location: FF_X39_Y30_N7
\memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~14_combout\,
	sload => VCC,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][3]~q\);

-- Location: LCCOMB_X37_Y30_N14
\data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~18_combout\ = (rd_ptr(1) & (!rd_ptr(0))) # (!rd_ptr(1) & ((rd_ptr(0) & (\memory[0][3]~q\)) # (!rd_ptr(0) & ((\memory[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => rd_ptr(0),
	datac => \memory[0][3]~q\,
	datad => \memory[1][3]~q\,
	combout => \data_out~18_combout\);

-- Location: FF_X37_Y30_N13
\memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~14_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][3]~q\);

-- Location: FF_X36_Y30_N7
\memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~14_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][3]~q\);

-- Location: LCCOMB_X37_Y30_N12
\data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~19_combout\ = (rd_ptr(1) & ((\data_out~18_combout\ & ((\memory[3][3]~q\))) # (!\data_out~18_combout\ & (\memory[2][3]~q\)))) # (!rd_ptr(1) & (\data_out~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \data_out~18_combout\,
	datac => \memory[2][3]~q\,
	datad => \memory[3][3]~q\,
	combout => \data_out~19_combout\);

-- Location: LCCOMB_X38_Y30_N4
\memory[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][3]~feeder_combout\ = \memory~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~14_combout\,
	combout => \memory[6][3]~feeder_combout\);

-- Location: FF_X38_Y30_N5
\memory[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][3]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][3]~q\);

-- Location: FF_X38_Y30_N7
\memory[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~14_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][3]~q\);

-- Location: LCCOMB_X38_Y30_N6
\data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~16_combout\ = (rd_ptr(0) & ((rd_ptr(1) & (\memory[6][3]~q\)) # (!rd_ptr(1) & ((\memory[4][3]~q\))))) # (!rd_ptr(0) & (((rd_ptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \memory[6][3]~q\,
	datac => \memory[4][3]~q\,
	datad => rd_ptr(1),
	combout => \data_out~16_combout\);

-- Location: FF_X39_Y30_N13
\memory[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~14_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][3]~q\);

-- Location: LCCOMB_X40_Y30_N6
\memory[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][3]~feeder_combout\ = \memory~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~14_combout\,
	combout => \memory[5][3]~feeder_combout\);

-- Location: FF_X40_Y30_N7
\memory[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][3]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][3]~q\);

-- Location: LCCOMB_X39_Y30_N12
\data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~17_combout\ = (rd_ptr(0) & (\data_out~16_combout\)) # (!rd_ptr(0) & ((\data_out~16_combout\ & (\memory[7][3]~q\)) # (!\data_out~16_combout\ & ((\memory[5][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \data_out~16_combout\,
	datac => \memory[7][3]~q\,
	datad => \memory[5][3]~q\,
	combout => \data_out~17_combout\);

-- Location: LCCOMB_X41_Y30_N6
\data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~20_combout\ = (rd_ptr(2) & ((\data_out~17_combout\))) # (!rd_ptr(2) & (\data_out~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~19_combout\,
	datac => rd_ptr(2),
	datad => \data_out~17_combout\,
	combout => \data_out~20_combout\);

-- Location: FF_X41_Y30_N7
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~20_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: IOIBUF_X29_Y34_N15
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X36_Y30_N8
\memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~15_combout\ = (\data_in[4]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[4]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~15_combout\);

-- Location: FF_X39_Y30_N11
\memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~15_combout\,
	sload => VCC,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][4]~q\);

-- Location: FF_X37_Y30_N3
\memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~15_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][4]~q\);

-- Location: LCCOMB_X37_Y30_N2
\data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~23_combout\ = (rd_ptr(1) & (((!rd_ptr(0))))) # (!rd_ptr(1) & ((rd_ptr(0) & ((\memory[0][4]~q\))) # (!rd_ptr(0) & (\memory[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[1][4]~q\,
	datac => \memory[0][4]~q\,
	datad => rd_ptr(0),
	combout => \data_out~23_combout\);

-- Location: FF_X37_Y30_N1
\memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~15_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][4]~q\);

-- Location: FF_X36_Y30_N9
\memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~15_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][4]~q\);

-- Location: LCCOMB_X37_Y30_N0
\data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~24_combout\ = (rd_ptr(1) & ((\data_out~23_combout\ & ((\memory[3][4]~q\))) # (!\data_out~23_combout\ & (\memory[2][4]~q\)))) # (!rd_ptr(1) & (\data_out~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \data_out~23_combout\,
	datac => \memory[2][4]~q\,
	datad => \memory[3][4]~q\,
	combout => \data_out~24_combout\);

-- Location: FF_X38_Y30_N27
\memory[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~15_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][4]~q\);

-- Location: LCCOMB_X38_Y30_N16
\memory[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][4]~feeder_combout\ = \memory~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~15_combout\,
	combout => \memory[6][4]~feeder_combout\);

-- Location: FF_X38_Y30_N17
\memory[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][4]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][4]~q\);

-- Location: LCCOMB_X38_Y30_N26
\data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~21_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][4]~q\))) # (!rd_ptr(1) & (\memory[4][4]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][4]~q\,
	datad => \memory[6][4]~q\,
	combout => \data_out~21_combout\);

-- Location: LCCOMB_X40_Y30_N16
\memory[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][4]~feeder_combout\ = \memory~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~15_combout\,
	combout => \memory[5][4]~feeder_combout\);

-- Location: FF_X40_Y30_N17
\memory[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][4]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][4]~q\);

-- Location: FF_X39_Y30_N9
\memory[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~15_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][4]~q\);

-- Location: LCCOMB_X39_Y30_N8
\data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~22_combout\ = (\data_out~21_combout\ & (((\memory[7][4]~q\) # (rd_ptr(0))))) # (!\data_out~21_combout\ & (\memory[5][4]~q\ & ((!rd_ptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~21_combout\,
	datab => \memory[5][4]~q\,
	datac => \memory[7][4]~q\,
	datad => rd_ptr(0),
	combout => \data_out~22_combout\);

-- Location: LCCOMB_X41_Y30_N0
\data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~25_combout\ = (rd_ptr(2) & ((\data_out~22_combout\))) # (!rd_ptr(2) & (\data_out~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~24_combout\,
	datab => \data_out~22_combout\,
	datac => rd_ptr(2),
	combout => \data_out~25_combout\);

-- Location: FF_X41_Y30_N1
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~25_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: IOIBUF_X31_Y34_N1
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X36_Y30_N2
\memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~16_combout\ = (\data_in[5]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~16_combout\);

-- Location: FF_X37_Y30_N23
\memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~16_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][5]~q\);

-- Location: LCCOMB_X39_Y30_N30
\memory[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][5]~feeder_combout\ = \memory~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~16_combout\,
	combout => \memory[1][5]~feeder_combout\);

-- Location: FF_X39_Y30_N31
\memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[1][5]~feeder_combout\,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][5]~q\);

-- Location: LCCOMB_X37_Y30_N22
\data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~28_combout\ = (rd_ptr(1) & (!rd_ptr(0))) # (!rd_ptr(1) & ((rd_ptr(0) & (\memory[0][5]~q\)) # (!rd_ptr(0) & ((\memory[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => rd_ptr(0),
	datac => \memory[0][5]~q\,
	datad => \memory[1][5]~q\,
	combout => \data_out~28_combout\);

-- Location: FF_X37_Y30_N5
\memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~16_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][5]~q\);

-- Location: FF_X36_Y30_N3
\memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~16_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][5]~q\);

-- Location: LCCOMB_X37_Y30_N4
\data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~29_combout\ = (\data_out~28_combout\ & (((\memory[3][5]~q\)) # (!rd_ptr(1)))) # (!\data_out~28_combout\ & (rd_ptr(1) & (\memory[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~28_combout\,
	datab => rd_ptr(1),
	datac => \memory[2][5]~q\,
	datad => \memory[3][5]~q\,
	combout => \data_out~29_combout\);

-- Location: FF_X38_Y30_N23
\memory[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~16_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][5]~q\);

-- Location: LCCOMB_X38_Y30_N20
\memory[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][5]~feeder_combout\ = \memory~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~16_combout\,
	combout => \memory[6][5]~feeder_combout\);

-- Location: FF_X38_Y30_N21
\memory[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][5]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][5]~q\);

-- Location: LCCOMB_X38_Y30_N22
\data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~26_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][5]~q\))) # (!rd_ptr(1) & (\memory[4][5]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][5]~q\,
	datad => \memory[6][5]~q\,
	combout => \data_out~26_combout\);

-- Location: FF_X39_Y30_N21
\memory[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~16_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][5]~q\);

-- Location: FF_X40_Y30_N19
\memory[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~16_combout\,
	sload => VCC,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][5]~q\);

-- Location: LCCOMB_X39_Y30_N20
\data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~27_combout\ = (rd_ptr(0) & (\data_out~26_combout\)) # (!rd_ptr(0) & ((\data_out~26_combout\ & (\memory[7][5]~q\)) # (!\data_out~26_combout\ & ((\memory[5][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \data_out~26_combout\,
	datac => \memory[7][5]~q\,
	datad => \memory[5][5]~q\,
	combout => \data_out~27_combout\);

-- Location: LCCOMB_X41_Y30_N10
\data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~30_combout\ = (rd_ptr(2) & ((\data_out~27_combout\))) # (!rd_ptr(2) & (\data_out~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out~29_combout\,
	datac => rd_ptr(2),
	datad => \data_out~27_combout\,
	combout => \data_out~30_combout\);

-- Location: FF_X41_Y30_N11
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~30_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: IOIBUF_X38_Y34_N1
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X36_Y30_N28
\memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~17_combout\ = (\data_in[6]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~17_combout\);

-- Location: FF_X36_Y30_N29
\memory[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~17_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][6]~q\);

-- Location: FF_X37_Y30_N25
\memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][6]~q\);

-- Location: LCCOMB_X39_Y30_N2
\memory[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[1][6]~feeder_combout\ = \memory~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~17_combout\,
	combout => \memory[1][6]~feeder_combout\);

-- Location: FF_X39_Y30_N3
\memory[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[1][6]~feeder_combout\,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][6]~q\);

-- Location: FF_X37_Y30_N11
\memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][6]~q\);

-- Location: LCCOMB_X37_Y30_N10
\data_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~33_combout\ = (rd_ptr(1) & (((!rd_ptr(0))))) # (!rd_ptr(1) & ((rd_ptr(0) & ((\memory[0][6]~q\))) # (!rd_ptr(0) & (\memory[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[1][6]~q\,
	datac => \memory[0][6]~q\,
	datad => rd_ptr(0),
	combout => \data_out~33_combout\);

-- Location: LCCOMB_X37_Y30_N24
\data_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~34_combout\ = (rd_ptr(1) & ((\data_out~33_combout\ & (\memory[3][6]~q\)) # (!\data_out~33_combout\ & ((\memory[2][6]~q\))))) # (!rd_ptr(1) & (((\data_out~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => \memory[3][6]~q\,
	datac => \memory[2][6]~q\,
	datad => \data_out~33_combout\,
	combout => \data_out~34_combout\);

-- Location: LCCOMB_X40_Y30_N12
\memory[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][6]~feeder_combout\ = \memory~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~17_combout\,
	combout => \memory[5][6]~feeder_combout\);

-- Location: FF_X40_Y30_N13
\memory[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][6]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][6]~q\);

-- Location: FF_X39_Y30_N25
\memory[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][6]~q\);

-- Location: FF_X38_Y30_N3
\memory[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~17_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][6]~q\);

-- Location: LCCOMB_X38_Y30_N24
\memory[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[6][6]~feeder_combout\ = \memory~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~17_combout\,
	combout => \memory[6][6]~feeder_combout\);

-- Location: FF_X38_Y30_N25
\memory[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[6][6]~feeder_combout\,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][6]~q\);

-- Location: LCCOMB_X38_Y30_N2
\data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~31_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][6]~q\))) # (!rd_ptr(1) & (\memory[4][6]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][6]~q\,
	datad => \memory[6][6]~q\,
	combout => \data_out~31_combout\);

-- Location: LCCOMB_X39_Y30_N24
\data_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~32_combout\ = (rd_ptr(0) & (((\data_out~31_combout\)))) # (!rd_ptr(0) & ((\data_out~31_combout\ & ((\memory[7][6]~q\))) # (!\data_out~31_combout\ & (\memory[5][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \memory[5][6]~q\,
	datac => \memory[7][6]~q\,
	datad => \data_out~31_combout\,
	combout => \data_out~32_combout\);

-- Location: LCCOMB_X41_Y30_N12
\data_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~35_combout\ = (rd_ptr(2) & ((\data_out~32_combout\))) # (!rd_ptr(2) & (\data_out~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~34_combout\,
	datac => rd_ptr(2),
	datad => \data_out~32_combout\,
	combout => \data_out~35_combout\);

-- Location: FF_X41_Y30_N13
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~35_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N1
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X41_Y30_N24
\memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~18_combout\ = (\data_in[7]~input_o\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[7]~input_o\,
	datad => \rst~input_o\,
	combout => \memory~18_combout\);

-- Location: FF_X37_Y30_N31
\memory[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[0][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][7]~q\);

-- Location: FF_X39_Y30_N23
\memory[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[1][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][7]~q\);

-- Location: LCCOMB_X37_Y30_N30
\data_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~38_combout\ = (rd_ptr(1) & (!rd_ptr(0))) # (!rd_ptr(1) & ((rd_ptr(0) & (\memory[0][7]~q\)) # (!rd_ptr(0) & ((\memory[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(1),
	datab => rd_ptr(0),
	datac => \memory[0][7]~q\,
	datad => \memory[1][7]~q\,
	combout => \data_out~38_combout\);

-- Location: FF_X37_Y30_N29
\memory[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[2][7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][7]~q\);

-- Location: FF_X41_Y30_N25
\memory[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~18_combout\,
	ena => \memory[3][5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][7]~q\);

-- Location: LCCOMB_X37_Y30_N28
\data_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~39_combout\ = (\data_out~38_combout\ & (((\memory[3][7]~q\)) # (!rd_ptr(1)))) # (!\data_out~38_combout\ & (rd_ptr(1) & (\memory[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~38_combout\,
	datab => rd_ptr(1),
	datac => \memory[2][7]~q\,
	datad => \memory[3][7]~q\,
	combout => \data_out~39_combout\);

-- Location: FF_X38_Y30_N31
\memory[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[4][7]~q\);

-- Location: FF_X38_Y30_N29
\memory[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[6][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[6][7]~q\);

-- Location: LCCOMB_X38_Y30_N30
\data_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~36_combout\ = (rd_ptr(0) & ((rd_ptr(1) & ((\memory[6][7]~q\))) # (!rd_ptr(1) & (\memory[4][7]~q\)))) # (!rd_ptr(0) & (rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datac => \memory[4][7]~q\,
	datad => \memory[6][7]~q\,
	combout => \data_out~36_combout\);

-- Location: FF_X39_Y30_N5
\memory[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory~18_combout\,
	sload => VCC,
	ena => \memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[7][7]~q\);

-- Location: LCCOMB_X40_Y30_N22
\memory[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[5][7]~feeder_combout\ = \memory~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory~18_combout\,
	combout => \memory[5][7]~feeder_combout\);

-- Location: FF_X40_Y30_N23
\memory[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory[5][7]~feeder_combout\,
	ena => \memory[5][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[5][7]~q\);

-- Location: LCCOMB_X39_Y30_N4
\data_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~37_combout\ = (rd_ptr(0) & (\data_out~36_combout\)) # (!rd_ptr(0) & ((\data_out~36_combout\ & (\memory[7][7]~q\)) # (!\data_out~36_combout\ & ((\memory[5][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => \data_out~36_combout\,
	datac => \memory[7][7]~q\,
	datad => \memory[5][7]~q\,
	combout => \data_out~37_combout\);

-- Location: LCCOMB_X41_Y30_N22
\data_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~40_combout\ = (rd_ptr(2) & ((\data_out~37_combout\))) # (!rd_ptr(2) & (\data_out~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~39_combout\,
	datab => \data_out~37_combout\,
	datac => rd_ptr(2),
	combout => \data_out~40_combout\);

-- Location: FF_X41_Y30_N23
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~40_combout\,
	sclr => \ALT_INV_rst~input_o\,
	ena => \data_out[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: LCCOMB_X35_Y30_N0
\WRITE_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WRITE_DATA~0_combout\ = (\Equal0~10_combout\ & \wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \wr_en~input_o\,
	combout => \WRITE_DATA~0_combout\);

-- Location: FF_X35_Y30_N1
\w_err~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WRITE_DATA~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_err~reg0_q\);

-- Location: LCCOMB_X35_Y30_N26
\READ_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \READ_DATA~0_combout\ = (\Equal1~0_combout\ & \rd_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datad => \rd_en~input_o\,
	combout => \READ_DATA~0_combout\);

-- Location: FF_X35_Y30_N27
\r_err~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \READ_DATA~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_err~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_empty <= \empty~output_o\;

ww_full <= \full~output_o\;

ww_w_err <= \w_err~output_o\;

ww_r_err <= \r_err~output_o\;
END structure;


