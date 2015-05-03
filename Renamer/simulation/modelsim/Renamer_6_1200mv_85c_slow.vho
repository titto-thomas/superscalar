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

-- DATE "05/04/2015 01:05:44"

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

ENTITY 	Renamer IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	dest_address1 : IN std_logic_vector(2 DOWNTO 0);
	tag_out1 : BUFFER std_logic_vector(2 DOWNTO 0);
	tag_out_en1 : BUFFER std_logic;
	dest_address2 : IN std_logic_vector(2 DOWNTO 0);
	tag_out2 : BUFFER std_logic_vector(2 DOWNTO 0);
	tag_out_en2 : BUFFER std_logic;
	tag_rob_in : IN std_logic_vector(2 DOWNTO 0);
	rob_finish : IN std_logic;
	no_tag_left : BUFFER std_logic
	);
END Renamer;

-- Design Ports Information
-- tag_out1[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out1[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out_en1	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out2[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out2[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out2[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out_en2	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- no_tag_left	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rob_finish	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address1[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address2[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address2[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address2[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Renamer IS
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
SIGNAL ww_dest_address1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out_en1 : std_logic;
SIGNAL ww_dest_address2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out_en2 : std_logic;
SIGNAL ww_tag_rob_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rob_finish : std_logic;
SIGNAL ww_no_tag_left : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tag_out1[0]~output_o\ : std_logic;
SIGNAL \tag_out1[1]~output_o\ : std_logic;
SIGNAL \tag_out1[2]~output_o\ : std_logic;
SIGNAL \tag_out_en1~output_o\ : std_logic;
SIGNAL \tag_out2[0]~output_o\ : std_logic;
SIGNAL \tag_out2[1]~output_o\ : std_logic;
SIGNAL \tag_out2[2]~output_o\ : std_logic;
SIGNAL \tag_out_en2~output_o\ : std_logic;
SIGNAL \no_tag_left~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \tag_rob_in[0]~input_o\ : std_logic;
SIGNAL \rob_finish~input_o\ : std_logic;
SIGNAL \tag_status~0_combout\ : std_logic;
SIGNAL \tag_rob_in[2]~input_o\ : std_logic;
SIGNAL \tag_rob_in[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dest_address1[2]~input_o\ : std_logic;
SIGNAL \dest_address1[1]~input_o\ : std_logic;
SIGNAL \dest_address2[1]~input_o\ : std_logic;
SIGNAL \dest_address2[0]~input_o\ : std_logic;
SIGNAL \dest_address1[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \dest_address2[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tag_status~2_combout\ : std_logic;
SIGNAL \RR:tag_status[0]~0_combout\ : std_logic;
SIGNAL \RR:tag_status[0]~q\ : std_logic;
SIGNAL \tag_status~4_combout\ : std_logic;
SIGNAL \tag_status~17_combout\ : std_logic;
SIGNAL \RR:tag_status[1]~q\ : std_logic;
SIGNAL \tag_status~3_combout\ : std_logic;
SIGNAL \tag_status~11_combout\ : std_logic;
SIGNAL \tag_status~16_combout\ : std_logic;
SIGNAL \RR:tag_status[2]~q\ : std_logic;
SIGNAL \tag_status~1_combout\ : std_logic;
SIGNAL \RR~6_combout\ : std_logic;
SIGNAL \RR~7_combout\ : std_logic;
SIGNAL \tag_status~9_combout\ : std_logic;
SIGNAL \tag_status~10_combout\ : std_logic;
SIGNAL \tag_status~18_combout\ : std_logic;
SIGNAL \RR:tag_status[3]~q\ : std_logic;
SIGNAL \tag_status~5_combout\ : std_logic;
SIGNAL \RR~1_combout\ : std_logic;
SIGNAL \RR~0_combout\ : std_logic;
SIGNAL \tag_status~15_combout\ : std_logic;
SIGNAL \tag_status~19_combout\ : std_logic;
SIGNAL \RR:tag_status[4]~q\ : std_logic;
SIGNAL \tag_status~6_combout\ : std_logic;
SIGNAL \RR~18_combout\ : std_logic;
SIGNAL \RR~4_combout\ : std_logic;
SIGNAL \tag_status~20_combout\ : std_logic;
SIGNAL \RR:tag_status[5]~q\ : std_logic;
SIGNAL \tag_status~7_combout\ : std_logic;
SIGNAL \RR~5_combout\ : std_logic;
SIGNAL \RR~8_combout\ : std_logic;
SIGNAL \tag_status~12_combout\ : std_logic;
SIGNAL \tag_status~21_combout\ : std_logic;
SIGNAL \RR:tag_status[6]~q\ : std_logic;
SIGNAL \tag_status~8_combout\ : std_logic;
SIGNAL \tag_out1~1_combout\ : std_logic;
SIGNAL \tag_out1~0_combout\ : std_logic;
SIGNAL \tag_out1~2_combout\ : std_logic;
SIGNAL \RR~2_combout\ : std_logic;
SIGNAL \tag_status~13_combout\ : std_logic;
SIGNAL \tag_status~14_combout\ : std_logic;
SIGNAL \tag_status~22_combout\ : std_logic;
SIGNAL \RR:tag_status[7]~q\ : std_logic;
SIGNAL \RR~3_combout\ : std_logic;
SIGNAL \tag_out1~3_combout\ : std_logic;
SIGNAL \tag_out1~4_combout\ : std_logic;
SIGNAL \tag_out1~5_combout\ : std_logic;
SIGNAL \tag_out1[0]~reg0_q\ : std_logic;
SIGNAL \tag_out1~6_combout\ : std_logic;
SIGNAL \tag_out1~7_combout\ : std_logic;
SIGNAL \tag_out1~8_combout\ : std_logic;
SIGNAL \tag_out1~9_combout\ : std_logic;
SIGNAL \tag_out1[1]~reg0_q\ : std_logic;
SIGNAL \RR~9_combout\ : std_logic;
SIGNAL \tag_out1~10_combout\ : std_logic;
SIGNAL \tag_out1~11_combout\ : std_logic;
SIGNAL \tag_out1[2]~reg0_q\ : std_logic;
SIGNAL \tag_out_en1~0_combout\ : std_logic;
SIGNAL \tag_out_en1~reg0_q\ : std_logic;
SIGNAL \RR~10_combout\ : std_logic;
SIGNAL \RR~11_combout\ : std_logic;
SIGNAL \RR~12_combout\ : std_logic;
SIGNAL \tag_out2[0]~reg0_q\ : std_logic;
SIGNAL \RR~13_combout\ : std_logic;
SIGNAL \RR~14_combout\ : std_logic;
SIGNAL \RR~15_combout\ : std_logic;
SIGNAL \tag_out2[1]~reg0_q\ : std_logic;
SIGNAL \RR~16_combout\ : std_logic;
SIGNAL \tag_out2[2]~reg0_q\ : std_logic;
SIGNAL \RR~17_combout\ : std_logic;
SIGNAL \tag_out_en2~reg0_q\ : std_logic;
SIGNAL \RR~19_combout\ : std_logic;
SIGNAL \RR~20_combout\ : std_logic;
SIGNAL \RR~21_combout\ : std_logic;
SIGNAL \RR~23_combout\ : std_logic;
SIGNAL \RR~22_combout\ : std_logic;
SIGNAL \RR~24_combout\ : std_logic;
SIGNAL \no_tag_left~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_dest_address1 <= dest_address1;
tag_out1 <= ww_tag_out1;
tag_out_en1 <= ww_tag_out_en1;
ww_dest_address2 <= dest_address2;
tag_out2 <= ww_tag_out2;
tag_out_en2 <= ww_tag_out_en2;
ww_tag_rob_in <= tag_rob_in;
ww_rob_finish <= rob_finish;
no_tag_left <= ww_no_tag_left;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X49_Y34_N9
\tag_out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out1[0]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\tag_out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out1[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\tag_out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out1[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\tag_out_en1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out_en1~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out_en1~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\tag_out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out2[0]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\tag_out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out2[1]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\tag_out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out2[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\tag_out_en2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out_en2~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out_en2~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\no_tag_left~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \no_tag_left~reg0_q\,
	devoe => ww_devoe,
	o => \no_tag_left~output_o\);

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

-- Location: IOIBUF_X45_Y34_N1
\tag_rob_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(0),
	o => \tag_rob_in[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\rob_finish~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rob_finish,
	o => \rob_finish~input_o\);

-- Location: LCCOMB_X46_Y25_N10
\tag_status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~0_combout\ = (!\tag_rob_in[0]~input_o\ & \rob_finish~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_rob_in[0]~input_o\,
	datad => \rob_finish~input_o\,
	combout => \tag_status~0_combout\);

-- Location: IOIBUF_X53_Y17_N8
\tag_rob_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(2),
	o => \tag_rob_in[2]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\tag_rob_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(1),
	o => \tag_rob_in[1]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\dest_address1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address1(2),
	o => \dest_address1[2]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\dest_address1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address1(1),
	o => \dest_address1[1]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\dest_address2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address2(1),
	o => \dest_address2[1]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\dest_address2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address2(0),
	o => \dest_address2[0]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\dest_address1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address1(0),
	o => \dest_address1[0]~input_o\);

-- Location: LCCOMB_X52_Y20_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\dest_address1[1]~input_o\ & (\dest_address2[1]~input_o\ & (\dest_address2[0]~input_o\ $ (!\dest_address1[0]~input_o\)))) # (!\dest_address1[1]~input_o\ & (!\dest_address2[1]~input_o\ & (\dest_address2[0]~input_o\ $ 
-- (!\dest_address1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_address1[1]~input_o\,
	datab => \dest_address2[1]~input_o\,
	datac => \dest_address2[0]~input_o\,
	datad => \dest_address1[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X53_Y22_N8
\dest_address2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address2(2),
	o => \dest_address2[2]~input_o\);

-- Location: LCCOMB_X52_Y22_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (\dest_address1[2]~input_o\ $ (!\dest_address2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dest_address1[2]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \dest_address2[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y25_N12
\tag_status~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~2_combout\ = (\tag_rob_in[0]~input_o\ & \rob_finish~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_rob_in[0]~input_o\,
	datad => \rob_finish~input_o\,
	combout => \tag_status~2_combout\);

-- Location: LCCOMB_X49_Y25_N14
\RR:tag_status[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR:tag_status[0]~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \RR:tag_status[0]~0_combout\);

-- Location: FF_X48_Y25_N25
\RR:tag_status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \RR:tag_status[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[0]~q\);

-- Location: LCCOMB_X48_Y25_N2
\tag_status~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~4_combout\ = (\RR:tag_status[0]~q\ & ((\tag_rob_in[2]~input_o\) # ((\tag_rob_in[1]~input_o\) # (!\tag_status~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[2]~input_o\,
	datab => \tag_status~0_combout\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \RR:tag_status[0]~q\,
	combout => \tag_status~4_combout\);

-- Location: LCCOMB_X48_Y25_N0
\tag_status~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~17_combout\ = (!\reset~input_o\ & ((\tag_status~4_combout\) # ((\tag_status~3_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~4_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~1_combout\,
	datad => \tag_status~3_combout\,
	combout => \tag_status~17_combout\);

-- Location: FF_X48_Y25_N1
\RR:tag_status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[1]~q\);

-- Location: LCCOMB_X48_Y25_N22
\tag_status~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~3_combout\ = (\RR:tag_status[1]~q\ & ((\tag_rob_in[1]~input_o\) # ((\tag_rob_in[2]~input_o\) # (!\tag_status~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_status~2_combout\,
	datac => \tag_rob_in[2]~input_o\,
	datad => \RR:tag_status[1]~q\,
	combout => \tag_status~3_combout\);

-- Location: LCCOMB_X49_Y25_N4
\tag_status~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~11_combout\ = (\tag_status~1_combout\) # ((\tag_status~4_combout\ & ((\tag_status~3_combout\) # (!\Equal0~1_combout\))) # (!\tag_status~4_combout\ & (!\Equal0~1_combout\ & \tag_status~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~4_combout\,
	datab => \Equal0~1_combout\,
	datac => \tag_status~3_combout\,
	datad => \tag_status~1_combout\,
	combout => \tag_status~11_combout\);

-- Location: LCCOMB_X48_Y25_N20
\tag_status~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~16_combout\ = (!\reset~input_o\ & \tag_status~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \tag_status~11_combout\,
	combout => \tag_status~16_combout\);

-- Location: FF_X48_Y25_N21
\RR:tag_status[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[2]~q\);

-- Location: LCCOMB_X48_Y25_N30
\tag_status~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~1_combout\ = (\RR:tag_status[2]~q\ & ((\tag_rob_in[2]~input_o\) # ((!\tag_rob_in[1]~input_o\) # (!\tag_status~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[2]~input_o\,
	datab => \tag_status~0_combout\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \RR:tag_status[2]~q\,
	combout => \tag_status~1_combout\);

-- Location: LCCOMB_X46_Y25_N14
\RR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~6_combout\ = (!\tag_rob_in[2]~input_o\ & (!\tag_rob_in[1]~input_o\ & \rob_finish~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \rob_finish~input_o\,
	combout => \RR~6_combout\);

-- Location: LCCOMB_X47_Y25_N30
\RR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~7_combout\ = (!\RR~6_combout\ & (\RR:tag_status[1]~q\ & \RR:tag_status[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~6_combout\,
	datac => \RR:tag_status[1]~q\,
	datad => \RR:tag_status[0]~q\,
	combout => \RR~7_combout\);

-- Location: LCCOMB_X48_Y25_N24
\tag_status~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~9_combout\ = (!\Equal0~1_combout\ & ((\tag_status~3_combout\) # (\tag_status~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~3_combout\,
	datab => \tag_status~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \tag_status~9_combout\);

-- Location: LCCOMB_X47_Y25_N28
\tag_status~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~10_combout\ = (\tag_status~5_combout\) # ((\RR~7_combout\ & ((\tag_status~9_combout\) # (\tag_status~1_combout\))) # (!\RR~7_combout\ & (\tag_status~9_combout\ & \tag_status~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~7_combout\,
	datab => \tag_status~9_combout\,
	datac => \tag_status~1_combout\,
	datad => \tag_status~5_combout\,
	combout => \tag_status~10_combout\);

-- Location: LCCOMB_X48_Y25_N16
\tag_status~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~18_combout\ = (!\reset~input_o\ & \tag_status~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \tag_status~10_combout\,
	combout => \tag_status~18_combout\);

-- Location: FF_X48_Y25_N17
\RR:tag_status[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[3]~q\);

-- Location: LCCOMB_X48_Y25_N10
\tag_status~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~5_combout\ = (\RR:tag_status[3]~q\ & (((\tag_rob_in[2]~input_o\) # (!\tag_status~2_combout\)) # (!\tag_rob_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_status~2_combout\,
	datac => \tag_rob_in[2]~input_o\,
	datad => \RR:tag_status[3]~q\,
	combout => \tag_status~5_combout\);

-- Location: LCCOMB_X48_Y25_N26
\RR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~1_combout\ = (\tag_status~1_combout\ & ((\tag_status~4_combout\ & (!\tag_status~3_combout\ & !\tag_status~5_combout\)) # (!\tag_status~4_combout\ & ((!\tag_status~5_combout\) # (!\tag_status~3_combout\))))) # (!\tag_status~1_combout\ & 
-- (((!\tag_status~5_combout\) # (!\tag_status~3_combout\)) # (!\tag_status~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~1_combout\,
	datab => \tag_status~4_combout\,
	datac => \tag_status~3_combout\,
	datad => \tag_status~5_combout\,
	combout => \RR~1_combout\);

-- Location: LCCOMB_X48_Y25_N28
\RR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~0_combout\ = (\tag_status~5_combout\ & (\tag_status~3_combout\ & (\tag_status~1_combout\ & \tag_status~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~5_combout\,
	datab => \tag_status~3_combout\,
	datac => \tag_status~1_combout\,
	datad => \tag_status~4_combout\,
	combout => \RR~0_combout\);

-- Location: LCCOMB_X48_Y25_N18
\tag_status~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~15_combout\ = (\tag_status~6_combout\) # ((\RR~0_combout\) # ((!\Equal0~1_combout\ & !\RR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~6_combout\,
	datab => \Equal0~1_combout\,
	datac => \RR~1_combout\,
	datad => \RR~0_combout\,
	combout => \tag_status~15_combout\);

-- Location: LCCOMB_X48_Y25_N6
\tag_status~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~19_combout\ = (!\reset~input_o\ & \tag_status~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \tag_status~15_combout\,
	combout => \tag_status~19_combout\);

-- Location: FF_X48_Y25_N7
\RR:tag_status[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[4]~q\);

-- Location: LCCOMB_X48_Y25_N12
\tag_status~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~6_combout\ = (\RR:tag_status[4]~q\ & (((\tag_rob_in[1]~input_o\) # (!\tag_status~0_combout\)) # (!\tag_rob_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[2]~input_o\,
	datab => \tag_status~0_combout\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \RR:tag_status[4]~q\,
	combout => \tag_status~6_combout\);

-- Location: LCCOMB_X46_Y25_N30
\RR~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~18_combout\ = (\tag_status~7_combout\) # ((\tag_status~6_combout\ & \RR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_status~7_combout\,
	datac => \tag_status~6_combout\,
	datad => \RR~0_combout\,
	combout => \RR~18_combout\);

-- Location: LCCOMB_X48_Y25_N4
\RR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~4_combout\ = (\RR~1_combout\) # ((!\tag_status~6_combout\ & !\RR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~6_combout\,
	datac => \RR~1_combout\,
	datad => \RR~0_combout\,
	combout => \RR~4_combout\);

-- Location: LCCOMB_X46_Y25_N22
\tag_status~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~20_combout\ = (!\reset~input_o\ & ((\RR~18_combout\) # ((!\Equal0~1_combout\ & !\RR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~1_combout\,
	datac => \RR~18_combout\,
	datad => \RR~4_combout\,
	combout => \tag_status~20_combout\);

-- Location: FF_X46_Y25_N23
\RR:tag_status[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[5]~q\);

-- Location: LCCOMB_X46_Y25_N24
\tag_status~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~7_combout\ = (\RR:tag_status[5]~q\ & (((\tag_rob_in[1]~input_o\) # (!\tag_rob_in[2]~input_o\)) # (!\tag_status~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~2_combout\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \RR:tag_status[5]~q\,
	combout => \tag_status~7_combout\);

-- Location: LCCOMB_X47_Y25_N0
\RR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~5_combout\ = ((!\RR~0_combout\) # (!\tag_status~6_combout\)) # (!\tag_status~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_status~7_combout\,
	datac => \tag_status~6_combout\,
	datad => \RR~0_combout\,
	combout => \RR~5_combout\);

-- Location: LCCOMB_X48_Y25_N8
\RR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~8_combout\ = (!\RR~1_combout\ & ((\tag_status~6_combout\ & ((\tag_status~7_combout\) # (\RR~0_combout\))) # (!\tag_status~6_combout\ & (\tag_status~7_combout\ & \RR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~6_combout\,
	datab => \tag_status~7_combout\,
	datac => \RR~1_combout\,
	datad => \RR~0_combout\,
	combout => \RR~8_combout\);

-- Location: LCCOMB_X46_Y25_N16
\tag_status~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~12_combout\ = (\tag_status~8_combout\) # (((!\Equal0~1_combout\ & \RR~8_combout\)) # (!\RR~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~8_combout\,
	datab => \Equal0~1_combout\,
	datac => \RR~5_combout\,
	datad => \RR~8_combout\,
	combout => \tag_status~12_combout\);

-- Location: LCCOMB_X46_Y25_N18
\tag_status~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~21_combout\ = (!\reset~input_o\ & \tag_status~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \tag_status~12_combout\,
	combout => \tag_status~21_combout\);

-- Location: FF_X46_Y25_N19
\RR:tag_status[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[6]~q\);

-- Location: LCCOMB_X46_Y25_N0
\tag_status~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~8_combout\ = (\RR:tag_status[6]~q\ & (((!\tag_rob_in[1]~input_o\) # (!\tag_rob_in[2]~input_o\)) # (!\tag_status~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~0_combout\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_rob_in[1]~input_o\,
	datad => \RR:tag_status[6]~q\,
	combout => \tag_status~8_combout\);

-- Location: LCCOMB_X49_Y25_N22
\tag_out1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~1_combout\ = (\tag_status~4_combout\ & (!\tag_status~5_combout\ & (\tag_status~3_combout\ $ (\tag_status~1_combout\)))) # (!\tag_status~4_combout\ & (((!\tag_status~5_combout\ & \tag_status~1_combout\)) # (!\tag_status~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~4_combout\,
	datab => \tag_status~5_combout\,
	datac => \tag_status~3_combout\,
	datad => \tag_status~1_combout\,
	combout => \tag_out1~1_combout\);

-- Location: LCCOMB_X49_Y25_N24
\tag_out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~0_combout\ = (!\RR~1_combout\ & (!\tag_status~7_combout\ & (\tag_status~6_combout\ $ (\RR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~6_combout\,
	datab => \RR~0_combout\,
	datac => \RR~1_combout\,
	datad => \tag_status~7_combout\,
	combout => \tag_out1~0_combout\);

-- Location: LCCOMB_X49_Y25_N8
\tag_out1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~2_combout\ = (\Equal0~1_combout\ & (((\tag_out1[0]~reg0_q\)))) # (!\Equal0~1_combout\ & ((\tag_out1~1_combout\) # ((\tag_out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out1~1_combout\,
	datab => \tag_out1[0]~reg0_q\,
	datac => \Equal0~1_combout\,
	datad => \tag_out1~0_combout\,
	combout => \tag_out1~2_combout\);

-- Location: LCCOMB_X47_Y25_N8
\RR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~2_combout\ = (\tag_status~8_combout\ & (\tag_status~7_combout\ & (\tag_status~6_combout\ & \RR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~8_combout\,
	datab => \tag_status~7_combout\,
	datac => \tag_status~6_combout\,
	datad => \RR~0_combout\,
	combout => \RR~2_combout\);

-- Location: LCCOMB_X47_Y25_N6
\tag_status~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~13_combout\ = (!\Equal0~1_combout\ & ((\tag_status~8_combout\) # (!\RR~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \tag_status~8_combout\,
	datad => \RR~5_combout\,
	combout => \tag_status~13_combout\);

-- Location: LCCOMB_X47_Y25_N24
\tag_status~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~14_combout\ = (\RR~3_combout\) # ((\RR~2_combout\) # ((\RR~8_combout\ & \tag_status~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~3_combout\,
	datab => \RR~2_combout\,
	datac => \RR~8_combout\,
	datad => \tag_status~13_combout\,
	combout => \tag_status~14_combout\);

-- Location: LCCOMB_X47_Y25_N2
\tag_status~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~22_combout\ = (!\reset~input_o\ & \tag_status~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \tag_status~14_combout\,
	combout => \tag_status~22_combout\);

-- Location: FF_X47_Y25_N3
\RR:tag_status[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_status~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[7]~q\);

-- Location: LCCOMB_X47_Y25_N4
\RR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~3_combout\ = (\RR:tag_status[7]~q\ & (((!\tag_status~2_combout\) # (!\tag_rob_in[1]~input_o\)) # (!\tag_rob_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[2]~input_o\,
	datab => \tag_rob_in[1]~input_o\,
	datac => \tag_status~2_combout\,
	datad => \RR:tag_status[7]~q\,
	combout => \RR~3_combout\);

-- Location: LCCOMB_X47_Y25_N22
\tag_out1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~3_combout\ = (!\Equal0~1_combout\ & (!\RR~3_combout\ & !\RR~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \RR~3_combout\,
	datac => \RR~2_combout\,
	combout => \tag_out1~3_combout\);

-- Location: LCCOMB_X49_Y25_N6
\tag_out1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~4_combout\ = (!\RR~4_combout\ & ((\tag_out1[0]~reg0_q\) # (\tag_out1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR~4_combout\,
	datac => \tag_out1[0]~reg0_q\,
	datad => \tag_out1~3_combout\,
	combout => \tag_out1~4_combout\);

-- Location: LCCOMB_X49_Y25_N12
\tag_out1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~5_combout\ = (\tag_out1~2_combout\) # ((\tag_out1~4_combout\ & ((\tag_status~8_combout\) # (!\RR~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~8_combout\,
	datab => \RR~5_combout\,
	datac => \tag_out1~2_combout\,
	datad => \tag_out1~4_combout\,
	combout => \tag_out1~5_combout\);

-- Location: FF_X49_Y25_N13
\tag_out1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out1~5_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out1[0]~reg0_q\);

-- Location: LCCOMB_X48_Y25_N14
\tag_out1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~6_combout\ = (\tag_status~9_combout\ & ((\tag_status~1_combout\ & (!\tag_status~5_combout\ & !\RR~7_combout\)) # (!\tag_status~1_combout\ & ((!\RR~7_combout\) # (!\tag_status~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~1_combout\,
	datab => \tag_status~5_combout\,
	datac => \tag_status~9_combout\,
	datad => \RR~7_combout\,
	combout => \tag_out1~6_combout\);

-- Location: LCCOMB_X49_Y25_N28
\tag_out1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~7_combout\ = (\Equal0~1_combout\ & ((\tag_out1[1]~reg0_q\) # ((\RR~4_combout\ & \tag_out1~6_combout\)))) # (!\Equal0~1_combout\ & (((\RR~4_combout\ & \tag_out1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \tag_out1[1]~reg0_q\,
	datac => \RR~4_combout\,
	datad => \tag_out1~6_combout\,
	combout => \tag_out1~7_combout\);

-- Location: LCCOMB_X49_Y25_N30
\tag_out1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~8_combout\ = (\tag_out1[1]~reg0_q\) # ((!\tag_status~8_combout\ & (!\Equal0~1_combout\ & \RR~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~8_combout\,
	datab => \tag_out1[1]~reg0_q\,
	datac => \Equal0~1_combout\,
	datad => \RR~5_combout\,
	combout => \tag_out1~8_combout\);

-- Location: LCCOMB_X49_Y25_N2
\tag_out1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~9_combout\ = (\tag_out1~7_combout\) # ((\RR~8_combout\ & ((\tag_out1~8_combout\) # (\tag_out1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~8_combout\,
	datab => \tag_out1~7_combout\,
	datac => \tag_out1~8_combout\,
	datad => \tag_out1~3_combout\,
	combout => \tag_out1~9_combout\);

-- Location: FF_X49_Y25_N3
\tag_out1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out1~9_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out1[1]~reg0_q\);

-- Location: LCCOMB_X47_Y25_N16
\RR~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~9_combout\ = (\RR~8_combout\ & ((\tag_status~8_combout\) # (!\RR~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~8_combout\,
	datac => \RR~8_combout\,
	datad => \RR~5_combout\,
	combout => \RR~9_combout\);

-- Location: LCCOMB_X47_Y25_N10
\tag_out1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~10_combout\ = (\Equal0~1_combout\ & (\tag_out1[2]~reg0_q\)) # (!\Equal0~1_combout\ & ((\RR~9_combout\ & (\tag_out1[2]~reg0_q\)) # (!\RR~9_combout\ & ((!\RR~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \tag_out1[2]~reg0_q\,
	datac => \RR~1_combout\,
	datad => \RR~9_combout\,
	combout => \tag_out1~10_combout\);

-- Location: LCCOMB_X47_Y25_N20
\tag_out1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out1~11_combout\ = (\tag_out1~10_combout\) # ((\RR~9_combout\ & \tag_out1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR~9_combout\,
	datac => \tag_out1~3_combout\,
	datad => \tag_out1~10_combout\,
	combout => \tag_out1~11_combout\);

-- Location: FF_X47_Y25_N21
\tag_out1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out1~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out1[2]~reg0_q\);

-- Location: LCCOMB_X47_Y25_N14
\tag_out_en1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out_en1~0_combout\ = (!\Equal0~1_combout\ & (((!\RR~2_combout\ & !\RR~3_combout\)) # (!\RR~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \RR~2_combout\,
	datac => \RR~3_combout\,
	datad => \RR~9_combout\,
	combout => \tag_out_en1~0_combout\);

-- Location: FF_X47_Y25_N15
\tag_out_en1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out_en1~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out_en1~reg0_q\);

-- Location: LCCOMB_X49_Y25_N20
\RR~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~10_combout\ = (\tag_status~4_combout\ & (((!\tag_status~5_combout\ & \tag_status~1_combout\)) # (!\tag_status~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~4_combout\,
	datab => \tag_status~5_combout\,
	datac => \tag_status~3_combout\,
	datad => \tag_status~1_combout\,
	combout => \RR~10_combout\);

-- Location: LCCOMB_X49_Y25_N18
\RR~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~11_combout\ = (\tag_status~6_combout\ & ((\RR~0_combout\ & (!\tag_status~7_combout\)) # (!\RR~0_combout\ & ((\RR~10_combout\))))) # (!\tag_status~6_combout\ & (((\RR~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~6_combout\,
	datab => \RR~0_combout\,
	datac => \tag_status~7_combout\,
	datad => \RR~10_combout\,
	combout => \RR~11_combout\);

-- Location: LCCOMB_X49_Y25_N0
\RR~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~12_combout\ = (\RR~11_combout\) # ((\RR~2_combout\ & ((\tag_out2[0]~reg0_q\) # (!\RR~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~2_combout\,
	datab => \RR~3_combout\,
	datac => \tag_out2[0]~reg0_q\,
	datad => \RR~11_combout\,
	combout => \RR~12_combout\);

-- Location: FF_X49_Y25_N1
\tag_out2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR~12_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out2[0]~reg0_q\);

-- Location: LCCOMB_X49_Y25_N16
\RR~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~13_combout\ = (\RR~7_combout\ & ((!\tag_status~5_combout\) # (!\tag_status~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_status~1_combout\,
	datac => \tag_status~5_combout\,
	datad => \RR~7_combout\,
	combout => \RR~13_combout\);

-- Location: LCCOMB_X49_Y25_N26
\RR~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~14_combout\ = (\tag_out2[1]~reg0_q\) # ((!\tag_status~8_combout\) # (!\RR~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out2[1]~reg0_q\,
	datab => \RR~3_combout\,
	datad => \tag_status~8_combout\,
	combout => \RR~14_combout\);

-- Location: LCCOMB_X49_Y25_N10
\RR~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~15_combout\ = (\RR~5_combout\ & (\RR~13_combout\)) # (!\RR~5_combout\ & ((\RR~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR~13_combout\,
	datac => \RR~14_combout\,
	datad => \RR~5_combout\,
	combout => \RR~15_combout\);

-- Location: FF_X49_Y25_N11
\tag_out2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out2[1]~reg0_q\);

-- Location: LCCOMB_X47_Y25_N12
\RR~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~16_combout\ = (\RR~2_combout\ & (((\tag_out2[2]~reg0_q\)) # (!\RR~3_combout\))) # (!\RR~2_combout\ & (((\RR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~2_combout\,
	datab => \RR~3_combout\,
	datac => \tag_out2[2]~reg0_q\,
	datad => \RR~0_combout\,
	combout => \RR~16_combout\);

-- Location: FF_X47_Y25_N13
\tag_out2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR~16_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out2[2]~reg0_q\);

-- Location: LCCOMB_X47_Y25_N26
\RR~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~17_combout\ = (!\RR~2_combout\) # (!\RR~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RR~3_combout\,
	datad => \RR~2_combout\,
	combout => \RR~17_combout\);

-- Location: FF_X47_Y25_N27
\tag_out_en2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR~17_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out_en2~reg0_q\);

-- Location: LCCOMB_X46_Y25_N28
\RR~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~19_combout\ = (\Equal0~1_combout\ & ((\tag_status~4_combout\) # ((\tag_status~3_combout\)))) # (!\Equal0~1_combout\ & (((\RR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \tag_status~4_combout\,
	datac => \tag_status~3_combout\,
	datad => \RR~4_combout\,
	combout => \RR~19_combout\);

-- Location: LCCOMB_X46_Y25_N26
\RR~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~20_combout\ = (\tag_status~15_combout\ & ((\RR~19_combout\ & (\RR~18_combout\)) # (!\RR~19_combout\ & ((!\Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~18_combout\,
	datab => \Equal0~1_combout\,
	datac => \tag_status~15_combout\,
	datad => \RR~19_combout\,
	combout => \RR~20_combout\);

-- Location: LCCOMB_X46_Y25_N4
\RR~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~21_combout\ = (\RR~19_combout\ & (!\RR~18_combout\ & ((!\tag_status~15_combout\)))) # (!\RR~19_combout\ & (\Equal0~1_combout\ & ((!\tag_status~15_combout\) # (!\RR~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~18_combout\,
	datab => \Equal0~1_combout\,
	datac => \tag_status~15_combout\,
	datad => \RR~19_combout\,
	combout => \RR~21_combout\);

-- Location: LCCOMB_X46_Y25_N8
\RR~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~23_combout\ = (\RR~20_combout\ & (\tag_status~12_combout\ & (!\RR~21_combout\ & \tag_status~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~20_combout\,
	datab => \tag_status~12_combout\,
	datac => \RR~21_combout\,
	datad => \tag_status~14_combout\,
	combout => \RR~23_combout\);

-- Location: LCCOMB_X46_Y25_N2
\RR~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~22_combout\ = (\RR~20_combout\ & ((\tag_status~12_combout\ & (\RR~21_combout\ $ (!\tag_status~14_combout\))) # (!\tag_status~12_combout\ & (!\RR~21_combout\ & \tag_status~14_combout\)))) # (!\RR~20_combout\ & (\tag_status~12_combout\ & 
-- (!\RR~21_combout\ & \tag_status~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~20_combout\,
	datab => \tag_status~12_combout\,
	datac => \RR~21_combout\,
	datad => \tag_status~14_combout\,
	combout => \RR~22_combout\);

-- Location: LCCOMB_X46_Y25_N20
\RR~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~24_combout\ = (\RR~23_combout\ & (!\RR~22_combout\ & ((\tag_status~11_combout\) # (\tag_status~10_combout\)))) # (!\RR~23_combout\ & (\tag_status~11_combout\ & (\tag_status~10_combout\ & \RR~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~11_combout\,
	datab => \tag_status~10_combout\,
	datac => \RR~23_combout\,
	datad => \RR~22_combout\,
	combout => \RR~24_combout\);

-- Location: FF_X46_Y25_N21
\no_tag_left~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR~24_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \no_tag_left~reg0_q\);

ww_tag_out1(0) <= \tag_out1[0]~output_o\;

ww_tag_out1(1) <= \tag_out1[1]~output_o\;

ww_tag_out1(2) <= \tag_out1[2]~output_o\;

ww_tag_out_en1 <= \tag_out_en1~output_o\;

ww_tag_out2(0) <= \tag_out2[0]~output_o\;

ww_tag_out2(1) <= \tag_out2[1]~output_o\;

ww_tag_out2(2) <= \tag_out2[2]~output_o\;

ww_tag_out_en2 <= \tag_out_en2~output_o\;

ww_no_tag_left <= \no_tag_left~output_o\;
END structure;


