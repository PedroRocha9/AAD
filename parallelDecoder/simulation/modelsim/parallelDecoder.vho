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

-- DATE "11/07/2022 23:22:35"

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
	M : BUFFER std_logic_vector(3 DOWNTO 0);
	V : BUFFER std_logic
	);
END parallelDecoder;

-- Design Ports Information
-- M[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_M : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_V : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \d8to12|c14|Y~combout\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \d8to12|c11|Y~combout\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \dm1|orb|Y~0_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \d8to12|c12|Y~combout\ : std_logic;
SIGNAL \dm1|orb|Y~1_combout\ : std_logic;
SIGNAL \d8to12|c21|Y~combout\ : std_logic;
SIGNAL \dm2|orb|Y~0_combout\ : std_logic;
SIGNAL \d8to12|c22|Y~combout\ : std_logic;
SIGNAL \d8to12|c24|Y~combout\ : std_logic;
SIGNAL \dm2|orb|Y~1_combout\ : std_logic;
SIGNAL \dm3|orb|Y~0_combout\ : std_logic;
SIGNAL \d8to12|c34|Y~combout\ : std_logic;
SIGNAL \d8to12|c32|Y~combout\ : std_logic;
SIGNAL \d8to12|c31|Y~combout\ : std_logic;
SIGNAL \dm3|orb|Y~1_combout\ : std_logic;
SIGNAL \last|or1|Y~combout\ : std_logic;
SIGNAL \d8to12|c33|Y~combout\ : std_logic;
SIGNAL \dm3|orf|Y~0_combout\ : std_logic;
SIGNAL \d8to12|c13|Y~combout\ : std_logic;
SIGNAL \dm1|orf|Y~0_combout\ : std_logic;
SIGNAL \d8to12|c23|Y~combout\ : std_logic;
SIGNAL \dm2|orf|Y~0_combout\ : std_logic;
SIGNAL \valid|Y~0_combout\ : std_logic;
SIGNAL \valid|Y~combout\ : std_logic;

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

-- Location: IOOBUF_X33_Y22_N2
\M[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm1|orb|Y~1_combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\M[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm2|orb|Y~1_combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\M[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dm3|orb|Y~1_combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\M[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \last|or1|Y~combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid|Y~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOIBUF_X33_Y14_N1
\Y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LCCOMB_X27_Y18_N26
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

-- Location: IOIBUF_X31_Y0_N1
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X27_Y18_N16
\d8to12|c11|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c11|Y~combout\ = \Y[0]~input_o\ $ (\Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[0]~input_o\,
	datac => \Y[1]~input_o\,
	combout => \d8to12|c11|Y~combout\);

-- Location: IOIBUF_X26_Y0_N1
\Y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\Y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: LCCOMB_X27_Y18_N30
\dm1|orb|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orb|Y~0_combout\ = \Y[4]~input_o\ $ (\Y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datad => \Y[5]~input_o\,
	combout => \dm1|orb|Y~0_combout\);

-- Location: IOIBUF_X33_Y11_N8
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X27_Y18_N20
\d8to12|c12|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c12|Y~combout\ = \Y[3]~input_o\ $ (\Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[3]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \d8to12|c12|Y~combout\);

-- Location: LCCOMB_X27_Y18_N24
\dm1|orb|Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orb|Y~1_combout\ = (\d8to12|c14|Y~combout\ & ((\d8to12|c11|Y~combout\ & ((\dm1|orb|Y~0_combout\) # (\d8to12|c12|Y~combout\))) # (!\d8to12|c11|Y~combout\ & (\dm1|orb|Y~0_combout\ & \d8to12|c12|Y~combout\)))) # (!\d8to12|c14|Y~combout\ & 
-- (\d8to12|c11|Y~combout\ & (\dm1|orb|Y~0_combout\ & \d8to12|c12|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c14|Y~combout\,
	datab => \d8to12|c11|Y~combout\,
	datac => \dm1|orb|Y~0_combout\,
	datad => \d8to12|c12|Y~combout\,
	combout => \dm1|orb|Y~1_combout\);

-- Location: LCCOMB_X27_Y18_N10
\d8to12|c21|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c21|Y~combout\ = \Y[0]~input_o\ $ (\Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[0]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \d8to12|c21|Y~combout\);

-- Location: LCCOMB_X27_Y18_N8
\dm2|orb|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm2|orb|Y~0_combout\ = \Y[4]~input_o\ $ (\Y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \dm2|orb|Y~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\d8to12|c22|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c22|Y~combout\ = \Y[3]~input_o\ $ (\Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[3]~input_o\,
	datac => \Y[1]~input_o\,
	combout => \d8to12|c22|Y~combout\);

-- Location: LCCOMB_X27_Y18_N4
\d8to12|c24|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c24|Y~combout\ = \Y[7]~input_o\ $ (\Y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[7]~input_o\,
	datad => \Y[5]~input_o\,
	combout => \d8to12|c24|Y~combout\);

-- Location: LCCOMB_X27_Y18_N18
\dm2|orb|Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm2|orb|Y~1_combout\ = (\d8to12|c21|Y~combout\ & ((\dm2|orb|Y~0_combout\ & ((\d8to12|c22|Y~combout\) # (\d8to12|c24|Y~combout\))) # (!\dm2|orb|Y~0_combout\ & (\d8to12|c22|Y~combout\ & \d8to12|c24|Y~combout\)))) # (!\d8to12|c21|Y~combout\ & 
-- (\dm2|orb|Y~0_combout\ & (\d8to12|c22|Y~combout\ & \d8to12|c24|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c21|Y~combout\,
	datab => \dm2|orb|Y~0_combout\,
	datac => \d8to12|c22|Y~combout\,
	datad => \d8to12|c24|Y~combout\,
	combout => \dm2|orb|Y~1_combout\);

-- Location: LCCOMB_X31_Y1_N10
\dm3|orb|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm3|orb|Y~0_combout\ = \Y[6]~input_o\ $ (\Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[6]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \dm3|orb|Y~0_combout\);

-- Location: LCCOMB_X30_Y11_N16
\d8to12|c34|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c34|Y~combout\ = \Y[3]~input_o\ $ (\Y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datad => \Y[7]~input_o\,
	combout => \d8to12|c34|Y~combout\);

-- Location: LCCOMB_X30_Y13_N16
\d8to12|c32|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c32|Y~combout\ = \Y[5]~input_o\ $ (\Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[5]~input_o\,
	datac => \Y[1]~input_o\,
	combout => \d8to12|c32|Y~combout\);

-- Location: LCCOMB_X31_Y1_N0
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

-- Location: LCCOMB_X31_Y1_N28
\dm3|orb|Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm3|orb|Y~1_combout\ = (\dm3|orb|Y~0_combout\ & ((\d8to12|c34|Y~combout\ & ((\d8to12|c32|Y~combout\) # (\d8to12|c31|Y~combout\))) # (!\d8to12|c34|Y~combout\ & (\d8to12|c32|Y~combout\ & \d8to12|c31|Y~combout\)))) # (!\dm3|orb|Y~0_combout\ & 
-- (\d8to12|c34|Y~combout\ & (\d8to12|c32|Y~combout\ & \d8to12|c31|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm3|orb|Y~0_combout\,
	datab => \d8to12|c34|Y~combout\,
	datac => \d8to12|c32|Y~combout\,
	datad => \d8to12|c31|Y~combout\,
	combout => \dm3|orb|Y~1_combout\);

-- Location: LCCOMB_X27_Y18_N12
\last|or1|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \last|or1|Y~combout\ = (\Y[0]~input_o\) # (\dm2|orb|Y~1_combout\ $ (\Y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm2|orb|Y~1_combout\,
	datac => \Y[0]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \last|or1|Y~combout\);

-- Location: LCCOMB_X31_Y1_N6
\d8to12|c33|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c33|Y~combout\ = \Y[6]~input_o\ $ (\Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[6]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \d8to12|c33|Y~combout\);

-- Location: LCCOMB_X31_Y1_N24
\dm3|orf|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm3|orf|Y~0_combout\ = (\d8to12|c33|Y~combout\ & (!\d8to12|c34|Y~combout\ & (!\d8to12|c32|Y~combout\ & !\d8to12|c31|Y~combout\))) # (!\d8to12|c33|Y~combout\ & ((\d8to12|c34|Y~combout\ & (!\d8to12|c32|Y~combout\ & !\d8to12|c31|Y~combout\)) # 
-- (!\d8to12|c34|Y~combout\ & ((!\d8to12|c31|Y~combout\) # (!\d8to12|c32|Y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c33|Y~combout\,
	datab => \d8to12|c34|Y~combout\,
	datac => \d8to12|c32|Y~combout\,
	datad => \d8to12|c31|Y~combout\,
	combout => \dm3|orf|Y~0_combout\);

-- Location: LCCOMB_X27_Y18_N6
\d8to12|c13|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d8to12|c13|Y~combout\ = \Y[4]~input_o\ $ (\Y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datad => \Y[5]~input_o\,
	combout => \d8to12|c13|Y~combout\);

-- Location: LCCOMB_X27_Y18_N0
\dm1|orf|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm1|orf|Y~0_combout\ = (\d8to12|c13|Y~combout\ & (!\d8to12|c11|Y~combout\ & (!\d8to12|c14|Y~combout\ & !\d8to12|c12|Y~combout\))) # (!\d8to12|c13|Y~combout\ & ((\d8to12|c11|Y~combout\ & (!\d8to12|c14|Y~combout\ & !\d8to12|c12|Y~combout\)) # 
-- (!\d8to12|c11|Y~combout\ & ((!\d8to12|c12|Y~combout\) # (!\d8to12|c14|Y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c13|Y~combout\,
	datab => \d8to12|c11|Y~combout\,
	datac => \d8to12|c14|Y~combout\,
	datad => \d8to12|c12|Y~combout\,
	combout => \dm1|orf|Y~0_combout\);

-- Location: LCCOMB_X27_Y18_N2
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

-- Location: LCCOMB_X27_Y18_N28
\dm2|orf|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dm2|orf|Y~0_combout\ = (\d8to12|c21|Y~combout\ & (!\d8to12|c24|Y~combout\ & (!\d8to12|c22|Y~combout\ & !\d8to12|c23|Y~combout\))) # (!\d8to12|c21|Y~combout\ & ((\d8to12|c24|Y~combout\ & (!\d8to12|c22|Y~combout\ & !\d8to12|c23|Y~combout\)) # 
-- (!\d8to12|c24|Y~combout\ & ((!\d8to12|c23|Y~combout\) # (!\d8to12|c22|Y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d8to12|c21|Y~combout\,
	datab => \d8to12|c24|Y~combout\,
	datac => \d8to12|c22|Y~combout\,
	datad => \d8to12|c23|Y~combout\,
	combout => \dm2|orf|Y~0_combout\);

-- Location: LCCOMB_X27_Y18_N14
\valid|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~0_combout\ = (\dm1|orf|Y~0_combout\ & (!\dm1|orb|Y~1_combout\ & (\dm2|orf|Y~0_combout\ $ (\dm2|orb|Y~1_combout\)))) # (!\dm1|orf|Y~0_combout\ & (\dm1|orb|Y~1_combout\ & (\dm2|orf|Y~0_combout\ $ (\dm2|orb|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm1|orf|Y~0_combout\,
	datab => \dm2|orf|Y~0_combout\,
	datac => \dm1|orb|Y~1_combout\,
	datad => \dm2|orb|Y~1_combout\,
	combout => \valid|Y~0_combout\);

-- Location: LCCOMB_X31_Y1_N26
\valid|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|Y~combout\ = (\valid|Y~0_combout\ & (\dm3|orf|Y~0_combout\ $ (\dm3|orb|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm3|orf|Y~0_combout\,
	datac => \valid|Y~0_combout\,
	datad => \dm3|orb|Y~1_combout\,
	combout => \valid|Y~combout\);

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_V <= \V~output_o\;
END structure;


