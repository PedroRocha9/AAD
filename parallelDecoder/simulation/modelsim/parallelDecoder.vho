-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/06/2022 16:09:16"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parallelDecoder IS
    PORT (
	Y : IN std_logic_vector(7 DOWNTO 0);
	M : BUFFER std_logic_vector(2 DOWNTO 0);
	V : BUFFER std_logic
	);
END parallelDecoder;

-- Design Ports Information
-- M[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parallelDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_V : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \d8to12|c11|Y~combout\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \d8to12|c12|Y~combout\ : std_logic;
SIGNAL \dm1|orb|Y~0_combout\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \valid|Y~2_combout\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \dm1|orb|Y~combout\ : std_logic;
SIGNAL \d8to12|c21|Y~combout\ : std_logic;
SIGNAL \d8to12|c22|Y~combout\ : std_logic;
SIGNAL \dm2|orb|Y~2_combout\ : std_logic;
SIGNAL \valid|Y~3_combout\ : std_logic;
SIGNAL \dm2|orb|Y~combout\ : std_logic;
SIGNAL \d8to12|c32|Y~combout\ : std_logic;
SIGNAL \d8to12|c31|Y~combout\ : std_logic;
SIGNAL \dm3|orb|Y~0_combout\ : std_logic;
SIGNAL \valid|Y~4_combout\ : std_logic;
SIGNAL \dm3|orb|Y~combout\ : std_logic;
SIGNAL \d8to12|c14|Y~combout\ : std_logic;
SIGNAL \valid|Y~6_combout\ : std_logic;
SIGNAL \d8to12|c24|Y~combout\ : std_logic;
SIGNAL \d8to12|c23|Y~combout\ : std_logic;
SIGNAL \valid|Y~5_combout\ : std_logic;
SIGNAL \valid|Y~7_combout\ : std_logic;
SIGNAL \valid|Y~10_combout\ : std_logic;
SIGNAL \d8to12|c34|Y~combout\ : std_logic;
SIGNAL \valid|Y~11_combout\ : std_logic;
SIGNAL \valid|Y~13_combout\ : std_logic;
SIGNAL \valid|Y~8_combout\ : std_logic;
SIGNAL \dm1|orb|Y~1_combout\ : std_logic;
SIGNAL \valid|Y~9_combout\ : std_logic;
SIGNAL \valid|Y~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Y <= Y;
M <= ww_M;
V <= ww_V;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X8_Y0_N9
\M[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm1|orb|Y~combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\M[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm2|orb|Y~combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\M[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm3|orb|Y~combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid|Y~12_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\Y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X15_Y4_N0
\d8to12|c11|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c11|Y~combout\ = \Y[1]~input_o\ $ (\Y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \d8to12|c11|Y~combout\);

-- Location: IOIBUF_X20_Y0_N1
\Y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X15_Y4_N2
\d8to12|c12|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c12|Y~combout\ = \Y[2]~input_o\ $ (\Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \d8to12|c12|Y~combout\);

-- Location: LCCOMB_X9_Y1_N18
\dm1|orb|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orb|Y~0_combout\ = (\d8to12|c11|Y~combout\ & ((\d8to12|c12|Y~combout\) # (\Y[4]~input_o\ $ (\Y[5]~input_o\)))) # (!\d8to12|c11|Y~combout\ & (\d8to12|c12|Y~combout\ & (\Y[4]~input_o\ $ (\Y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \d8to12|c11|Y~combout\,
	datac => \Y[5]~input_o\,
	datad => \d8to12|c12|Y~combout\,
	combout => \dm1|orb|Y~0_combout\);

-- Location: IOIBUF_X10_Y0_N8
\Y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: LCCOMB_X9_Y1_N8
\valid|Y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~2_combout\ = (\d8to12|c11|Y~combout\ & (\d8to12|c12|Y~combout\ & (\Y[4]~input_o\ $ (\Y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \d8to12|c11|Y~combout\,
	datac => \Y[5]~input_o\,
	datad => \d8to12|c12|Y~combout\,
	combout => \valid|Y~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\Y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LCCOMB_X9_Y1_N4
\dm1|orb|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orb|Y~combout\ = (\valid|Y~2_combout\) # ((\dm1|orb|Y~0_combout\ & (\Y[7]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm1|orb|Y~0_combout\,
	datab => \Y[7]~input_o\,
	datac => \valid|Y~2_combout\,
	datad => \Y[6]~input_o\,
	combout => \dm1|orb|Y~combout\);

-- Location: LCCOMB_X15_Y4_N4
\d8to12|c21|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c21|Y~combout\ = \Y[2]~input_o\ $ (\Y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[2]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \d8to12|c21|Y~combout\);

-- Location: LCCOMB_X15_Y4_N30
\d8to12|c22|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c22|Y~combout\ = \Y[1]~input_o\ $ (\Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \d8to12|c22|Y~combout\);

-- Location: LCCOMB_X9_Y1_N26
\dm2|orb|Y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm2|orb|Y~2_combout\ = (\d8to12|c21|Y~combout\ & ((\d8to12|c22|Y~combout\) # (\Y[4]~input_o\ $ (\Y[6]~input_o\)))) # (!\d8to12|c21|Y~combout\ & (\d8to12|c22|Y~combout\ & (\Y[4]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \d8to12|c21|Y~combout\,
	datac => \d8to12|c22|Y~combout\,
	datad => \Y[6]~input_o\,
	combout => \dm2|orb|Y~2_combout\);

-- Location: LCCOMB_X9_Y1_N6
\valid|Y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~3_combout\ = (\d8to12|c21|Y~combout\ & (\d8to12|c22|Y~combout\ & (\Y[4]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \d8to12|c21|Y~combout\,
	datac => \d8to12|c22|Y~combout\,
	datad => \Y[6]~input_o\,
	combout => \valid|Y~3_combout\);

-- Location: LCCOMB_X9_Y1_N16
\dm2|orb|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm2|orb|Y~combout\ = (\valid|Y~3_combout\) # ((\dm2|orb|Y~2_combout\ & (\Y[7]~input_o\ $ (\Y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm2|orb|Y~2_combout\,
	datab => \Y[7]~input_o\,
	datac => \Y[5]~input_o\,
	datad => \valid|Y~3_combout\,
	combout => \dm2|orb|Y~combout\);

-- Location: LCCOMB_X15_Y4_N26
\d8to12|c32|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c32|Y~combout\ = \Y[1]~input_o\ $ (\Y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datac => \Y[5]~input_o\,
	combout => \d8to12|c32|Y~combout\);

-- Location: LCCOMB_X15_Y4_N16
\d8to12|c31|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c31|Y~combout\ = \Y[4]~input_o\ $ (\Y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[4]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \d8to12|c31|Y~combout\);

-- Location: LCCOMB_X15_Y4_N6
\dm3|orb|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm3|orb|Y~0_combout\ = (\d8to12|c32|Y~combout\ & ((\d8to12|c31|Y~combout\) # (\Y[2]~input_o\ $ (\Y[6]~input_o\)))) # (!\d8to12|c32|Y~combout\ & (\d8to12|c31|Y~combout\ & (\Y[2]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c32|Y~combout\,
	datab => \Y[2]~input_o\,
	datac => \Y[6]~input_o\,
	datad => \d8to12|c31|Y~combout\,
	combout => \dm3|orb|Y~0_combout\);

-- Location: LCCOMB_X15_Y4_N20
\valid|Y~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~4_combout\ = (\d8to12|c32|Y~combout\ & (\d8to12|c31|Y~combout\ & (\Y[2]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c32|Y~combout\,
	datab => \Y[2]~input_o\,
	datac => \Y[6]~input_o\,
	datad => \d8to12|c31|Y~combout\,
	combout => \valid|Y~4_combout\);

-- Location: LCCOMB_X15_Y4_N8
\dm3|orb|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm3|orb|Y~combout\ = (\valid|Y~4_combout\) # ((\dm3|orb|Y~0_combout\ & (\Y[7]~input_o\ $ (\Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm3|orb|Y~0_combout\,
	datab => \valid|Y~4_combout\,
	datac => \Y[7]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \dm3|orb|Y~combout\);

-- Location: LCCOMB_X9_Y1_N24
\d8to12|c14|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c14|Y~combout\ = \Y[7]~input_o\ $ (\Y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[7]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \d8to12|c14|Y~combout\);

-- Location: LCCOMB_X9_Y1_N10
\valid|Y~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~6_combout\ = (\dm1|orb|Y~0_combout\ & (\d8to12|c14|Y~combout\ & (\Y[5]~input_o\ $ (!\Y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm1|orb|Y~0_combout\,
	datab => \d8to12|c14|Y~combout\,
	datac => \Y[5]~input_o\,
	datad => \Y[4]~input_o\,
	combout => \valid|Y~6_combout\);

-- Location: LCCOMB_X9_Y1_N0
\d8to12|c24|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c24|Y~combout\ = \Y[7]~input_o\ $ (\Y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[7]~input_o\,
	datac => \Y[5]~input_o\,
	combout => \d8to12|c24|Y~combout\);

-- Location: LCCOMB_X9_Y1_N28
\d8to12|c23|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c23|Y~combout\ = \Y[4]~input_o\ $ (\Y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \d8to12|c23|Y~combout\);

-- Location: LCCOMB_X9_Y1_N22
\valid|Y~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~5_combout\ = (\d8to12|c24|Y~combout\ & (((\d8to12|c23|Y~combout\) # (!\dm2|orb|Y~2_combout\)))) # (!\d8to12|c24|Y~combout\ & (!\valid|Y~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid|Y~3_combout\,
	datab => \d8to12|c24|Y~combout\,
	datac => \dm2|orb|Y~2_combout\,
	datad => \d8to12|c23|Y~combout\,
	combout => \valid|Y~5_combout\);

-- Location: LCCOMB_X9_Y1_N12
\valid|Y~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~7_combout\ = (!\valid|Y~6_combout\ & (\valid|Y~5_combout\ & ((\d8to12|c14|Y~combout\) # (!\valid|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid|Y~6_combout\,
	datab => \valid|Y~2_combout\,
	datac => \valid|Y~5_combout\,
	datad => \d8to12|c14|Y~combout\,
	combout => \valid|Y~7_combout\);

-- Location: LCCOMB_X9_Y1_N30
\valid|Y~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~10_combout\ = (((\d8to12|c21|Y~combout\ & \d8to12|c22|Y~combout\)) # (!\d8to12|c24|Y~combout\)) # (!\dm2|orb|Y~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm2|orb|Y~2_combout\,
	datab => \d8to12|c21|Y~combout\,
	datac => \d8to12|c22|Y~combout\,
	datad => \d8to12|c24|Y~combout\,
	combout => \valid|Y~10_combout\);

-- Location: LCCOMB_X15_Y4_N24
\d8to12|c34|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c34|Y~combout\ = \Y[7]~input_o\ $ (\Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[7]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \d8to12|c34|Y~combout\);

-- Location: LCCOMB_X15_Y4_N18
\valid|Y~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~11_combout\ = (((\d8to12|c31|Y~combout\ & \d8to12|c32|Y~combout\)) # (!\d8to12|c34|Y~combout\)) # (!\dm3|orb|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm3|orb|Y~0_combout\,
	datab => \d8to12|c31|Y~combout\,
	datac => \d8to12|c32|Y~combout\,
	datad => \d8to12|c34|Y~combout\,
	combout => \valid|Y~11_combout\);

-- Location: LCCOMB_X15_Y4_N12
\valid|Y~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~13_combout\ = (\d8to12|c32|Y~combout\ & (\d8to12|c31|Y~combout\ & (\Y[2]~input_o\ $ (!\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c32|Y~combout\,
	datab => \Y[2]~input_o\,
	datac => \Y[6]~input_o\,
	datad => \d8to12|c31|Y~combout\,
	combout => \valid|Y~13_combout\);

-- Location: LCCOMB_X15_Y4_N10
\valid|Y~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~8_combout\ = (\valid|Y~13_combout\ & (!\valid|Y~4_combout\ & (\Y[7]~input_o\ $ (!\Y[3]~input_o\)))) # (!\valid|Y~13_combout\ & ((\Y[7]~input_o\ $ (\Y[3]~input_o\)) # (!\valid|Y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid|Y~13_combout\,
	datab => \valid|Y~4_combout\,
	datac => \Y[7]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \valid|Y~8_combout\);

-- Location: LCCOMB_X15_Y4_N28
\dm1|orb|Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orb|Y~1_combout\ = (\dm1|orb|Y~0_combout\ & (\Y[6]~input_o\ $ (\Y[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm1|orb|Y~0_combout\,
	datac => \Y[6]~input_o\,
	datad => \Y[7]~input_o\,
	combout => \dm1|orb|Y~1_combout\);

-- Location: LCCOMB_X15_Y4_N22
\valid|Y~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~9_combout\ = (\valid|Y~8_combout\ & (((\d8to12|c11|Y~combout\ & \d8to12|c12|Y~combout\)) # (!\dm1|orb|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid|Y~8_combout\,
	datab => \dm1|orb|Y~1_combout\,
	datac => \d8to12|c11|Y~combout\,
	datad => \d8to12|c12|Y~combout\,
	combout => \valid|Y~9_combout\);

-- Location: LCCOMB_X15_Y1_N0
\valid|Y~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~12_combout\ = (\valid|Y~7_combout\ & (\valid|Y~10_combout\ & (\valid|Y~11_combout\ & \valid|Y~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valid|Y~7_combout\,
	datab => \valid|Y~10_combout\,
	datac => \valid|Y~11_combout\,
	datad => \valid|Y~9_combout\,
	combout => \valid|Y~12_combout\);

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_V <= \V~output_o\;
END structure;


