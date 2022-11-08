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

-- DATE "11/08/2022 18:31:16"

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

ENTITY 	controlUnit IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	add : IN std_logic_vector(2 DOWNTO 0);
	kVals : OUT std_logic_vector(7 DOWNTO 0);
	nRst : OUT std_logic;
	nSetO : OUT std_logic;
	clkO : OUT std_logic
	);
END controlUnit;

-- Design Ports Information
-- kVals[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kVals[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSetO	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkO	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_add : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_kVals : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nRst : std_logic;
SIGNAL ww_nSetO : std_logic;
SIGNAL ww_clkO : std_logic;
SIGNAL \kVals[0]~output_o\ : std_logic;
SIGNAL \kVals[1]~output_o\ : std_logic;
SIGNAL \kVals[2]~output_o\ : std_logic;
SIGNAL \kVals[3]~output_o\ : std_logic;
SIGNAL \kVals[4]~output_o\ : std_logic;
SIGNAL \kVals[5]~output_o\ : std_logic;
SIGNAL \kVals[6]~output_o\ : std_logic;
SIGNAL \kVals[7]~output_o\ : std_logic;
SIGNAL \nRst~output_o\ : std_logic;
SIGNAL \nSetO~output_o\ : std_logic;
SIGNAL \clkO~output_o\ : std_logic;
SIGNAL \add[2]~input_o\ : std_logic;
SIGNAL \add[0]~input_o\ : std_logic;
SIGNAL \add[1]~input_o\ : std_logic;
SIGNAL \cMem|prog~0_combout\ : std_logic;
SIGNAL \cMem|prog~1_combout\ : std_logic;
SIGNAL \cMem|prog~2_combout\ : std_logic;
SIGNAL \cMem|prog~3_combout\ : std_logic;
SIGNAL \cMem|prog~4_combout\ : std_logic;
SIGNAL \cMem|prog~5_combout\ : std_logic;
SIGNAL \cMem|prog~6_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \nad2|Y~0_combout\ : std_logic;
SIGNAL \nord|Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_add[2]~input_o\ : std_logic;
SIGNAL \nord|ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \nad2|ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \cMem|ALT_INV_prog~6_combout\ : std_logic;
SIGNAL \cMem|ALT_INV_prog~3_combout\ : std_logic;
SIGNAL \cMem|ALT_INV_prog~1_combout\ : std_logic;
SIGNAL \cMem|ALT_INV_prog~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_add <= add;
kVals <= ww_kVals;
nRst <= ww_nRst;
nSetO <= ww_nSetO;
clkO <= ww_clkO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_add[2]~input_o\ <= NOT \add[2]~input_o\;
\nord|ALT_INV_Y~0_combout\ <= NOT \nord|Y~0_combout\;
\nad2|ALT_INV_Y~0_combout\ <= NOT \nad2|Y~0_combout\;
\cMem|ALT_INV_prog~6_combout\ <= NOT \cMem|prog~6_combout\;
\cMem|ALT_INV_prog~3_combout\ <= NOT \cMem|prog~3_combout\;
\cMem|ALT_INV_prog~1_combout\ <= NOT \cMem|prog~1_combout\;
\cMem|ALT_INV_prog~5_combout\ <= NOT \cMem|prog~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N9
\kVals[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~0_combout\,
	devoe => ww_devoe,
	o => \kVals[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\kVals[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~1_combout\,
	devoe => ww_devoe,
	o => \kVals[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\kVals[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~2_combout\,
	devoe => ww_devoe,
	o => \kVals[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\kVals[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~3_combout\,
	devoe => ww_devoe,
	o => \kVals[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\kVals[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~4_combout\,
	devoe => ww_devoe,
	o => \kVals[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\kVals[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~5_combout\,
	devoe => ww_devoe,
	o => \kVals[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\kVals[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~6_combout\,
	devoe => ww_devoe,
	o => \kVals[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\kVals[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_add[2]~input_o\,
	devoe => ww_devoe,
	o => \kVals[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\nRst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nad2|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => \nRst~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\nSetO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nad2|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => \nSetO~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\clkO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nord|ALT_INV_Y~0_combout\,
	devoe => ww_devoe,
	o => \clkO~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\add[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(2),
	o => \add[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\add[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(0),
	o => \add[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\add[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(1),
	o => \add[1]~input_o\);

-- Location: LCCOMB_X21_Y4_N8
\cMem|prog~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~0_combout\ = (!\add[2]~input_o\ & (\add[0]~input_o\ & \add[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~0_combout\);

-- Location: LCCOMB_X21_Y4_N2
\cMem|prog~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~1_combout\ = (\add[2]~input_o\) # (\add[0]~input_o\ $ (\add[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~1_combout\);

-- Location: LCCOMB_X21_Y4_N28
\cMem|prog~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~2_combout\ = (!\add[2]~input_o\ & \add[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	combout => \cMem|prog~2_combout\);

-- Location: LCCOMB_X21_Y4_N6
\cMem|prog~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~3_combout\ = (\add[2]~input_o\) # ((!\add[0]~input_o\ & \add[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~3_combout\);

-- Location: LCCOMB_X21_Y4_N16
\cMem|prog~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~4_combout\ = (!\add[2]~input_o\ & \add[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~4_combout\);

-- Location: LCCOMB_X21_Y4_N26
\cMem|prog~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~5_combout\ = (\add[2]~input_o\) # ((\add[0]~input_o\ & !\add[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~5_combout\);

-- Location: LCCOMB_X21_Y4_N4
\cMem|prog~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cMem|prog~6_combout\ = (\add[2]~input_o\) # ((!\add[0]~input_o\ & !\add[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \cMem|prog~6_combout\);

-- Location: IOIBUF_X29_Y0_N1
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X21_Y4_N30
\nad2|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nad2|Y~0_combout\ = (\clk~input_o\ & (((\cMem|prog~2_combout\ & !\add[1]~input_o\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \cMem|prog~2_combout\,
	datac => \clk~input_o\,
	datad => \add[1]~input_o\,
	combout => \nad2|Y~0_combout\);

-- Location: LCCOMB_X21_Y4_N0
\nord|Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nord|Y~0_combout\ = ((\clk~input_o\) # ((\add[0]~input_o\) # (\add[1]~input_o\))) # (!\add[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add[2]~input_o\,
	datab => \clk~input_o\,
	datac => \add[0]~input_o\,
	datad => \add[1]~input_o\,
	combout => \nord|Y~0_combout\);

ww_kVals(0) <= \kVals[0]~output_o\;

ww_kVals(1) <= \kVals[1]~output_o\;

ww_kVals(2) <= \kVals[2]~output_o\;

ww_kVals(3) <= \kVals[3]~output_o\;

ww_kVals(4) <= \kVals[4]~output_o\;

ww_kVals(5) <= \kVals[5]~output_o\;

ww_kVals(6) <= \kVals[6]~output_o\;

ww_kVals(7) <= \kVals[7]~output_o\;

ww_nRst <= \nRst~output_o\;

ww_nSetO <= \nSetO~output_o\;

ww_clkO <= \clkO~output_o\;
END structure;


