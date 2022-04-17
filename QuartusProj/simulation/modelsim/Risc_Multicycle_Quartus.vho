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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/17/2022 02:35:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	data_path IS
    PORT (
	clock : IN std_logic;
	T : IN std_logic_vector(29 DOWNTO 0);
	O : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END data_path;

-- Design Ports Information
-- T[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[10]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[20]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[21]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[22]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[23]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[28]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[29]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[12]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[25]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[16]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[24]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[26]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[27]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_path IS
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
SIGNAL ww_T : std_logic_vector(29 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(2 DOWNTO 0);
SIGNAL \T[0]~input_o\ : std_logic;
SIGNAL \T[1]~input_o\ : std_logic;
SIGNAL \T[2]~input_o\ : std_logic;
SIGNAL \T[3]~input_o\ : std_logic;
SIGNAL \T[4]~input_o\ : std_logic;
SIGNAL \T[5]~input_o\ : std_logic;
SIGNAL \T[6]~input_o\ : std_logic;
SIGNAL \T[7]~input_o\ : std_logic;
SIGNAL \T[8]~input_o\ : std_logic;
SIGNAL \T[9]~input_o\ : std_logic;
SIGNAL \T[10]~input_o\ : std_logic;
SIGNAL \T[11]~input_o\ : std_logic;
SIGNAL \T[13]~input_o\ : std_logic;
SIGNAL \T[14]~input_o\ : std_logic;
SIGNAL \T[15]~input_o\ : std_logic;
SIGNAL \T[19]~input_o\ : std_logic;
SIGNAL \T[20]~input_o\ : std_logic;
SIGNAL \T[21]~input_o\ : std_logic;
SIGNAL \T[22]~input_o\ : std_logic;
SIGNAL \T[23]~input_o\ : std_logic;
SIGNAL \T[28]~input_o\ : std_logic;
SIGNAL \T[29]~input_o\ : std_logic;
SIGNAL \T[17]~input_o\ : std_logic;
SIGNAL \T[18]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \T[12]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \T[24]~input_o\ : std_logic;
SIGNAL \T[25]~input_o\ : std_logic;
SIGNAL \lsm_hw|num[0]~2_combout\ : std_logic;
SIGNAL \lsm_hw|num~0_combout\ : std_logic;
SIGNAL \lsm_hw|num~1_combout\ : std_logic;
SIGNAL \lsm_hw|Equal0~0_combout\ : std_logic;
SIGNAL \lsm_hw|valid~combout\ : std_logic;
SIGNAL \T[27]~input_o\ : std_logic;
SIGNAL \T[26]~input_o\ : std_logic;
SIGNAL \alu_ent|dest[15]~0_combout\ : std_logic;
SIGNAL \T[16]~input_o\ : std_logic;
SIGNAL \alu_ent|Z~combout\ : std_logic;
SIGNAL \lsm_hw|num\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \alu_ent|dest_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_T[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_T[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_T[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_T[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_T[25]~input_o\ : std_logic;
SIGNAL \alu_ent|ALT_INV_dest_temp\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lsm_hw|ALT_INV_num\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \alu_ent|ALT_INV_Z~combout\ : std_logic;
SIGNAL \lsm_hw|ALT_INV_valid~combout\ : std_logic;
SIGNAL \alu_ent|ALT_INV_dest[15]~0_combout\ : std_logic;
SIGNAL \lsm_hw|ALT_INV_num[0]~2_combout\ : std_logic;
SIGNAL \lsm_hw|ALT_INV_num~1_combout\ : std_logic;
SIGNAL \lsm_hw|ALT_INV_num~0_combout\ : std_logic;
SIGNAL \lsm_hw|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_T <= T;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_T[27]~input_o\ <= NOT \T[27]~input_o\;
\ALT_INV_T[26]~input_o\ <= NOT \T[26]~input_o\;
\ALT_INV_T[24]~input_o\ <= NOT \T[24]~input_o\;
\ALT_INV_T[16]~input_o\ <= NOT \T[16]~input_o\;
\ALT_INV_T[25]~input_o\ <= NOT \T[25]~input_o\;
\alu_ent|ALT_INV_dest_temp\(0) <= NOT \alu_ent|dest_temp\(0);
\lsm_hw|ALT_INV_num\(2) <= NOT \lsm_hw|num\(2);
\lsm_hw|ALT_INV_num\(1) <= NOT \lsm_hw|num\(1);
\alu_ent|ALT_INV_Z~combout\ <= NOT \alu_ent|Z~combout\;
\lsm_hw|ALT_INV_valid~combout\ <= NOT \lsm_hw|valid~combout\;
\alu_ent|ALT_INV_dest[15]~0_combout\ <= NOT \alu_ent|dest[15]~0_combout\;
\lsm_hw|ALT_INV_num[0]~2_combout\ <= NOT \lsm_hw|num[0]~2_combout\;
\lsm_hw|ALT_INV_num~1_combout\ <= NOT \lsm_hw|num~1_combout\;
\lsm_hw|ALT_INV_num~0_combout\ <= NOT \lsm_hw|num~0_combout\;
\lsm_hw|ALT_INV_Equal0~0_combout\ <= NOT \lsm_hw|Equal0~0_combout\;

-- Location: IOOBUF_X89_Y37_N22
\O[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lsm_hw|valid~combout\,
	devoe => ww_devoe,
	o => ww_O(0));

-- Location: IOOBUF_X52_Y0_N53
\O[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_O(1));

-- Location: IOOBUF_X40_Y81_N53
\O[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_ent|Z~combout\,
	devoe => ww_devoe,
	o => ww_O(2));

-- Location: IOIBUF_X89_Y37_N4
\T[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(24),
	o => \T[24]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\T[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(25),
	o => \T[25]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\lsm_hw|num[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|num[0]~2_combout\ = ( !\lsm_hw|num[0]~2_combout\ & ( \T[25]~input_o\ & ( !\T[24]~input_o\ ) ) ) # ( \lsm_hw|num[0]~2_combout\ & ( !\T[25]~input_o\ & ( !\T[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_T[24]~input_o\,
	datae => \lsm_hw|ALT_INV_num[0]~2_combout\,
	dataf => \ALT_INV_T[25]~input_o\,
	combout => \lsm_hw|num[0]~2_combout\);

-- Location: LABCELL_X88_Y37_N42
\lsm_hw|num~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|num~0_combout\ = ( \lsm_hw|num\(1) & ( !\lsm_hw|num[0]~2_combout\ ) ) # ( !\lsm_hw|num\(1) & ( \lsm_hw|num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lsm_hw|ALT_INV_num[0]~2_combout\,
	dataf => \lsm_hw|ALT_INV_num\(1),
	combout => \lsm_hw|num~0_combout\);

-- Location: LABCELL_X88_Y37_N57
\lsm_hw|num[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|num\(1) = ( \lsm_hw|num\(1) & ( \T[25]~input_o\ & ( (!\T[24]~input_o\ & \lsm_hw|num~0_combout\) ) ) ) # ( !\lsm_hw|num\(1) & ( \T[25]~input_o\ & ( (!\T[24]~input_o\ & \lsm_hw|num~0_combout\) ) ) ) # ( \lsm_hw|num\(1) & ( !\T[25]~input_o\ & ( 
-- !\T[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_T[24]~input_o\,
	datab => \lsm_hw|ALT_INV_num~0_combout\,
	datae => \lsm_hw|ALT_INV_num\(1),
	dataf => \ALT_INV_T[25]~input_o\,
	combout => \lsm_hw|num\(1));

-- Location: LABCELL_X88_Y37_N27
\lsm_hw|num~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|num~1_combout\ = ( \lsm_hw|num\(1) & ( \lsm_hw|num\(2) & ( !\lsm_hw|num[0]~2_combout\ ) ) ) # ( !\lsm_hw|num\(1) & ( \lsm_hw|num\(2) ) ) # ( \lsm_hw|num\(1) & ( !\lsm_hw|num\(2) & ( \lsm_hw|num[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lsm_hw|ALT_INV_num[0]~2_combout\,
	datae => \lsm_hw|ALT_INV_num\(1),
	dataf => \lsm_hw|ALT_INV_num\(2),
	combout => \lsm_hw|num~1_combout\);

-- Location: LABCELL_X88_Y37_N12
\lsm_hw|num[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|num\(2) = ( \lsm_hw|num\(2) & ( (!\T[24]~input_o\ & ((!\T[25]~input_o\) # (\lsm_hw|num~1_combout\))) ) ) # ( !\lsm_hw|num\(2) & ( (\lsm_hw|num~1_combout\ & (!\T[24]~input_o\ & \T[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lsm_hw|ALT_INV_num~1_combout\,
	datac => \ALT_INV_T[24]~input_o\,
	datad => \ALT_INV_T[25]~input_o\,
	dataf => \lsm_hw|ALT_INV_num\(2),
	combout => \lsm_hw|num\(2));

-- Location: LABCELL_X88_Y37_N51
\lsm_hw|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|Equal0~0_combout\ = ( \lsm_hw|num\(1) & ( \lsm_hw|num\(2) & ( \lsm_hw|num[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lsm_hw|ALT_INV_num[0]~2_combout\,
	datae => \lsm_hw|ALT_INV_num\(1),
	dataf => \lsm_hw|ALT_INV_num\(2),
	combout => \lsm_hw|Equal0~0_combout\);

-- Location: LABCELL_X88_Y37_N30
\lsm_hw|valid\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsm_hw|valid~combout\ = ( \lsm_hw|valid~combout\ & ( (!\lsm_hw|Equal0~0_combout\) # (!\T[25]~input_o\) ) ) # ( !\lsm_hw|valid~combout\ & ( (!\lsm_hw|Equal0~0_combout\ & \T[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lsm_hw|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_T[25]~input_o\,
	dataf => \lsm_hw|ALT_INV_valid~combout\,
	combout => \lsm_hw|valid~combout\);

-- Location: IOIBUF_X40_Y81_N1
\T[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(27),
	o => \T[27]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\T[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(26),
	o => \T[26]~input_o\);

-- Location: LABCELL_X40_Y80_N54
\alu_ent|dest[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_ent|dest[15]~0_combout\ = ( \T[26]~input_o\ ) # ( !\T[26]~input_o\ & ( \T[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_T[27]~input_o\,
	dataf => \ALT_INV_T[26]~input_o\,
	combout => \alu_ent|dest[15]~0_combout\);

-- Location: IOIBUF_X40_Y81_N35
\T[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(16),
	o => \T[16]~input_o\);

-- Location: LABCELL_X40_Y80_N42
\alu_ent|dest_temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_ent|dest_temp\(0) = ( \T[16]~input_o\ & ( \alu_ent|dest_temp\(0) & ( !\alu_ent|dest[15]~0_combout\ ) ) ) # ( !\T[16]~input_o\ & ( \alu_ent|dest_temp\(0) ) ) # ( \T[16]~input_o\ & ( !\alu_ent|dest_temp\(0) & ( !\alu_ent|dest[15]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu_ent|ALT_INV_dest[15]~0_combout\,
	datae => \ALT_INV_T[16]~input_o\,
	dataf => \alu_ent|ALT_INV_dest_temp\(0),
	combout => \alu_ent|dest_temp\(0));

-- Location: LABCELL_X40_Y80_N39
\alu_ent|Z\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_ent|Z~combout\ = ( \T[16]~input_o\ & ( \alu_ent|Z~combout\ & ( \alu_ent|dest_temp\(0) ) ) ) # ( !\T[16]~input_o\ & ( \alu_ent|Z~combout\ ) ) # ( \T[16]~input_o\ & ( !\alu_ent|Z~combout\ & ( \alu_ent|dest_temp\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ent|ALT_INV_dest_temp\(0),
	datae => \ALT_INV_T[16]~input_o\,
	dataf => \alu_ent|ALT_INV_Z~combout\,
	combout => \alu_ent|Z~combout\);

-- Location: IOIBUF_X62_Y81_N1
\T[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(0),
	o => \T[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\T[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(1),
	o => \T[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\T[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(2),
	o => \T[2]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\T[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(3),
	o => \T[3]~input_o\);

-- Location: IOIBUF_X86_Y81_N18
\T[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(4),
	o => \T[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\T[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(5),
	o => \T[5]~input_o\);

-- Location: IOIBUF_X86_Y81_N35
\T[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(6),
	o => \T[6]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\T[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(7),
	o => \T[7]~input_o\);

-- Location: IOIBUF_X66_Y81_N75
\T[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(8),
	o => \T[8]~input_o\);

-- Location: IOIBUF_X64_Y81_N18
\T[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(9),
	o => \T[9]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\T[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(10),
	o => \T[10]~input_o\);

-- Location: IOIBUF_X74_Y81_N92
\T[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(11),
	o => \T[11]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\T[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(13),
	o => \T[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\T[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(14),
	o => \T[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\T[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(15),
	o => \T[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\T[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(19),
	o => \T[19]~input_o\);

-- Location: IOIBUF_X68_Y81_N1
\T[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(20),
	o => \T[20]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\T[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(21),
	o => \T[21]~input_o\);

-- Location: IOIBUF_X76_Y81_N18
\T[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(22),
	o => \T[22]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\T[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(23),
	o => \T[23]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\T[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(28),
	o => \T[28]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\T[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(29),
	o => \T[29]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\T[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(17),
	o => \T[17]~input_o\);

-- Location: IOIBUF_X82_Y81_N41
\T[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(18),
	o => \T[18]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\T[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(12),
	o => \T[12]~input_o\);

-- Location: LABCELL_X81_Y25_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


