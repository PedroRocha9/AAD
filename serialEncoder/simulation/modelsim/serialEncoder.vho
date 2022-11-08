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

-- DATE "11/08/2022 01:48:14"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flipFlopDPET IS
    PORT (
	clk : IN std_logic;
	D : IN std_logic;
	nSet : IN std_logic;
	nRst : IN std_logic;
	Q : OUT std_logic;
	nQ : OUT std_logic
	);
END flipFlopDPET;

-- Design Ports Information
-- Q	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nQ	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSet	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipFlopDPET IS
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
SIGNAL ww_D : std_logic;
SIGNAL ww_nSet : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_nQ : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \nQ~output_o\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \nSet~input_o\ : std_logic;
SIGNAL \Q~5_combout\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Q~reg0_emulated_q\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \nQ~1_combout\ : std_logic;
SIGNAL \nQ~3_combout\ : std_logic;
SIGNAL \nQ~0_combout\ : std_logic;
SIGNAL \nQ~reg0_emulated_q\ : std_logic;
SIGNAL \nQ~2_combout\ : std_logic;
SIGNAL \ALT_INV_nQ~0_combout\ : std_logic;
SIGNAL \ALT_INV_Q~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_D <= D;
ww_nSet <= nSet;
ww_nRst <= nRst;
Q <= ww_Q;
nQ <= ww_nQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_nQ~0_combout\ <= NOT \nQ~0_combout\;
\ALT_INV_Q~0_combout\ <= NOT \Q~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y15_N2
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~2_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\nQ~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nQ~2_combout\,
	devoe => ww_devoe,
	o => \nQ~output_o\);

-- Location: IOIBUF_X20_Y31_N8
\nRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\nSet~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nSet,
	o => \nSet~input_o\);

-- Location: LCCOMB_X20_Y18_N26
\Q~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q~5_combout\ = (!\nSet~input_o\ & \nRst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nSet~input_o\,
	datad => \nRst~input_o\,
	combout => \Q~5_combout\);

-- Location: LCCOMB_X20_Y18_N6
\Q~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = (\nRst~input_o\ & ((\Q~5_combout\) # (\Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datac => \Q~5_combout\,
	datad => \Q~1_combout\,
	combout => \Q~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y22_N1
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X20_Y18_N24
\Q~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = \D~input_o\ $ (\Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D~input_o\,
	datad => \Q~1_combout\,
	combout => \Q~3_combout\);

-- Location: LCCOMB_X20_Y18_N8
\Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\Q~5_combout\) # (!\nRst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q~5_combout\,
	datad => \nRst~input_o\,
	combout => \Q~0_combout\);

-- Location: FF_X20_Y18_N25
\Q~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~3_combout\,
	clrn => \ALT_INV_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q~reg0_emulated_q\);

-- Location: LCCOMB_X20_Y18_N2
\Q~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (\nRst~input_o\ & ((\Q~5_combout\) # (\Q~1_combout\ $ (\Q~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~1_combout\,
	datab => \Q~reg0_emulated_q\,
	datac => \Q~5_combout\,
	datad => \nRst~input_o\,
	combout => \Q~2_combout\);

-- Location: LCCOMB_X20_Y18_N16
\nQ~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nQ~1_combout\ = (!\Q~5_combout\ & ((\nQ~1_combout\) # (!\nRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRst~input_o\,
	datac => \Q~5_combout\,
	datad => \nQ~1_combout\,
	combout => \nQ~1_combout\);

-- Location: LCCOMB_X20_Y18_N12
\nQ~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nQ~3_combout\ = \D~input_o\ $ (!\nQ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D~input_o\,
	datad => \nQ~1_combout\,
	combout => \nQ~3_combout\);

-- Location: LCCOMB_X20_Y18_N4
\nQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nQ~0_combout\ = (\Q~5_combout\) # (!\nRst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q~5_combout\,
	datad => \nRst~input_o\,
	combout => \nQ~0_combout\);

-- Location: FF_X20_Y18_N13
\nQ~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nQ~3_combout\,
	clrn => \ALT_INV_nQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nQ~reg0_emulated_q\);

-- Location: LCCOMB_X20_Y18_N22
\nQ~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nQ~2_combout\ = (!\Q~5_combout\ & ((\nQ~reg0_emulated_q\ $ (\nQ~1_combout\)) # (!\nRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nQ~reg0_emulated_q\,
	datab => \nQ~1_combout\,
	datac => \Q~5_combout\,
	datad => \nRst~input_o\,
	combout => \nQ~2_combout\);

ww_Q <= \Q~output_o\;

ww_nQ <= \nQ~output_o\;
END structure;


