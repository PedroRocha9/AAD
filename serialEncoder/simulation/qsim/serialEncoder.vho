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

-- DATE "11/10/2022 17:21:48"

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

ENTITY 	serialEncoder IS
    PORT (
	mIn : IN std_logic;
	nGRst : IN std_logic;
	clk : IN std_logic;
	busy : BUFFER std_logic;
	Y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END serialEncoder;

-- Design Ports Information
-- busy	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serialEncoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con|nord|Y~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bnc|ff0|Q~0_combout\ : std_logic;
SIGNAL \bnc|ff0|Q~q\ : std_logic;
SIGNAL \bnc|ff1|Q~0_combout\ : std_logic;
SIGNAL \bnc|ff1|Q~q\ : std_logic;
SIGNAL \bnc|ff2|Q~0_combout\ : std_logic;
SIGNAL \bnc|ff2|Q~q\ : std_logic;
SIGNAL \con|cMem|prog~0_combout\ : std_logic;
SIGNAL \con|nad2|Y~0_combout\ : std_logic;
SIGNAL \con|nord|Y~0_combout\ : std_logic;
SIGNAL \con|nord|Y~0clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \ff0|Q~feeder_combout\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \be3|and0|Y~0_combout\ : std_logic;
SIGNAL \be0|ff0|Q~0_combout\ : std_logic;
SIGNAL \be0|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff0|Q~0_combout\ : std_logic;
SIGNAL \con|nad4|Y~0_combout\ : std_logic;
SIGNAL \con|nad4|Y~combout\ : std_logic;
SIGNAL \pr8|ff0|Q~q\ : std_logic;
SIGNAL \be1|and0|Y~0_combout\ : std_logic;
SIGNAL \be1|ff0|Q~0_combout\ : std_logic;
SIGNAL \be1|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff1|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff1|Q~q\ : std_logic;
SIGNAL \be2|and0|Y~0_combout\ : std_logic;
SIGNAL \be2|ff0|Q~0_combout\ : std_logic;
SIGNAL \be2|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff2|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff2|Q~q\ : std_logic;
SIGNAL \be3|and0|Y~1_combout\ : std_logic;
SIGNAL \be3|ff0|Q~0_combout\ : std_logic;
SIGNAL \be3|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff3|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff3|Q~q\ : std_logic;
SIGNAL \be4|and0|Y~0_combout\ : std_logic;
SIGNAL \be4|ff0|Q~0_combout\ : std_logic;
SIGNAL \be4|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff4|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff4|Q~q\ : std_logic;
SIGNAL \be5|ff0|Q~0_combout\ : std_logic;
SIGNAL \be5|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff5|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff5|Q~q\ : std_logic;
SIGNAL \be6|ff0|Q~0_combout\ : std_logic;
SIGNAL \be6|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff6|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff6|Q~q\ : std_logic;
SIGNAL \be7|ff0|Q~0_combout\ : std_logic;
SIGNAL \be7|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \be7|ff0|Q~q\ : std_logic;
SIGNAL \pr8|ff7|Q~0_combout\ : std_logic;
SIGNAL \pr8|ff7|Q~q\ : std_logic;
SIGNAL \con|nad4|ALT_INV_Y~combout\ : std_logic;
SIGNAL \pr8|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr8|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \con|nad2|ALT_INV_Y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_mIn <= mIn;
ww_nGRst <= nGRst;
ww_clk <= clk;
busy <= ww_busy;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\con|nord|Y~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con|nord|Y~0_combout\);
\con|nad4|ALT_INV_Y~combout\ <= NOT \con|nad4|Y~combout\;
\pr8|ff7|ALT_INV_Q~q\ <= NOT \pr8|ff7|Q~q\;
\pr8|ff6|ALT_INV_Q~q\ <= NOT \pr8|ff6|Q~q\;
\pr8|ff5|ALT_INV_Q~q\ <= NOT \pr8|ff5|Q~q\;
\pr8|ff4|ALT_INV_Q~q\ <= NOT \pr8|ff4|Q~q\;
\pr8|ff3|ALT_INV_Q~q\ <= NOT \pr8|ff3|Q~q\;
\pr8|ff2|ALT_INV_Q~q\ <= NOT \pr8|ff2|Q~q\;
\pr8|ff1|ALT_INV_Q~q\ <= NOT \pr8|ff1|Q~q\;
\pr8|ff0|ALT_INV_Q~q\ <= NOT \pr8|ff0|Q~q\;
\con|nad2|ALT_INV_Y~0_combout\ <= NOT \con|nad2|Y~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
\busy~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \con|nad2|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr8|ff7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

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

-- Location: LCCOMB_X15_Y1_N12
\bnc|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bnc|ff0|Q~0_combout\ = !\bnc|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bnc|ff0|Q~q\,
	combout => \bnc|ff0|Q~0_combout\);

-- Location: FF_X15_Y1_N13
\bnc|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bnc|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bnc|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N30
\bnc|ff1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bnc|ff1|Q~0_combout\ = \bnc|ff0|Q~q\ $ (\bnc|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datad => \bnc|ff1|Q~q\,
	combout => \bnc|ff1|Q~0_combout\);

-- Location: FF_X15_Y1_N17
\bnc|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \bnc|ff1|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bnc|ff1|Q~q\);

-- Location: LCCOMB_X15_Y1_N4
\bnc|ff2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bnc|ff2|Q~0_combout\ = \bnc|ff2|Q~q\ $ (((\bnc|ff1|Q~q\ & \bnc|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bnc|ff1|Q~q\,
	datac => \bnc|ff2|Q~q\,
	datad => \bnc|ff0|Q~q\,
	combout => \bnc|ff2|Q~0_combout\);

-- Location: FF_X15_Y1_N5
\bnc|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bnc|ff2|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bnc|ff2|Q~q\);

-- Location: LCCOMB_X15_Y1_N18
\con|cMem|prog~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \con|cMem|prog~0_combout\ = (!\bnc|ff0|Q~q\ & !\bnc|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datad => \bnc|ff1|Q~q\,
	combout => \con|cMem|prog~0_combout\);

-- Location: LCCOMB_X15_Y1_N0
\con|nad2|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \con|nad2|Y~0_combout\ = (\clk~input_o\ & (((\bnc|ff2|Q~q\ & !\con|cMem|prog~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \bnc|ff2|Q~q\,
	datac => \clk~input_o\,
	datad => \con|cMem|prog~0_combout\,
	combout => \con|nad2|Y~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\con|nord|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \con|nord|Y~0_combout\ = LCELL((!\bnc|ff0|Q~q\ & (\bnc|ff2|Q~q\ & (!\clk~input_o\ & !\bnc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \bnc|ff2|Q~q\,
	datac => \clk~input_o\,
	datad => \bnc|ff1|Q~q\,
	combout => \con|nord|Y~0_combout\);

-- Location: CLKCTRL_G19
\con|nord|Y~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con|nord|Y~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con|nord|Y~0clkctrl_outclk\);

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

-- Location: IOIBUF_X20_Y0_N8
\mIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: LCCOMB_X16_Y1_N20
\ff0|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ff0|Q~feeder_combout\ = \mIn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mIn~input_o\,
	combout => \ff0|Q~feeder_combout\);

-- Location: FF_X16_Y1_N21
\ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff0|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|Q~q\);

-- Location: LCCOMB_X16_Y1_N6
\be3|and0|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be3|and0|Y~0_combout\ = (!\bnc|ff0|Q~q\ & (\bnc|ff2|Q~q\ & (!\bnc|ff1|Q~q\ & \ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \bnc|ff2|Q~q\,
	datac => \bnc|ff1|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be3|and0|Y~0_combout\);

-- Location: LCCOMB_X16_Y1_N24
\be0|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be0|ff0|Q~0_combout\ = \be0|ff0|Q~q\ $ (\be3|and0|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be0|ff0|Q~q\,
	datad => \be3|and0|Y~0_combout\,
	combout => \be0|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N25
\be0|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be0|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be0|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N26
\pr8|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff0|Q~0_combout\ = !\be0|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be0|ff0|Q~q\,
	combout => \pr8|ff0|Q~0_combout\);

-- Location: LCCOMB_X15_Y1_N16
\con|nad4|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \con|nad4|Y~0_combout\ = (\nGRst~input_o\ & ((\bnc|ff0|Q~q\) # ((\bnc|ff2|Q~q\) # (!\bnc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \nGRst~input_o\,
	datac => \bnc|ff1|Q~q\,
	datad => \bnc|ff2|Q~q\,
	combout => \con|nad4|Y~0_combout\);

-- Location: LCCOMB_X15_Y1_N24
\con|nad4|Y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \con|nad4|Y~combout\ = (\con|nad4|Y~0_combout\) # (!\clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \con|nad4|Y~0_combout\,
	combout => \con|nad4|Y~combout\);

-- Location: FF_X15_Y1_N27
\pr8|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff0|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff0|Q~q\);

-- Location: LCCOMB_X16_Y1_N12
\be1|and0|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be1|and0|Y~0_combout\ = (!\bnc|ff1|Q~q\ & (\ff0|Q~q\ & (\bnc|ff0|Q~q\ $ (\bnc|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \bnc|ff2|Q~q\,
	datac => \bnc|ff1|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be1|and0|Y~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\be1|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be1|ff0|Q~0_combout\ = \be1|ff0|Q~q\ $ (\be1|and0|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be1|ff0|Q~q\,
	datad => \be1|and0|Y~0_combout\,
	combout => \be1|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N3
\be1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be1|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be1|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N14
\pr8|ff1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff1|Q~0_combout\ = !\be1|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be1|ff0|Q~q\,
	combout => \pr8|ff1|Q~0_combout\);

-- Location: FF_X15_Y1_N15
\pr8|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff1|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff1|Q~q\);

-- Location: LCCOMB_X16_Y1_N10
\be2|and0|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be2|and0|Y~0_combout\ = (!\bnc|ff0|Q~q\ & (\ff0|Q~q\ & (\bnc|ff1|Q~q\ $ (\bnc|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \bnc|ff1|Q~q\,
	datac => \bnc|ff2|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be2|and0|Y~0_combout\);

-- Location: LCCOMB_X16_Y1_N16
\be2|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be2|ff0|Q~0_combout\ = \be2|ff0|Q~q\ $ (\be2|and0|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be2|ff0|Q~q\,
	datad => \be2|and0|Y~0_combout\,
	combout => \be2|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N17
\be2|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be2|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be2|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N8
\pr8|ff2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff2|Q~0_combout\ = !\be2|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \be2|ff0|Q~q\,
	combout => \pr8|ff2|Q~0_combout\);

-- Location: FF_X15_Y1_N9
\pr8|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff2|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff2|Q~q\);

-- Location: LCCOMB_X16_Y1_N4
\be3|and0|Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be3|and0|Y~1_combout\ = (!\bnc|ff2|Q~q\ & \ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bnc|ff2|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be3|and0|Y~1_combout\);

-- Location: LCCOMB_X16_Y1_N30
\be3|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be3|ff0|Q~0_combout\ = \be3|ff0|Q~q\ $ (((\be3|and0|Y~0_combout\) # ((\bnc|ff1|Q~0_combout\ & \be3|and0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \be3|and0|Y~0_combout\,
	datab => \bnc|ff1|Q~0_combout\,
	datac => \be3|ff0|Q~q\,
	datad => \be3|and0|Y~1_combout\,
	combout => \be3|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N31
\be3|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be3|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be3|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N22
\pr8|ff3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff3|Q~0_combout\ = !\be3|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \be3|ff0|Q~q\,
	combout => \pr8|ff3|Q~0_combout\);

-- Location: FF_X15_Y1_N23
\pr8|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff3|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff3|Q~q\);

-- Location: LCCOMB_X16_Y1_N18
\be4|and0|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be4|and0|Y~0_combout\ = (\ff0|Q~q\ & ((\bnc|ff0|Q~q\ & (!\bnc|ff2|Q~q\ & \bnc|ff1|Q~q\)) # (!\bnc|ff0|Q~q\ & (\bnc|ff2|Q~q\ & !\bnc|ff1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \bnc|ff2|Q~q\,
	datac => \bnc|ff1|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be4|and0|Y~0_combout\);

-- Location: LCCOMB_X16_Y1_N0
\be4|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be4|ff0|Q~0_combout\ = \be4|ff0|Q~q\ $ (\be4|and0|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be4|ff0|Q~q\,
	datad => \be4|and0|Y~0_combout\,
	combout => \be4|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N1
\be4|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be4|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be4|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N6
\pr8|ff4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff4|Q~0_combout\ = !\be4|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be4|ff0|Q~q\,
	combout => \pr8|ff4|Q~0_combout\);

-- Location: FF_X15_Y1_N7
\pr8|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff4|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff4|Q~q\);

-- Location: LCCOMB_X16_Y1_N22
\be5|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be5|ff0|Q~0_combout\ = \be5|ff0|Q~q\ $ (((\be3|and0|Y~0_combout\) # ((\bnc|ff0|Q~q\ & \be3|and0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff0|Q~q\,
	datab => \be3|and0|Y~1_combout\,
	datac => \be5|ff0|Q~q\,
	datad => \be3|and0|Y~0_combout\,
	combout => \be5|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N23
\be5|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be5|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be5|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N10
\pr8|ff5|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff5|Q~0_combout\ = !\be5|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be5|ff0|Q~q\,
	combout => \pr8|ff5|Q~0_combout\);

-- Location: FF_X15_Y1_N11
\pr8|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff5|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff5|Q~q\);

-- Location: LCCOMB_X16_Y1_N8
\be6|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be6|ff0|Q~0_combout\ = \be6|ff0|Q~q\ $ (((\be3|and0|Y~0_combout\) # ((\bnc|ff1|Q~q\ & \be3|and0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff1|Q~q\,
	datab => \be3|and0|Y~1_combout\,
	datac => \be6|ff0|Q~q\,
	datad => \be3|and0|Y~0_combout\,
	combout => \be6|ff0|Q~0_combout\);

-- Location: FF_X16_Y1_N9
\be6|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be6|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be6|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N28
\pr8|ff6|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff6|Q~0_combout\ = !\be6|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be6|ff0|Q~q\,
	combout => \pr8|ff6|Q~0_combout\);

-- Location: FF_X15_Y1_N29
\pr8|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff6|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff6|Q~q\);

-- Location: LCCOMB_X16_Y1_N28
\be7|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be7|ff0|Q~0_combout\ = \be7|ff0|Q~q\ $ (((\ff0|Q~q\ & (\bnc|ff2|Q~q\ $ (!\con|cMem|prog~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bnc|ff2|Q~q\,
	datab => \con|cMem|prog~0_combout\,
	datac => \be7|ff0|Q~q\,
	datad => \ff0|Q~q\,
	combout => \be7|ff0|Q~0_combout\);

-- Location: LCCOMB_X16_Y1_N26
\be7|ff0|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \be7|ff0|Q~feeder_combout\ = \be7|ff0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \be7|ff0|Q~0_combout\,
	combout => \be7|ff0|Q~feeder_combout\);

-- Location: FF_X16_Y1_N27
\be7|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \be7|ff0|Q~feeder_combout\,
	clrn => \con|nad2|ALT_INV_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be7|ff0|Q~q\);

-- Location: LCCOMB_X15_Y1_N20
\pr8|ff7|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr8|ff7|Q~0_combout\ = !\be7|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \be7|ff0|Q~q\,
	combout => \pr8|ff7|Q~0_combout\);

-- Location: FF_X15_Y1_N21
\pr8|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|Y~0clkctrl_outclk\,
	d => \pr8|ff7|Q~0_combout\,
	clrn => \con|nad4|ALT_INV_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr8|ff7|Q~q\);

ww_busy <= \busy~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;
END structure;


