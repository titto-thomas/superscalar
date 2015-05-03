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

-- DATE "05/02/2015 19:02:45"

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
	dest_address : IN std_logic_vector(2 DOWNTO 0);
	tag_out : OUT std_logic_vector(2 DOWNTO 0);
	tag_out_en : OUT std_logic;
	tag_rob_in : IN std_logic_vector(2 DOWNTO 0);
	rob_finish : IN std_logic;
	no_tag_left : OUT std_logic
	);
END Renamer;

-- Design Ports Information
-- dest_address[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_address[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_out_en	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- no_tag_left	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_rob_in[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rob_finish	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_dest_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tag_out_en : std_logic;
SIGNAL ww_tag_rob_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rob_finish : std_logic;
SIGNAL ww_no_tag_left : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dest_address[0]~input_o\ : std_logic;
SIGNAL \dest_address[1]~input_o\ : std_logic;
SIGNAL \dest_address[2]~input_o\ : std_logic;
SIGNAL \tag_out[0]~output_o\ : std_logic;
SIGNAL \tag_out[1]~output_o\ : std_logic;
SIGNAL \tag_out[2]~output_o\ : std_logic;
SIGNAL \tag_out_en~output_o\ : std_logic;
SIGNAL \no_tag_left~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \tag_rob_in[1]~input_o\ : std_logic;
SIGNAL \tag_rob_in[2]~input_o\ : std_logic;
SIGNAL \tag_rob_in[0]~input_o\ : std_logic;
SIGNAL \rob_finish~input_o\ : std_logic;
SIGNAL \tag_status~6_combout\ : std_logic;
SIGNAL \tag_status~10_combout\ : std_logic;
SIGNAL \tag_status~4_combout\ : std_logic;
SIGNAL \RR:tag_status[0]~0_combout\ : std_logic;
SIGNAL \RR:tag_status[0]~q\ : std_logic;
SIGNAL \tag_status~5_combout\ : std_logic;
SIGNAL \tag_status~22_combout\ : std_logic;
SIGNAL \RR:tag_status[1]~q\ : std_logic;
SIGNAL \tag_out~1_combout\ : std_logic;
SIGNAL \tag_status~17_combout\ : std_logic;
SIGNAL \RR:tag_status[2]~q\ : std_logic;
SIGNAL \tag_status~7_combout\ : std_logic;
SIGNAL \tag_status~8_combout\ : std_logic;
SIGNAL \tag_status~18_combout\ : std_logic;
SIGNAL \RR:tag_status[3]~q\ : std_logic;
SIGNAL \tag_status~9_combout\ : std_logic;
SIGNAL \tag_out~6_combout\ : std_logic;
SIGNAL \tag_status~19_combout\ : std_logic;
SIGNAL \RR:tag_status[4]~q\ : std_logic;
SIGNAL \tag_status~12_combout\ : std_logic;
SIGNAL \RR~0_combout\ : std_logic;
SIGNAL \tag_status~21_combout\ : std_logic;
SIGNAL \RR:tag_status[5]~q\ : std_logic;
SIGNAL \tag_status~14_combout\ : std_logic;
SIGNAL \tag_status~20_combout\ : std_logic;
SIGNAL \RR:tag_status[6]~q\ : std_logic;
SIGNAL \tag_status~13_combout\ : std_logic;
SIGNAL \tag_status~11_combout\ : std_logic;
SIGNAL \tag_out~0_combout\ : std_logic;
SIGNAL \tag_out~2_combout\ : std_logic;
SIGNAL \tag_out~3_combout\ : std_logic;
SIGNAL \RR~1_combout\ : std_logic;
SIGNAL \tag_status~16_combout\ : std_logic;
SIGNAL \RR:tag_status[7]~q\ : std_logic;
SIGNAL \tag_status~15_combout\ : std_logic;
SIGNAL \tag_out~4_combout\ : std_logic;
SIGNAL \tag_out~5_combout\ : std_logic;
SIGNAL \tag_out[0]~reg0_q\ : std_logic;
SIGNAL \tag_out~7_combout\ : std_logic;
SIGNAL \tag_out[1]~reg0_q\ : std_logic;
SIGNAL \tag_out~8_combout\ : std_logic;
SIGNAL \tag_out[2]~reg0_q\ : std_logic;
SIGNAL \tag_out_en~0_combout\ : std_logic;
SIGNAL \tag_out_en~1_combout\ : std_logic;
SIGNAL \tag_out_en~2_combout\ : std_logic;
SIGNAL \tag_out_en~reg0_q\ : std_logic;
SIGNAL \no_tag_left~0_combout\ : std_logic;
SIGNAL \no_tag_left~1_combout\ : std_logic;
SIGNAL \no_tag_left~2_combout\ : std_logic;
SIGNAL \no_tag_left~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_dest_address <= dest_address;
tag_out <= ww_tag_out;
tag_out_en <= ww_tag_out_en;
ww_tag_rob_in <= tag_rob_in;
ww_rob_finish <= rob_finish;
no_tag_left <= ww_no_tag_left;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X45_Y34_N9
\tag_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\tag_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\tag_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\tag_out_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tag_out_en~reg0_q\,
	devoe => ww_devoe,
	o => \tag_out_en~output_o\);

-- Location: IOOBUF_X45_Y34_N2
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

-- Location: IOIBUF_X51_Y34_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\tag_rob_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(1),
	o => \tag_rob_in[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\tag_rob_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(2),
	o => \tag_rob_in[2]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\tag_rob_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_rob_in(0),
	o => \tag_rob_in[0]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\rob_finish~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rob_finish,
	o => \rob_finish~input_o\);

-- Location: LCCOMB_X48_Y33_N26
\tag_status~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~6_combout\ = (!\tag_rob_in[0]~input_o\ & \rob_finish~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_rob_in[0]~input_o\,
	datac => \rob_finish~input_o\,
	combout => \tag_status~6_combout\);

-- Location: LCCOMB_X48_Y33_N10
\tag_status~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~10_combout\ = (\tag_rob_in[1]~input_o\) # (((\tag_rob_in[2]~input_o\) # (!\rob_finish~input_o\)) # (!\tag_rob_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[0]~input_o\,
	datac => \rob_finish~input_o\,
	datad => \tag_rob_in[2]~input_o\,
	combout => \tag_status~10_combout\);

-- Location: LCCOMB_X48_Y33_N28
\tag_status~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~4_combout\ = (\tag_rob_in[1]~input_o\) # ((\tag_rob_in[0]~input_o\) # ((\tag_rob_in[2]~input_o\) # (!\rob_finish~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[0]~input_o\,
	datac => \rob_finish~input_o\,
	datad => \tag_rob_in[2]~input_o\,
	combout => \tag_status~4_combout\);

-- Location: LCCOMB_X48_Y33_N2
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

-- Location: FF_X48_Y33_N3
\RR:tag_status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RR:tag_status[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR:tag_status[0]~q\);

-- Location: LCCOMB_X48_Y33_N6
\tag_status~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~5_combout\ = (\tag_status~4_combout\ & \RR:tag_status[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_status~4_combout\,
	datad => \RR:tag_status[0]~q\,
	combout => \tag_status~5_combout\);

-- Location: LCCOMB_X48_Y33_N8
\tag_status~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~22_combout\ = (!\reset~input_o\ & ((\tag_status~5_combout\) # ((\RR:tag_status[1]~q\ & \tag_status~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tag_status~5_combout\,
	datac => \RR:tag_status[1]~q\,
	datad => \tag_status~10_combout\,
	combout => \tag_status~22_combout\);

-- Location: FF_X48_Y33_N9
\RR:tag_status[1]\ : dffeas
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
	q => \RR:tag_status[1]~q\);

-- Location: LCCOMB_X48_Y33_N14
\tag_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~1_combout\ = (\tag_status~10_combout\ & (\tag_status~4_combout\ & (\RR:tag_status[1]~q\ & \RR:tag_status[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~10_combout\,
	datab => \tag_status~4_combout\,
	datac => \RR:tag_status[1]~q\,
	datad => \RR:tag_status[0]~q\,
	combout => \tag_out~1_combout\);

-- Location: LCCOMB_X48_Y33_N24
\tag_status~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~17_combout\ = (!\reset~input_o\ & ((\tag_out~1_combout\) # (\tag_status~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tag_out~1_combout\,
	datac => \tag_status~7_combout\,
	combout => \tag_status~17_combout\);

-- Location: FF_X48_Y33_N25
\RR:tag_status[2]\ : dffeas
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
	q => \RR:tag_status[2]~q\);

-- Location: LCCOMB_X48_Y33_N4
\tag_status~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~7_combout\ = (\RR:tag_status[2]~q\ & (((\tag_rob_in[2]~input_o\) # (!\tag_status~6_combout\)) # (!\tag_rob_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_status~6_combout\,
	datad => \RR:tag_status[2]~q\,
	combout => \tag_status~7_combout\);

-- Location: LCCOMB_X48_Y33_N30
\tag_status~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~8_combout\ = (\tag_rob_in[0]~input_o\ & \rob_finish~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_rob_in[0]~input_o\,
	datac => \rob_finish~input_o\,
	combout => \tag_status~8_combout\);

-- Location: LCCOMB_X49_Y33_N12
\tag_status~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~18_combout\ = (!\reset~input_o\ & ((\tag_status~9_combout\) # ((\tag_out~1_combout\ & \tag_status~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out~1_combout\,
	datab => \reset~input_o\,
	datac => \tag_status~7_combout\,
	datad => \tag_status~9_combout\,
	combout => \tag_status~18_combout\);

-- Location: FF_X49_Y33_N13
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

-- Location: LCCOMB_X49_Y33_N22
\tag_status~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~9_combout\ = (\RR:tag_status[3]~q\ & (((\tag_rob_in[2]~input_o\) # (!\tag_status~8_combout\)) # (!\tag_rob_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_status~8_combout\,
	datac => \tag_rob_in[2]~input_o\,
	datad => \RR:tag_status[3]~q\,
	combout => \tag_status~9_combout\);

-- Location: LCCOMB_X48_Y33_N0
\tag_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~6_combout\ = (\tag_status~7_combout\ & (\tag_out~1_combout\ & \tag_status~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_status~7_combout\,
	datac => \tag_out~1_combout\,
	datad => \tag_status~9_combout\,
	combout => \tag_out~6_combout\);

-- Location: LCCOMB_X48_Y33_N18
\tag_status~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~19_combout\ = (!\reset~input_o\ & ((\tag_status~12_combout\) # (\tag_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tag_status~12_combout\,
	datad => \tag_out~6_combout\,
	combout => \tag_status~19_combout\);

-- Location: FF_X48_Y33_N19
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

-- Location: LCCOMB_X48_Y33_N16
\tag_status~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~12_combout\ = (\RR:tag_status[4]~q\ & ((\tag_rob_in[1]~input_o\) # ((!\tag_status~6_combout\) # (!\tag_rob_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_status~6_combout\,
	datad => \RR:tag_status[4]~q\,
	combout => \tag_status~12_combout\);

-- Location: LCCOMB_X49_Y33_N6
\RR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~0_combout\ = (\tag_status~12_combout\ & (\tag_status~7_combout\ & (\tag_status~9_combout\ & \tag_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~12_combout\,
	datab => \tag_status~7_combout\,
	datac => \tag_status~9_combout\,
	datad => \tag_out~1_combout\,
	combout => \RR~0_combout\);

-- Location: LCCOMB_X50_Y33_N0
\tag_status~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~21_combout\ = (!\reset~input_o\ & ((\RR~0_combout\) # (\tag_status~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \RR~0_combout\,
	datad => \tag_status~14_combout\,
	combout => \tag_status~21_combout\);

-- Location: FF_X50_Y33_N1
\RR:tag_status[5]\ : dffeas
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
	q => \RR:tag_status[5]~q\);

-- Location: LCCOMB_X50_Y33_N30
\tag_status~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~14_combout\ = (\RR:tag_status[5]~q\ & ((\tag_rob_in[1]~input_o\) # ((!\tag_status~8_combout\) # (!\tag_rob_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_status~8_combout\,
	datad => \RR:tag_status[5]~q\,
	combout => \tag_status~14_combout\);

-- Location: LCCOMB_X50_Y33_N28
\tag_status~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~20_combout\ = (!\reset~input_o\ & ((\tag_status~13_combout\) # ((\RR~0_combout\ & \tag_status~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~13_combout\,
	datab => \reset~input_o\,
	datac => \RR~0_combout\,
	datad => \tag_status~14_combout\,
	combout => \tag_status~20_combout\);

-- Location: FF_X50_Y33_N29
\RR:tag_status[6]\ : dffeas
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
	q => \RR:tag_status[6]~q\);

-- Location: LCCOMB_X50_Y33_N10
\tag_status~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~13_combout\ = (\RR:tag_status[6]~q\ & (((!\tag_status~6_combout\) # (!\tag_rob_in[2]~input_o\)) # (!\tag_rob_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_rob_in[2]~input_o\,
	datac => \tag_status~6_combout\,
	datad => \RR:tag_status[6]~q\,
	combout => \tag_status~13_combout\);

-- Location: LCCOMB_X48_Y33_N20
\tag_status~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~11_combout\ = (\tag_status~10_combout\ & \RR:tag_status[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~10_combout\,
	datac => \RR:tag_status[1]~q\,
	combout => \tag_status~11_combout\);

-- Location: LCCOMB_X49_Y33_N20
\tag_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~0_combout\ = (\tag_status~5_combout\ & (((!\tag_status~9_combout\ & \tag_status~7_combout\)) # (!\tag_status~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~9_combout\,
	datab => \tag_status~5_combout\,
	datac => \tag_status~7_combout\,
	datad => \tag_status~11_combout\,
	combout => \tag_out~0_combout\);

-- Location: LCCOMB_X49_Y33_N16
\tag_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~2_combout\ = (\tag_out~0_combout\) # ((\RR~0_combout\ & ((\tag_status~13_combout\) # (!\tag_status~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR~0_combout\,
	datab => \tag_status~13_combout\,
	datac => \tag_status~14_combout\,
	datad => \tag_out~0_combout\,
	combout => \tag_out~2_combout\);

-- Location: LCCOMB_X49_Y33_N24
\tag_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~3_combout\ = (!\reset~input_o\ & \tag_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \tag_out~2_combout\,
	combout => \tag_out~3_combout\);

-- Location: LCCOMB_X49_Y33_N2
\RR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RR~1_combout\ = (\tag_status~14_combout\ & \RR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_status~14_combout\,
	datad => \RR~0_combout\,
	combout => \RR~1_combout\);

-- Location: LCCOMB_X49_Y33_N18
\tag_status~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~16_combout\ = (!\reset~input_o\ & ((\tag_status~15_combout\) # ((\tag_status~13_combout\ & \RR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tag_status~15_combout\,
	datac => \tag_status~13_combout\,
	datad => \RR~1_combout\,
	combout => \tag_status~16_combout\);

-- Location: FF_X49_Y33_N19
\RR:tag_status[7]\ : dffeas
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
	q => \RR:tag_status[7]~q\);

-- Location: LCCOMB_X49_Y33_N28
\tag_status~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_status~15_combout\ = (\RR:tag_status[7]~q\ & (((!\tag_rob_in[2]~input_o\) # (!\tag_status~8_combout\)) # (!\tag_rob_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_rob_in[1]~input_o\,
	datab => \tag_status~8_combout\,
	datac => \RR:tag_status[7]~q\,
	datad => \tag_rob_in[2]~input_o\,
	combout => \tag_status~15_combout\);

-- Location: LCCOMB_X49_Y33_N14
\tag_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~4_combout\ = (\reset~input_o\) # (!\tag_status~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \tag_status~15_combout\,
	combout => \tag_out~4_combout\);

-- Location: LCCOMB_X49_Y33_N0
\tag_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~5_combout\ = (((\tag_out~4_combout\) # (!\RR~0_combout\)) # (!\tag_status~13_combout\)) # (!\tag_status~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~14_combout\,
	datab => \tag_status~13_combout\,
	datac => \tag_out~4_combout\,
	datad => \RR~0_combout\,
	combout => \tag_out~5_combout\);

-- Location: FF_X49_Y33_N25
\tag_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out~3_combout\,
	ena => \tag_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out[0]~reg0_q\);

-- Location: LCCOMB_X49_Y33_N26
\tag_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~7_combout\ = (!\reset~input_o\ & ((\RR~1_combout\) # ((\tag_out~1_combout\ & !\tag_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out~1_combout\,
	datab => \reset~input_o\,
	datac => \tag_out~6_combout\,
	datad => \RR~1_combout\,
	combout => \tag_out~7_combout\);

-- Location: FF_X49_Y33_N27
\tag_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out~7_combout\,
	ena => \tag_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out[1]~reg0_q\);

-- Location: LCCOMB_X49_Y33_N8
\tag_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out~8_combout\ = (\tag_out~1_combout\ & (!\reset~input_o\ & (\tag_status~7_combout\ & \tag_status~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out~1_combout\,
	datab => \reset~input_o\,
	datac => \tag_status~7_combout\,
	datad => \tag_status~9_combout\,
	combout => \tag_out~8_combout\);

-- Location: FF_X49_Y33_N9
\tag_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out~8_combout\,
	ena => \tag_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out[2]~reg0_q\);

-- Location: LCCOMB_X48_Y33_N22
\tag_out_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out_en~0_combout\ = (((!\RR:tag_status[1]~q\) # (!\RR:tag_status[3]~q\)) # (!\RR:tag_status[0]~q\)) # (!\RR:tag_status[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR:tag_status[2]~q\,
	datab => \RR:tag_status[0]~q\,
	datac => \RR:tag_status[3]~q\,
	datad => \RR:tag_status[1]~q\,
	combout => \tag_out_en~0_combout\);

-- Location: LCCOMB_X50_Y33_N20
\tag_out_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out_en~1_combout\ = (((!\RR:tag_status[7]~q\) # (!\RR:tag_status[4]~q\)) # (!\RR:tag_status[6]~q\)) # (!\RR:tag_status[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR:tag_status[5]~q\,
	datab => \RR:tag_status[6]~q\,
	datac => \RR:tag_status[4]~q\,
	datad => \RR:tag_status[7]~q\,
	combout => \tag_out_en~1_combout\);

-- Location: LCCOMB_X48_Y33_N12
\tag_out_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tag_out_en~2_combout\ = (!\reset~input_o\ & ((\tag_out_en~0_combout\) # ((\rob_finish~input_o\) # (\tag_out_en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_out_en~0_combout\,
	datab => \reset~input_o\,
	datac => \rob_finish~input_o\,
	datad => \tag_out_en~1_combout\,
	combout => \tag_out_en~2_combout\);

-- Location: FF_X48_Y33_N13
\tag_out_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tag_out_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_out_en~reg0_q\);

-- Location: LCCOMB_X49_Y33_N4
\no_tag_left~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \no_tag_left~0_combout\ = (\tag_status~9_combout\ & ((\tag_status~7_combout\ & ((\tag_status~12_combout\) # (\tag_out~1_combout\))) # (!\tag_status~7_combout\ & (\tag_status~12_combout\ & \tag_out~1_combout\)))) # (!\tag_status~9_combout\ & 
-- (\tag_status~7_combout\ & (\tag_status~12_combout\ & \tag_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~9_combout\,
	datab => \tag_status~7_combout\,
	datac => \tag_status~12_combout\,
	datad => \tag_out~1_combout\,
	combout => \no_tag_left~0_combout\);

-- Location: LCCOMB_X49_Y33_N30
\no_tag_left~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \no_tag_left~1_combout\ = (\no_tag_left~0_combout\ & ((\tag_status~14_combout\ & ((\tag_status~13_combout\) # (\RR~0_combout\))) # (!\tag_status~14_combout\ & (\tag_status~13_combout\ & \RR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~14_combout\,
	datab => \tag_status~13_combout\,
	datac => \no_tag_left~0_combout\,
	datad => \RR~0_combout\,
	combout => \no_tag_left~1_combout\);

-- Location: LCCOMB_X49_Y33_N10
\no_tag_left~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \no_tag_left~2_combout\ = (\no_tag_left~1_combout\ & (\tag_status~16_combout\ & ((\tag_status~5_combout\) # (\tag_status~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_status~5_combout\,
	datab => \tag_status~11_combout\,
	datac => \no_tag_left~1_combout\,
	datad => \tag_status~16_combout\,
	combout => \no_tag_left~2_combout\);

-- Location: FF_X49_Y33_N11
\no_tag_left~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \no_tag_left~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \no_tag_left~reg0_q\);

-- Location: IOIBUF_X5_Y0_N22
\dest_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address(0),
	o => \dest_address[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\dest_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address(1),
	o => \dest_address[1]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\dest_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_address(2),
	o => \dest_address[2]~input_o\);

ww_tag_out(0) <= \tag_out[0]~output_o\;

ww_tag_out(1) <= \tag_out[1]~output_o\;

ww_tag_out(2) <= \tag_out[2]~output_o\;

ww_tag_out_en <= \tag_out_en~output_o\;

ww_no_tag_left <= \no_tag_left~output_o\;
END structure;


