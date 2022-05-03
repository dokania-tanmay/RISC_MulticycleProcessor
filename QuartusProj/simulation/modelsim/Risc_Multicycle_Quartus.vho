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

-- DATE "05/03/2022 12:25:39"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(1 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(79 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[48]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[49]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[50]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[51]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[52]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[53]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[54]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[55]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[56]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[57]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[58]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[59]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[60]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[61]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[62]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[63]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[64]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[65]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[66]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[67]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[68]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[69]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[70]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[71]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[72]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[73]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[74]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[75]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[76]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[77]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[78]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[79]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(79 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S0~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S0~q\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S1~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S1~q\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S2~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S2~q\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S3~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S3~q\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S7~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S7~q\ : std_logic;
SIGNAL \add_instance|control_logic|NS.S8~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|CS.S8~q\ : std_logic;
SIGNAL \add_instance|control_logic|WideOr1~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|temp3|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|alu_ent|dest\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_dest\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S2~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S3~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S0~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S7~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S1~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S8~q\ : std_logic;
SIGNAL \add_instance|prim_datapath|temp3|ALT_INV_dout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector[1]~input_o\ <= NOT \input_vector[1]~input_o\;
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(0) <= NOT \add_instance|prim_datapath|alu_ent|dest\(0);
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][0]~combout\;
\add_instance|control_logic|ALT_INV_CS.S2~q\ <= NOT \add_instance|control_logic|CS.S2~q\;
\add_instance|control_logic|ALT_INV_CS.S3~q\ <= NOT \add_instance|control_logic|CS.S3~q\;
\add_instance|control_logic|ALT_INV_CS.S0~q\ <= NOT \add_instance|control_logic|CS.S0~q\;
\add_instance|control_logic|ALT_INV_WideOr1~combout\ <= NOT \add_instance|control_logic|WideOr1~combout\;
\add_instance|control_logic|ALT_INV_CS.S7~q\ <= NOT \add_instance|control_logic|CS.S7~q\;
\add_instance|control_logic|ALT_INV_CS.S1~q\ <= NOT \add_instance|control_logic|CS.S1~q\;
\add_instance|control_logic|ALT_INV_CS.S8~q\ <= NOT \add_instance|control_logic|CS.S8~q\;
\add_instance|prim_datapath|temp3|ALT_INV_dout\(0) <= NOT \add_instance|prim_datapath|temp3|dout\(0);

-- Location: IOOBUF_X4_Y0_N53
\output_vector[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][0]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(0));

-- Location: IOOBUF_X66_Y81_N42
\output_vector[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(1));

-- Location: IOOBUF_X58_Y0_N42
\output_vector[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(2));

-- Location: IOOBUF_X40_Y0_N53
\output_vector[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(3));

-- Location: IOOBUF_X62_Y81_N53
\output_vector[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(4));

-- Location: IOOBUF_X56_Y81_N19
\output_vector[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(5));

-- Location: IOOBUF_X74_Y81_N59
\output_vector[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(6));

-- Location: IOOBUF_X6_Y0_N53
\output_vector[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(7));

-- Location: IOOBUF_X68_Y0_N2
\output_vector[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(8));

-- Location: IOOBUF_X66_Y81_N93
\output_vector[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(9));

-- Location: IOOBUF_X56_Y81_N53
\output_vector[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(10));

-- Location: IOOBUF_X76_Y81_N19
\output_vector[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(11));

-- Location: IOOBUF_X2_Y0_N76
\output_vector[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(12));

-- Location: IOOBUF_X76_Y81_N36
\output_vector[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(13));

-- Location: IOOBUF_X89_Y8_N5
\output_vector[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(14));

-- Location: IOOBUF_X89_Y37_N39
\output_vector[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(15));

-- Location: IOOBUF_X89_Y9_N39
\output_vector[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(16));

-- Location: IOOBUF_X36_Y81_N53
\output_vector[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(17));

-- Location: IOOBUF_X26_Y0_N93
\output_vector[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(18));

-- Location: IOOBUF_X70_Y81_N2
\output_vector[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(19));

-- Location: IOOBUF_X70_Y0_N2
\output_vector[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(20));

-- Location: IOOBUF_X66_Y0_N93
\output_vector[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(21));

-- Location: IOOBUF_X70_Y81_N53
\output_vector[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(22));

-- Location: IOOBUF_X32_Y0_N53
\output_vector[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(23));

-- Location: IOOBUF_X38_Y81_N53
\output_vector[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(24));

-- Location: IOOBUF_X28_Y81_N2
\output_vector[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(25));

-- Location: IOOBUF_X66_Y0_N76
\output_vector[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(26));

-- Location: IOOBUF_X56_Y0_N53
\output_vector[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(27));

-- Location: IOOBUF_X30_Y0_N36
\output_vector[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(28));

-- Location: IOOBUF_X52_Y0_N19
\output_vector[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(29));

-- Location: IOOBUF_X86_Y81_N53
\output_vector[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(30));

-- Location: IOOBUF_X89_Y8_N56
\output_vector[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(31));

-- Location: IOOBUF_X40_Y0_N2
\output_vector[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(32));

-- Location: IOOBUF_X36_Y0_N2
\output_vector[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(33));

-- Location: IOOBUF_X89_Y37_N22
\output_vector[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(34));

-- Location: IOOBUF_X64_Y81_N53
\output_vector[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(35));

-- Location: IOOBUF_X26_Y0_N59
\output_vector[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(36));

-- Location: IOOBUF_X70_Y0_N53
\output_vector[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(37));

-- Location: IOOBUF_X72_Y81_N36
\output_vector[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(38));

-- Location: IOOBUF_X28_Y81_N53
\output_vector[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(39));

-- Location: IOOBUF_X28_Y81_N36
\output_vector[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(40));

-- Location: IOOBUF_X52_Y0_N2
\output_vector[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(41));

-- Location: IOOBUF_X58_Y0_N93
\output_vector[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(42));

-- Location: IOOBUF_X4_Y0_N2
\output_vector[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(43));

-- Location: IOOBUF_X88_Y81_N37
\output_vector[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(44));

-- Location: IOOBUF_X72_Y81_N19
\output_vector[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(45));

-- Location: IOOBUF_X82_Y81_N42
\output_vector[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(46));

-- Location: IOOBUF_X60_Y0_N19
\output_vector[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(47));

-- Location: IOOBUF_X82_Y81_N76
\output_vector[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(48));

-- Location: IOOBUF_X64_Y81_N36
\output_vector[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(49));

-- Location: IOOBUF_X54_Y0_N19
\output_vector[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(50));

-- Location: IOOBUF_X54_Y81_N2
\output_vector[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(51));

-- Location: IOOBUF_X68_Y81_N19
\output_vector[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(52));

-- Location: IOOBUF_X56_Y81_N2
\output_vector[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(53));

-- Location: IOOBUF_X40_Y0_N19
\output_vector[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(54));

-- Location: IOOBUF_X30_Y81_N36
\output_vector[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(55));

-- Location: IOOBUF_X72_Y0_N36
\output_vector[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(56));

-- Location: IOOBUF_X40_Y81_N2
\output_vector[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(57));

-- Location: IOOBUF_X62_Y81_N36
\output_vector[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(58));

-- Location: IOOBUF_X50_Y81_N76
\output_vector[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(59));

-- Location: IOOBUF_X34_Y81_N59
\output_vector[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(60));

-- Location: IOOBUF_X50_Y0_N76
\output_vector[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(61));

-- Location: IOOBUF_X64_Y0_N53
\output_vector[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(62));

-- Location: IOOBUF_X50_Y0_N42
\output_vector[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(63));

-- Location: IOOBUF_X32_Y81_N53
\output_vector[64]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(64));

-- Location: IOOBUF_X70_Y81_N19
\output_vector[65]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(65));

-- Location: IOOBUF_X60_Y0_N36
\output_vector[66]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(66));

-- Location: IOOBUF_X68_Y81_N36
\output_vector[67]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(67));

-- Location: IOOBUF_X32_Y81_N19
\output_vector[68]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(68));

-- Location: IOOBUF_X62_Y0_N19
\output_vector[69]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(69));

-- Location: IOOBUF_X89_Y8_N39
\output_vector[70]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(70));

-- Location: IOOBUF_X62_Y81_N2
\output_vector[71]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(71));

-- Location: IOOBUF_X32_Y81_N2
\output_vector[72]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(72));

-- Location: IOOBUF_X89_Y38_N22
\output_vector[73]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(73));

-- Location: IOOBUF_X56_Y0_N19
\output_vector[74]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(74));

-- Location: IOOBUF_X26_Y81_N42
\output_vector[75]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(75));

-- Location: IOOBUF_X36_Y81_N2
\output_vector[76]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(76));

-- Location: IOOBUF_X8_Y0_N36
\output_vector[77]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(77));

-- Location: IOOBUF_X26_Y0_N76
\output_vector[78]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(78));

-- Location: IOOBUF_X52_Y0_N36
\output_vector[79]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output_vector(79));

-- Location: IOIBUF_X89_Y35_N61
\input_vector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: CLKCTRL_G10
\input_vector[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[0]~input_o\,
	outclk => \input_vector[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N35
\input_vector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: LABCELL_X4_Y1_N33
\add_instance|control_logic|NS.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S0~0_combout\ = ( !\input_vector[1]~input_o\ & ( !\add_instance|control_logic|CS.S8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	combout => \add_instance|control_logic|NS.S0~0_combout\);

-- Location: FF_X4_Y1_N34
\add_instance|control_logic|CS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S0~q\);

-- Location: LABCELL_X4_Y1_N48
\add_instance|control_logic|NS.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S1~0_combout\ = ( !\add_instance|control_logic|CS.S0~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	combout => \add_instance|control_logic|NS.S1~0_combout\);

-- Location: FF_X4_Y1_N50
\add_instance|control_logic|CS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S1~q\);

-- Location: LABCELL_X4_Y1_N51
\add_instance|control_logic|NS.S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S2~0_combout\ = ( \add_instance|control_logic|CS.S1~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S1~q\,
	combout => \add_instance|control_logic|NS.S2~0_combout\);

-- Location: FF_X4_Y1_N53
\add_instance|control_logic|CS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S2~q\);

-- Location: LABCELL_X4_Y1_N42
\add_instance|control_logic|NS.S3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S3~0_combout\ = ( \add_instance|control_logic|CS.S2~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S2~q\,
	combout => \add_instance|control_logic|NS.S3~0_combout\);

-- Location: FF_X4_Y1_N1
\add_instance|control_logic|CS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|control_logic|NS.S3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S3~q\);

-- Location: LABCELL_X4_Y1_N24
\add_instance|control_logic|NS.S7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S7~0_combout\ = ( !\input_vector[1]~input_o\ & ( \add_instance|control_logic|CS.S3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S3~q\,
	combout => \add_instance|control_logic|NS.S7~0_combout\);

-- Location: FF_X4_Y1_N26
\add_instance|control_logic|CS.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S7~q\);

-- Location: LABCELL_X4_Y1_N6
\add_instance|control_logic|NS.S8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S8~0_combout\ = ( !\input_vector[1]~input_o\ & ( \add_instance|control_logic|CS.S7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|control_logic|NS.S8~0_combout\);

-- Location: FF_X4_Y1_N8
\add_instance|control_logic|CS.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S8~q\);

-- Location: LABCELL_X4_Y1_N57
\add_instance|control_logic|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|WideOr1~combout\ = ( \add_instance|control_logic|CS.S7~q\ ) # ( !\add_instance|control_logic|CS.S7~q\ & ( \add_instance|control_logic|CS.S1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|control_logic|ALT_INV_CS.S1~q\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|control_logic|WideOr1~combout\);

-- Location: LABCELL_X4_Y1_N21
\add_instance|prim_datapath|alu_ent|dest[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(0) = ( \add_instance|prim_datapath|alu_ent|dest\(0) & ( \add_instance|control_logic|CS.S7~q\ & ( !\add_instance|control_logic|WideOr1~combout\ ) ) ) # ( \add_instance|prim_datapath|alu_ent|dest\(0) & ( 
-- !\add_instance|control_logic|CS.S7~q\ ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(0) & ( !\add_instance|control_logic|CS.S7~q\ & ( \add_instance|control_logic|WideOr1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(0),
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|prim_datapath|alu_ent|dest\(0));

-- Location: FF_X4_Y1_N44
\add_instance|prim_datapath|temp3|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(0),
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(0));

-- Location: LABCELL_X4_Y1_N0
\add_instance|prim_datapath|reg_file|registers[0][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( \add_instance|prim_datapath|temp3|dout\(0) ) ) # ( !\add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( 
-- \add_instance|prim_datapath|temp3|dout\(0) & ( \add_instance|control_logic|CS.S8~q\ ) ) ) # ( \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( !\add_instance|prim_datapath|temp3|dout\(0) & ( !\add_instance|control_logic|CS.S8~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datae => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(0),
	combout => \add_instance|prim_datapath|reg_file|registers[0][0]~combout\);

-- Location: LABCELL_X13_Y61_N3
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


