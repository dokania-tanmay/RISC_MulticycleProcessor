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

-- DATE "04/14/2022 12:06:23"

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

ENTITY 	registerFile IS
    PORT (
	addr_out1 : IN std_logic_vector(2 DOWNTO 0);
	addr_out2 : IN std_logic_vector(2 DOWNTO 0);
	addr_in : IN std_logic_vector(2 DOWNTO 0);
	data_out1 : BUFFER std_logic_vector(15 DOWNTO 0);
	data_out2 : BUFFER std_logic_vector(15 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	wr_enable : IN std_logic;
	clear : IN std_logic
	);
END registerFile;

-- Design Ports Information
-- data_out1[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[12]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[14]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out1[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out2[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_enable	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out1[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out1[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out1[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out2[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out2[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out2[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registerFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr_out1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_addr_out2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_addr_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_out1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_wr_enable : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \wr_enable~input_o\ : std_logic;
SIGNAL \addr_in[0]~input_o\ : std_logic;
SIGNAL \addr_in[1]~input_o\ : std_logic;
SIGNAL \addr_in[2]~input_o\ : std_logic;
SIGNAL \addr_out1[0]~input_o\ : std_logic;
SIGNAL \addr_out1[1]~input_o\ : std_logic;
SIGNAL \addr_out1[2]~input_o\ : std_logic;
SIGNAL \addr_out2[0]~input_o\ : std_logic;
SIGNAL \addr_out2[1]~input_o\ : std_logic;
SIGNAL \addr_out2[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
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

BEGIN

ww_addr_out1 <= addr_out1;
ww_addr_out2 <= addr_out2;
ww_addr_in <= addr_in;
data_out1 <= ww_data_out1;
data_out2 <= ww_data_out2;
ww_data_in <= data_in;
ww_clock <= clock;
ww_wr_enable <= wr_enable;
ww_clear <= clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X30_Y0_N36
\data_out1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[0]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(0));

-- Location: IOOBUF_X52_Y0_N19
\data_out1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[1]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(1));

-- Location: IOOBUF_X36_Y0_N36
\data_out1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[2]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(2));

-- Location: IOOBUF_X8_Y0_N36
\data_out1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[3]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(3));

-- Location: IOOBUF_X2_Y0_N59
\data_out1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[4]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(4));

-- Location: IOOBUF_X26_Y0_N42
\data_out1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[5]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(5));

-- Location: IOOBUF_X4_Y0_N53
\data_out1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[6]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(6));

-- Location: IOOBUF_X34_Y0_N76
\data_out1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[7]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(7));

-- Location: IOOBUF_X8_Y0_N2
\data_out1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[8]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(8));

-- Location: IOOBUF_X40_Y0_N2
\data_out1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[9]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(9));

-- Location: IOOBUF_X26_Y0_N93
\data_out1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[10]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(10));

-- Location: IOOBUF_X32_Y0_N53
\data_out1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[11]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(11));

-- Location: IOOBUF_X28_Y0_N2
\data_out1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[12]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(12));

-- Location: IOOBUF_X38_Y0_N36
\data_out1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[13]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(13));

-- Location: IOOBUF_X6_Y0_N36
\data_out1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[14]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(14));

-- Location: IOOBUF_X36_Y0_N53
\data_out1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[15]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out1(15));

-- Location: IOOBUF_X30_Y0_N19
\data_out2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[0]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(0));

-- Location: IOOBUF_X52_Y0_N36
\data_out2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[1]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(1));

-- Location: IOOBUF_X34_Y0_N59
\data_out2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[2]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(2));

-- Location: IOOBUF_X8_Y0_N19
\data_out2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[3]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(3));

-- Location: IOOBUF_X2_Y0_N76
\data_out2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[4]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(4));

-- Location: IOOBUF_X30_Y0_N53
\data_out2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[5]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(5));

-- Location: IOOBUF_X4_Y0_N2
\data_out2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[6]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(6));

-- Location: IOOBUF_X34_Y0_N93
\data_out2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[7]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(7));

-- Location: IOOBUF_X6_Y0_N2
\data_out2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[8]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(8));

-- Location: IOOBUF_X40_Y0_N36
\data_out2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[9]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(9));

-- Location: IOOBUF_X26_Y0_N76
\data_out2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[10]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(10));

-- Location: IOOBUF_X32_Y0_N2
\data_out2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[11]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(11));

-- Location: IOOBUF_X28_Y0_N53
\data_out2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[12]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(12));

-- Location: IOOBUF_X38_Y0_N19
\data_out2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[13]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(13));

-- Location: IOOBUF_X6_Y0_N19
\data_out2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[14]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(14));

-- Location: IOOBUF_X36_Y0_N2
\data_out2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[15]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out2(15));

-- Location: IOIBUF_X30_Y0_N1
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X62_Y81_N35
\wr_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_enable,
	o => \wr_enable~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\addr_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(0),
	o => \addr_in[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\addr_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(1),
	o => \addr_in[1]~input_o\);

-- Location: IOIBUF_X82_Y81_N58
\addr_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(2),
	o => \addr_in[2]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\addr_out1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out1(0),
	o => \addr_out1[0]~input_o\);

-- Location: IOIBUF_X82_Y81_N41
\addr_out1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out1(1),
	o => \addr_out1[1]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\addr_out1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out1(2),
	o => \addr_out1[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\addr_out2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out2(0),
	o => \addr_out2[0]~input_o\);

-- Location: IOIBUF_X56_Y81_N1
\addr_out2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out2(1),
	o => \addr_out2[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\addr_out2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_out2(2),
	o => \addr_out2[2]~input_o\);

-- Location: LABCELL_X80_Y8_N3
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


