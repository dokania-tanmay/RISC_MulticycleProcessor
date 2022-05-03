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

-- DATE "05/03/2022 18:48:47"

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
-- output_vector[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[48]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[49]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[50]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[51]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[52]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[53]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[54]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[55]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[56]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[57]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[58]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[59]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[60]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[61]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[62]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[63]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[64]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[65]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[66]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[67]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[68]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[69]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[70]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[71]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[72]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[73]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[74]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[75]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[76]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[77]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[78]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[79]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \add_instance|prim_datapath|t1_din[0]~0_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[1]~1_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][1]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[2]~2_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][2]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[3]~3_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][3]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[4]~4_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][4]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[5]~5_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|carry~0_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][5]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[6]~6_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][6]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[7]~7_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][7]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[8]~8_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][8]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[9]~9_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][9]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[10]~10_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][10]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[11]~11_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][11]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[12]~12_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[12]~3_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][12]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[13]~13_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][13]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[14]~14_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][14]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|t1_din[15]~15_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|carry~1_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|registers[0][15]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|temp3|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|temp1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|alu_ent|add_temp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|alu_ent|dest\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_dest\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][15]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][14]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][13]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][12]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][11]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][10]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][9]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][8]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][7]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][6]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][5]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][4]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][3]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][2]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][1]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[14]~5_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[13]~4_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[12]~3_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[11]~2_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[10]~1_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[15]~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S2~q\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|temp1|ALT_INV_dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_carry~1_combout\ : std_logic;
SIGNAL \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S3~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S0~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S7~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S1~q\ : std_logic;
SIGNAL \add_instance|control_logic|ALT_INV_CS.S8~q\ : std_logic;
SIGNAL \add_instance|prim_datapath|temp3|ALT_INV_dout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector[1]~input_o\ <= NOT \input_vector[1]~input_o\;
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(15) <= NOT \add_instance|prim_datapath|alu_ent|dest\(15);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(14) <= NOT \add_instance|prim_datapath|alu_ent|dest\(14);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(13) <= NOT \add_instance|prim_datapath|alu_ent|dest\(13);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(12) <= NOT \add_instance|prim_datapath|alu_ent|dest\(12);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(11) <= NOT \add_instance|prim_datapath|alu_ent|dest\(11);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(10) <= NOT \add_instance|prim_datapath|alu_ent|dest\(10);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(9) <= NOT \add_instance|prim_datapath|alu_ent|dest\(9);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(8) <= NOT \add_instance|prim_datapath|alu_ent|dest\(8);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(7) <= NOT \add_instance|prim_datapath|alu_ent|dest\(7);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(6) <= NOT \add_instance|prim_datapath|alu_ent|dest\(6);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(5) <= NOT \add_instance|prim_datapath|alu_ent|dest\(5);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(4) <= NOT \add_instance|prim_datapath|alu_ent|dest\(4);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(3) <= NOT \add_instance|prim_datapath|alu_ent|dest\(3);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(2) <= NOT \add_instance|prim_datapath|alu_ent|dest\(2);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(1) <= NOT \add_instance|prim_datapath|alu_ent|dest\(1);
\add_instance|prim_datapath|alu_ent|ALT_INV_dest\(0) <= NOT \add_instance|prim_datapath|alu_ent|dest\(0);
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][15]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][15]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][14]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][14]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][13]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][13]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][12]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][12]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][11]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][11]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][10]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][10]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][9]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][9]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][8]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][8]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][7]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][7]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][6]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][6]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][5]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][5]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][4]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][4]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][3]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][3]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][2]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][2]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][1]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][1]~combout\;
\add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\ <= NOT \add_instance|prim_datapath|reg_file|registers[0][0]~combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[14]~5_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[13]~4_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[12]~3_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[12]~3_combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[11]~2_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[10]~1_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[15]~0_combout\ <= NOT \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\;
\add_instance|control_logic|ALT_INV_CS.S2~q\ <= NOT \add_instance|control_logic|CS.S2~q\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(15) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(15);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(15) <= NOT \add_instance|prim_datapath|temp1|dout\(15);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(14) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(14);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(14) <= NOT \add_instance|prim_datapath|temp1|dout\(14);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(13) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(13);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(13) <= NOT \add_instance|prim_datapath|temp1|dout\(13);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(12) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(12);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(12) <= NOT \add_instance|prim_datapath|temp1|dout\(12);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(11) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(11);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(11) <= NOT \add_instance|prim_datapath|temp1|dout\(11);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(10) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(10);
\add_instance|prim_datapath|alu_ent|ALT_INV_carry~1_combout\ <= NOT \add_instance|prim_datapath|alu_ent|carry~1_combout\;
\add_instance|prim_datapath|temp1|ALT_INV_dout\(10) <= NOT \add_instance|prim_datapath|temp1|dout\(10);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(9) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(9);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(9) <= NOT \add_instance|prim_datapath|temp1|dout\(9);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(8) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(8);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(8) <= NOT \add_instance|prim_datapath|temp1|dout\(8);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(7) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(7);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(7) <= NOT \add_instance|prim_datapath|temp1|dout\(7);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(6) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(6);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(6) <= NOT \add_instance|prim_datapath|temp1|dout\(6);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(5) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(5);
\add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\ <= NOT \add_instance|prim_datapath|alu_ent|carry~0_combout\;
\add_instance|prim_datapath|temp1|ALT_INV_dout\(5) <= NOT \add_instance|prim_datapath|temp1|dout\(5);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(4) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(4);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(4) <= NOT \add_instance|prim_datapath|temp1|dout\(4);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(3) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(3);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(3) <= NOT \add_instance|prim_datapath|temp1|dout\(3);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(2) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(2);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(2) <= NOT \add_instance|prim_datapath|temp1|dout\(2);
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(1) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(1);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(1) <= NOT \add_instance|prim_datapath|temp1|dout\(1);
\add_instance|control_logic|ALT_INV_CS.S3~q\ <= NOT \add_instance|control_logic|CS.S3~q\;
\add_instance|control_logic|ALT_INV_CS.S0~q\ <= NOT \add_instance|control_logic|CS.S0~q\;
\add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(0) <= NOT \add_instance|prim_datapath|alu_ent|add_temp\(0);
\add_instance|prim_datapath|temp1|ALT_INV_dout\(0) <= NOT \add_instance|prim_datapath|temp1|dout\(0);
\add_instance|control_logic|ALT_INV_WideOr1~combout\ <= NOT \add_instance|control_logic|WideOr1~combout\;
\add_instance|control_logic|ALT_INV_CS.S7~q\ <= NOT \add_instance|control_logic|CS.S7~q\;
\add_instance|control_logic|ALT_INV_CS.S1~q\ <= NOT \add_instance|control_logic|CS.S1~q\;
\add_instance|control_logic|ALT_INV_CS.S8~q\ <= NOT \add_instance|control_logic|CS.S8~q\;
\add_instance|prim_datapath|temp3|ALT_INV_dout\(15) <= NOT \add_instance|prim_datapath|temp3|dout\(15);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(14) <= NOT \add_instance|prim_datapath|temp3|dout\(14);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(13) <= NOT \add_instance|prim_datapath|temp3|dout\(13);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(12) <= NOT \add_instance|prim_datapath|temp3|dout\(12);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(11) <= NOT \add_instance|prim_datapath|temp3|dout\(11);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(10) <= NOT \add_instance|prim_datapath|temp3|dout\(10);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(9) <= NOT \add_instance|prim_datapath|temp3|dout\(9);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(8) <= NOT \add_instance|prim_datapath|temp3|dout\(8);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(7) <= NOT \add_instance|prim_datapath|temp3|dout\(7);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(6) <= NOT \add_instance|prim_datapath|temp3|dout\(6);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(5) <= NOT \add_instance|prim_datapath|temp3|dout\(5);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(4) <= NOT \add_instance|prim_datapath|temp3|dout\(4);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(3) <= NOT \add_instance|prim_datapath|temp3|dout\(3);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(2) <= NOT \add_instance|prim_datapath|temp3|dout\(2);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(1) <= NOT \add_instance|prim_datapath|temp3|dout\(1);
\add_instance|prim_datapath|temp3|ALT_INV_dout\(0) <= NOT \add_instance|prim_datapath|temp3|dout\(0);

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y36_N56
\output_vector[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][1]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(1));

-- Location: IOOBUF_X89_Y37_N56
\output_vector[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][2]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(2));

-- Location: IOOBUF_X89_Y9_N5
\output_vector[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][3]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(3));

-- Location: IOOBUF_X89_Y35_N96
\output_vector[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][4]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(4));

-- Location: IOOBUF_X89_Y38_N56
\output_vector[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][5]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(5));

-- Location: IOOBUF_X89_Y38_N5
\output_vector[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][6]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(6));

-- Location: IOOBUF_X89_Y38_N39
\output_vector[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][7]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(7));

-- Location: IOOBUF_X89_Y36_N22
\output_vector[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][8]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(8));

-- Location: IOOBUF_X89_Y37_N39
\output_vector[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][9]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(9));

-- Location: IOOBUF_X89_Y35_N45
\output_vector[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][10]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(10));

-- Location: IOOBUF_X89_Y9_N39
\output_vector[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][11]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(11));

-- Location: IOOBUF_X89_Y37_N5
\output_vector[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][12]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(12));

-- Location: IOOBUF_X89_Y37_N22
\output_vector[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][13]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(13));

-- Location: IOOBUF_X89_Y36_N5
\output_vector[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][14]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(14));

-- Location: IOOBUF_X89_Y38_N22
\output_vector[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|prim_datapath|reg_file|registers[0][15]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(15));

-- Location: IOOBUF_X26_Y81_N76
\output_vector[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(16));

-- Location: IOOBUF_X62_Y81_N2
\output_vector[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(17));

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X26_Y0_N93
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

-- Location: IOOBUF_X30_Y81_N2
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

-- Location: IOOBUF_X60_Y81_N36
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X78_Y81_N19
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

-- Location: IOOBUF_X54_Y81_N2
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

-- Location: IOOBUF_X68_Y81_N2
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X54_Y81_N36
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

-- Location: IOOBUF_X36_Y81_N2
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

-- Location: IOOBUF_X32_Y81_N36
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X88_Y81_N37
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X58_Y81_N93
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X86_Y81_N19
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

-- Location: IOOBUF_X26_Y81_N93
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

-- Location: IOOBUF_X89_Y4_N62
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

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X54_Y81_N19
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

-- Location: IOOBUF_X58_Y81_N76
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X6_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X86_Y81_N53
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

-- Location: IOOBUF_X34_Y81_N42
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X6_Y0_N19
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

-- Location: IOOBUF_X64_Y81_N19
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

-- Location: IOOBUF_X28_Y81_N53
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

-- Location: IOOBUF_X4_Y0_N19
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

-- Location: IOOBUF_X80_Y81_N2
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X72_Y81_N2
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

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X32_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X60_Y81_N2
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

-- Location: IOOBUF_X66_Y81_N93
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

-- Location: IOOBUF_X26_Y0_N42
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

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X50_Y81_N76
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

-- Location: IOOBUF_X50_Y81_N59
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

-- Location: IOOBUF_X38_Y81_N53
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

-- Location: IOOBUF_X52_Y81_N53
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

-- Location: IOOBUF_X66_Y81_N42
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

-- Location: IOOBUF_X28_Y0_N36
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

-- Location: IOOBUF_X40_Y81_N53
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

-- Location: IOOBUF_X26_Y81_N59
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X76_Y81_N36
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

-- Location: IOOBUF_X84_Y81_N53
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

-- Location: IOIBUF_X89_Y35_N78
\input_vector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: LABCELL_X88_Y37_N24
\add_instance|control_logic|NS.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S0~0_combout\ = ( !\add_instance|control_logic|CS.S8~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	combout => \add_instance|control_logic|NS.S0~0_combout\);

-- Location: FF_X88_Y37_N26
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

-- Location: MLABCELL_X87_Y37_N36
\add_instance|control_logic|NS.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S1~0_combout\ = ( !\add_instance|control_logic|CS.S0~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	combout => \add_instance|control_logic|NS.S1~0_combout\);

-- Location: FF_X88_Y36_N59
\add_instance|control_logic|CS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|control_logic|NS.S1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S1~q\);

-- Location: MLABCELL_X87_Y37_N27
\add_instance|control_logic|NS.S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S2~0_combout\ = ( \add_instance|control_logic|CS.S1~q\ & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S1~q\,
	combout => \add_instance|control_logic|NS.S2~0_combout\);

-- Location: FF_X87_Y37_N55
\add_instance|control_logic|CS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|control_logic|NS.S2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S2~q\);

-- Location: LABCELL_X88_Y37_N3
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

-- Location: FF_X88_Y37_N5
\add_instance|control_logic|CS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|control_logic|NS.S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S3~q\);

-- Location: LABCELL_X88_Y37_N0
\add_instance|control_logic|NS.S7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S7~0_combout\ = (!\input_vector[1]~input_o\ & \add_instance|control_logic|CS.S3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|control_logic|ALT_INV_CS.S3~q\,
	combout => \add_instance|control_logic|NS.S7~0_combout\);

-- Location: FF_X88_Y36_N17
\add_instance|control_logic|CS.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|control_logic|NS.S7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S7~q\);

-- Location: MLABCELL_X87_Y36_N24
\add_instance|control_logic|NS.S8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|control_logic|NS.S8~0_combout\ = (!\input_vector[1]~input_o\ & \add_instance|control_logic|CS.S7~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|control_logic|NS.S8~0_combout\);

-- Location: FF_X87_Y36_N47
\add_instance|control_logic|CS.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|control_logic|NS.S8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|control_logic|CS.S8~q\);

-- Location: LABCELL_X88_Y36_N24
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

-- Location: LABCELL_X88_Y36_N18
\add_instance|prim_datapath|t1_din[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[0]~0_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\,
	combout => \add_instance|prim_datapath|t1_din[0]~0_combout\);

-- Location: FF_X88_Y36_N41
\add_instance|prim_datapath|temp1|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[0]~0_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(0));

-- Location: LABCELL_X88_Y36_N6
\add_instance|prim_datapath|alu_ent|add_temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(0) = ( \add_instance|control_logic|CS.S7~q\ & ( !\add_instance|prim_datapath|temp1|dout\(0) ) ) # ( !\add_instance|control_logic|CS.S7~q\ & ( \add_instance|prim_datapath|temp1|dout\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(0));

-- Location: LABCELL_X88_Y36_N42
\add_instance|prim_datapath|alu_ent|dest[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(0) = (!\add_instance|control_logic|WideOr1~combout\ & (\add_instance|prim_datapath|alu_ent|dest\(0))) # (\add_instance|control_logic|WideOr1~combout\ & ((!\add_instance|prim_datapath|alu_ent|add_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(0),
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(0),
	combout => \add_instance|prim_datapath|alu_ent|dest\(0));

-- Location: FF_X87_Y36_N11
\add_instance|prim_datapath|temp3|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(0),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(0));

-- Location: MLABCELL_X87_Y36_N9
\add_instance|prim_datapath|reg_file|registers[0][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( (!\add_instance|control_logic|CS.S8~q\) # ((\add_instance|prim_datapath|temp3|dout\(0)) # (\input_vector[1]~input_o\)) ) ) 
-- # ( !\add_instance|prim_datapath|reg_file|registers[0][0]~combout\ & ( ((\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|temp3|dout\(0))) # (\input_vector[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|temp3|ALT_INV_dout\(0),
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][0]~combout\,
	combout => \add_instance|prim_datapath|reg_file|registers[0][0]~combout\);

-- Location: LABCELL_X88_Y36_N36
\add_instance|prim_datapath|t1_din[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[1]~1_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][1]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][1]~combout\,
	combout => \add_instance|prim_datapath|t1_din[1]~1_combout\);

-- Location: FF_X88_Y36_N38
\add_instance|prim_datapath|temp1|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[1]~1_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(1));

-- Location: LABCELL_X88_Y36_N0
\add_instance|prim_datapath|alu_ent|add_temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(1) = ( \add_instance|control_logic|CS.S7~q\ & ( !\add_instance|prim_datapath|temp1|dout\(1) ) ) # ( !\add_instance|control_logic|CS.S7~q\ & ( !\add_instance|prim_datapath|temp1|dout\(0) $ 
-- (\add_instance|prim_datapath|temp1|dout\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(1),
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(1));

-- Location: LABCELL_X88_Y36_N21
\add_instance|prim_datapath|alu_ent|dest[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(1) = ( \add_instance|prim_datapath|alu_ent|dest\(1) & ( (!\add_instance|control_logic|WideOr1~combout\) # (!\add_instance|prim_datapath|alu_ent|add_temp\(1)) ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(1) & 
-- ( (\add_instance|control_logic|WideOr1~combout\ & !\add_instance|prim_datapath|alu_ent|add_temp\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(1),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(1),
	combout => \add_instance|prim_datapath|alu_ent|dest\(1));

-- Location: FF_X87_Y36_N20
\add_instance|prim_datapath|temp3|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(1),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(1));

-- Location: MLABCELL_X87_Y36_N18
\add_instance|prim_datapath|reg_file|registers[0][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][1]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][1]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|temp3|dout\(1)))) ) ) 
-- # ( !\add_instance|prim_datapath|reg_file|registers[0][1]~combout\ & ( (\add_instance|control_logic|CS.S8~q\ & (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|temp3|dout\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|temp3|ALT_INV_dout\(1),
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][1]~combout\,
	combout => \add_instance|prim_datapath|reg_file|registers[0][1]~combout\);

-- Location: LABCELL_X88_Y37_N30
\add_instance|prim_datapath|t1_din[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[2]~2_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][2]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][2]~combout\,
	combout => \add_instance|prim_datapath|t1_din[2]~2_combout\);

-- Location: FF_X88_Y36_N53
\add_instance|prim_datapath|temp1|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[2]~2_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(2));

-- Location: LABCELL_X88_Y36_N33
\add_instance|prim_datapath|alu_ent|add_temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(2) = ( \add_instance|control_logic|CS.S7~q\ & ( \add_instance|prim_datapath|temp1|dout\(2) ) ) # ( !\add_instance|control_logic|CS.S7~q\ & ( !\add_instance|prim_datapath|temp1|dout\(2) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(1)) # (!\add_instance|prim_datapath|temp1|dout\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(1),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(2),
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(2));

-- Location: LABCELL_X88_Y37_N39
\add_instance|prim_datapath|alu_ent|dest[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(2) = ( \add_instance|control_logic|WideOr1~combout\ & ( \add_instance|prim_datapath|alu_ent|dest\(2) & ( \add_instance|prim_datapath|alu_ent|add_temp\(2) ) ) ) # ( !\add_instance|control_logic|WideOr1~combout\ & ( 
-- \add_instance|prim_datapath|alu_ent|dest\(2) ) ) # ( \add_instance|control_logic|WideOr1~combout\ & ( !\add_instance|prim_datapath|alu_ent|dest\(2) & ( \add_instance|prim_datapath|alu_ent|add_temp\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(2),
	datae => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(2),
	combout => \add_instance|prim_datapath|alu_ent|dest\(2));

-- Location: FF_X88_Y37_N41
\add_instance|prim_datapath|temp3|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|alu_ent|dest\(2),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(2));

-- Location: LABCELL_X88_Y37_N33
\add_instance|prim_datapath|reg_file|registers[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][2]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(2) & ( (!\input_vector[1]~input_o\ & ((\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|reg_file|registers[0][2]~combout\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(2) & ( (\add_instance|prim_datapath|reg_file|registers[0][2]~combout\ & (!\input_vector[1]~input_o\ & !\add_instance|control_logic|CS.S8~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][2]~combout\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(2),
	combout => \add_instance|prim_datapath|reg_file|registers[0][2]~combout\);

-- Location: MLABCELL_X87_Y36_N15
\add_instance|prim_datapath|t1_din[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[3]~3_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][3]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][3]~combout\,
	combout => \add_instance|prim_datapath|t1_din[3]~3_combout\);

-- Location: FF_X88_Y36_N35
\add_instance|prim_datapath|temp1|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[3]~3_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(3));

-- Location: LABCELL_X88_Y36_N51
\add_instance|prim_datapath|alu_ent|add_temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(3) = ( \add_instance|prim_datapath|temp1|dout\(3) & ( (!\add_instance|prim_datapath|temp1|dout\(1)) # (((!\add_instance|prim_datapath|temp1|dout\(0)) # (!\add_instance|prim_datapath|temp1|dout\(2))) # 
-- (\add_instance|control_logic|CS.S7~q\)) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(3) & ( (\add_instance|prim_datapath|temp1|dout\(1) & (!\add_instance|control_logic|CS.S7~q\ & (\add_instance|prim_datapath|temp1|dout\(0) & 
-- \add_instance|prim_datapath|temp1|dout\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(1),
	datab => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(2),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(3),
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(3));

-- Location: LABCELL_X88_Y36_N3
\add_instance|prim_datapath|alu_ent|dest[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(3) = (!\add_instance|control_logic|WideOr1~combout\ & (\add_instance|prim_datapath|alu_ent|dest\(3))) # (\add_instance|control_logic|WideOr1~combout\ & ((\add_instance|prim_datapath|alu_ent|add_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(3),
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(3),
	combout => \add_instance|prim_datapath|alu_ent|dest\(3));

-- Location: FF_X87_Y36_N17
\add_instance|prim_datapath|temp3|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(3),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(3));

-- Location: MLABCELL_X87_Y36_N3
\add_instance|prim_datapath|reg_file|registers[0][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][3]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(3) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][3]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(3) & ( (!\add_instance|control_logic|CS.S8~q\ & (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|reg_file|registers[0][3]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][3]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(3),
	combout => \add_instance|prim_datapath|reg_file|registers[0][3]~combout\);

-- Location: LABCELL_X88_Y35_N15
\add_instance|prim_datapath|t1_din[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[4]~4_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][4]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][4]~combout\,
	combout => \add_instance|prim_datapath|t1_din[4]~4_combout\);

-- Location: FF_X88_Y36_N2
\add_instance|prim_datapath|temp1|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[4]~4_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(4));

-- Location: LABCELL_X88_Y36_N12
\add_instance|prim_datapath|alu_ent|add_temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(4) = ( \add_instance|prim_datapath|temp1|dout\(1) & ( \add_instance|control_logic|CS.S7~q\ & ( \add_instance|prim_datapath|temp1|dout\(4) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(1) & ( 
-- \add_instance|control_logic|CS.S7~q\ & ( \add_instance|prim_datapath|temp1|dout\(4) ) ) ) # ( \add_instance|prim_datapath|temp1|dout\(1) & ( !\add_instance|control_logic|CS.S7~q\ & ( !\add_instance|prim_datapath|temp1|dout\(4) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(3)) # ((!\add_instance|prim_datapath|temp1|dout\(2)) # (!\add_instance|prim_datapath|temp1|dout\(0))))) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(1) & ( !\add_instance|control_logic|CS.S7~q\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110001111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(3),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(2),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(4),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(1),
	dataf => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(4));

-- Location: LABCELL_X88_Y36_N30
\add_instance|prim_datapath|alu_ent|dest[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(4) = ( \add_instance|prim_datapath|alu_ent|add_temp\(4) & ( (\add_instance|prim_datapath|alu_ent|dest\(4)) # (\add_instance|control_logic|WideOr1~combout\) ) ) # ( !\add_instance|prim_datapath|alu_ent|add_temp\(4) 
-- & ( (!\add_instance|control_logic|WideOr1~combout\ & \add_instance|prim_datapath|alu_ent|dest\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(4),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(4),
	combout => \add_instance|prim_datapath|alu_ent|dest\(4));

-- Location: FF_X87_Y36_N59
\add_instance|prim_datapath|temp3|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(4),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(4));

-- Location: MLABCELL_X87_Y36_N57
\add_instance|prim_datapath|reg_file|registers[0][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][4]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][4]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|temp3|dout\(4)))) ) ) 
-- # ( !\add_instance|prim_datapath|reg_file|registers[0][4]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|temp3|dout\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datad => \add_instance|prim_datapath|temp3|ALT_INV_dout\(4),
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][4]~combout\,
	combout => \add_instance|prim_datapath|reg_file|registers[0][4]~combout\);

-- Location: LABCELL_X88_Y37_N48
\add_instance|prim_datapath|t1_din[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[5]~5_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][5]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][5]~combout\,
	combout => \add_instance|prim_datapath|t1_din[5]~5_combout\);

-- Location: FF_X87_Y36_N38
\add_instance|prim_datapath|temp1|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[5]~5_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(5));

-- Location: LABCELL_X88_Y36_N54
\add_instance|prim_datapath|alu_ent|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|carry~0_combout\ = ( \add_instance|prim_datapath|temp1|dout\(1) & ( \add_instance|prim_datapath|temp1|dout\(2) & ( (\add_instance|prim_datapath|temp1|dout\(4) & (!\add_instance|control_logic|CS.S7~q\ & 
-- (\add_instance|prim_datapath|temp1|dout\(3) & \add_instance|prim_datapath|temp1|dout\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(4),
	datab => \add_instance|control_logic|ALT_INV_CS.S7~q\,
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(3),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(0),
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(1),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(2),
	combout => \add_instance|prim_datapath|alu_ent|carry~0_combout\);

-- Location: LABCELL_X88_Y36_N48
\add_instance|prim_datapath|alu_ent|add_temp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(5) = ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(5) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(5));

-- Location: LABCELL_X88_Y36_N9
\add_instance|prim_datapath|alu_ent|dest[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(5) = ( \add_instance|prim_datapath|alu_ent|dest\(5) & ( (!\add_instance|control_logic|WideOr1~combout\) # (\add_instance|prim_datapath|alu_ent|add_temp\(5)) ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(5) & 
-- ( (\add_instance|prim_datapath|alu_ent|add_temp\(5) & \add_instance|control_logic|WideOr1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(5),
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(5),
	combout => \add_instance|prim_datapath|alu_ent|dest\(5));

-- Location: FF_X87_Y36_N26
\add_instance|prim_datapath|temp3|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(5),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(5));

-- Location: MLABCELL_X87_Y36_N12
\add_instance|prim_datapath|reg_file|registers[0][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][5]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(5) & ( (!\input_vector[1]~input_o\ & ((\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|reg_file|registers[0][5]~combout\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(5) & ( (\add_instance|prim_datapath|reg_file|registers[0][5]~combout\ & (!\input_vector[1]~input_o\ & !\add_instance|control_logic|CS.S8~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][5]~combout\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(5),
	combout => \add_instance|prim_datapath|reg_file|registers[0][5]~combout\);

-- Location: MLABCELL_X87_Y37_N9
\add_instance|prim_datapath|t1_din[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[6]~6_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][6]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][6]~combout\,
	combout => \add_instance|prim_datapath|t1_din[6]~6_combout\);

-- Location: FF_X87_Y37_N11
\add_instance|prim_datapath|temp1|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[6]~6_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(6));

-- Location: LABCELL_X88_Y35_N39
\add_instance|prim_datapath|alu_ent|add_temp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(6) = ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(6) & ( !\add_instance|prim_datapath|temp1|dout\(5) ) ) ) # ( 
-- !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(6) ) ) # ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(6) & ( 
-- \add_instance|prim_datapath|temp1|dout\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(6));

-- Location: LABCELL_X88_Y35_N24
\add_instance|prim_datapath|alu_ent|dest[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(6) = ( \add_instance|control_logic|WideOr1~combout\ & ( \add_instance|prim_datapath|alu_ent|add_temp\(6) ) ) # ( !\add_instance|control_logic|WideOr1~combout\ & ( \add_instance|prim_datapath|alu_ent|add_temp\(6) & 
-- ( \add_instance|prim_datapath|alu_ent|dest\(6) ) ) ) # ( !\add_instance|control_logic|WideOr1~combout\ & ( !\add_instance|prim_datapath|alu_ent|add_temp\(6) & ( \add_instance|prim_datapath|alu_ent|dest\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(6),
	datae => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(6),
	combout => \add_instance|prim_datapath|alu_ent|dest\(6));

-- Location: FF_X87_Y36_N35
\add_instance|prim_datapath|temp3|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(6),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(6));

-- Location: MLABCELL_X87_Y36_N30
\add_instance|prim_datapath|reg_file|registers[0][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][6]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(6) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][6]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(6) & ( (!\input_vector[1]~input_o\ & (!\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|reg_file|registers[0][6]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][6]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(6),
	combout => \add_instance|prim_datapath|reg_file|registers[0][6]~combout\);

-- Location: MLABCELL_X87_Y37_N15
\add_instance|prim_datapath|t1_din[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[7]~7_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][7]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][7]~combout\,
	combout => \add_instance|prim_datapath|t1_din[7]~7_combout\);

-- Location: FF_X87_Y37_N17
\add_instance|prim_datapath|temp1|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[7]~7_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(7));

-- Location: LABCELL_X88_Y35_N42
\add_instance|prim_datapath|alu_ent|add_temp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(7) = ( \add_instance|prim_datapath|temp1|dout\(7) & ( \add_instance|prim_datapath|temp1|dout\(6) & ( (!\add_instance|prim_datapath|temp1|dout\(5)) # (!\add_instance|prim_datapath|alu_ent|carry~0_combout\) ) ) 
-- ) # ( !\add_instance|prim_datapath|temp1|dout\(7) & ( \add_instance|prim_datapath|temp1|dout\(6) & ( (\add_instance|prim_datapath|temp1|dout\(5) & \add_instance|prim_datapath|alu_ent|carry~0_combout\) ) ) ) # ( \add_instance|prim_datapath|temp1|dout\(7) & 
-- ( !\add_instance|prim_datapath|temp1|dout\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(7));

-- Location: LABCELL_X88_Y35_N3
\add_instance|prim_datapath|alu_ent|dest[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(7) = ( \add_instance|prim_datapath|alu_ent|dest\(7) & ( \add_instance|prim_datapath|alu_ent|add_temp\(7) ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(7) & ( \add_instance|prim_datapath|alu_ent|add_temp\(7) & 
-- ( \add_instance|control_logic|WideOr1~combout\ ) ) ) # ( \add_instance|prim_datapath|alu_ent|dest\(7) & ( !\add_instance|prim_datapath|alu_ent|add_temp\(7) & ( !\add_instance|control_logic|WideOr1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(7),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(7),
	combout => \add_instance|prim_datapath|alu_ent|dest\(7));

-- Location: FF_X88_Y36_N20
\add_instance|prim_datapath|temp3|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(7),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(7));

-- Location: LABCELL_X88_Y36_N39
\add_instance|prim_datapath|reg_file|registers[0][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][7]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(7) & ( (!\input_vector[1]~input_o\ & ((\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|reg_file|registers[0][7]~combout\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(7) & ( (\add_instance|prim_datapath|reg_file|registers[0][7]~combout\ & (!\input_vector[1]~input_o\ & !\add_instance|control_logic|CS.S8~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][7]~combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(7),
	combout => \add_instance|prim_datapath|reg_file|registers[0][7]~combout\);

-- Location: MLABCELL_X87_Y37_N39
\add_instance|prim_datapath|t1_din[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[8]~8_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][8]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][8]~combout\,
	combout => \add_instance|prim_datapath|t1_din[8]~8_combout\);

-- Location: FF_X87_Y37_N41
\add_instance|prim_datapath|temp1|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[8]~8_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(8));

-- Location: MLABCELL_X87_Y37_N12
\add_instance|prim_datapath|alu_ent|add_temp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(8) = ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(8) $ (((!\add_instance|prim_datapath|temp1|dout\(7)) # ((!\add_instance|prim_datapath|temp1|dout\(6)) # 
-- (!\add_instance|prim_datapath|temp1|dout\(5))))) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(8));

-- Location: MLABCELL_X87_Y37_N3
\add_instance|prim_datapath|alu_ent|dest[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(8) = ( \add_instance|control_logic|WideOr1~combout\ & ( \add_instance|prim_datapath|alu_ent|add_temp\(8) ) ) # ( !\add_instance|control_logic|WideOr1~combout\ & ( \add_instance|prim_datapath|alu_ent|dest\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(8),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(8),
	dataf => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	combout => \add_instance|prim_datapath|alu_ent|dest\(8));

-- Location: FF_X87_Y36_N53
\add_instance|prim_datapath|temp3|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(8),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(8));

-- Location: MLABCELL_X87_Y36_N21
\add_instance|prim_datapath|reg_file|registers[0][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][8]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(8) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][8]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(8) & ( (!\add_instance|control_logic|CS.S8~q\ & (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|reg_file|registers[0][8]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][8]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(8),
	combout => \add_instance|prim_datapath|reg_file|registers[0][8]~combout\);

-- Location: LABCELL_X88_Y37_N27
\add_instance|prim_datapath|t1_din[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[9]~9_combout\ = ( \add_instance|control_logic|CS.S0~q\ & ( \add_instance|prim_datapath|reg_file|registers[0][9]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][9]~combout\,
	dataf => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	combout => \add_instance|prim_datapath|t1_din[9]~9_combout\);

-- Location: FF_X87_Y37_N32
\add_instance|prim_datapath|temp1|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[9]~9_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(9));

-- Location: LABCELL_X88_Y35_N6
\add_instance|prim_datapath|alu_ent|add_temp[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(9) = ( \add_instance|prim_datapath|temp1|dout\(8) & ( \add_instance|prim_datapath|temp1|dout\(6) & ( !\add_instance|prim_datapath|temp1|dout\(9) $ (((!\add_instance|prim_datapath|temp1|dout\(5)) # 
-- ((!\add_instance|prim_datapath|temp1|dout\(7)) # (!\add_instance|prim_datapath|alu_ent|carry~0_combout\)))) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(8) & ( \add_instance|prim_datapath|temp1|dout\(6) & ( \add_instance|prim_datapath|temp1|dout\(9) 
-- ) ) ) # ( \add_instance|prim_datapath|temp1|dout\(8) & ( !\add_instance|prim_datapath|temp1|dout\(6) & ( \add_instance|prim_datapath|temp1|dout\(9) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(8) & ( !\add_instance|prim_datapath|temp1|dout\(6) & ( 
-- \add_instance|prim_datapath|temp1|dout\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(9));

-- Location: LABCELL_X88_Y35_N57
\add_instance|prim_datapath|alu_ent|dest[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(9) = ( \add_instance|prim_datapath|alu_ent|dest\(9) & ( \add_instance|prim_datapath|alu_ent|add_temp\(9) ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(9) & ( \add_instance|prim_datapath|alu_ent|add_temp\(9) & 
-- ( \add_instance|control_logic|WideOr1~combout\ ) ) ) # ( \add_instance|prim_datapath|alu_ent|dest\(9) & ( !\add_instance|prim_datapath|alu_ent|add_temp\(9) & ( !\add_instance|control_logic|WideOr1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(9),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(9),
	combout => \add_instance|prim_datapath|alu_ent|dest\(9));

-- Location: FF_X88_Y37_N53
\add_instance|prim_datapath|temp3|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(9),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(9));

-- Location: LABCELL_X88_Y37_N57
\add_instance|prim_datapath|reg_file|registers[0][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][9]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(9) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][9]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) ) 
-- # ( !\add_instance|prim_datapath|temp3|dout\(9) & ( (!\add_instance|control_logic|CS.S8~q\ & (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|reg_file|registers[0][9]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][9]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(9),
	combout => \add_instance|prim_datapath|reg_file|registers[0][9]~combout\);

-- Location: LABCELL_X88_Y35_N48
\add_instance|prim_datapath|t1_din[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[10]~10_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][10]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][10]~combout\,
	combout => \add_instance|prim_datapath|t1_din[10]~10_combout\);

-- Location: FF_X88_Y35_N50
\add_instance|prim_datapath|temp1|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[10]~10_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(10));

-- Location: MLABCELL_X87_Y37_N48
\add_instance|prim_datapath|alu_ent|add_temp[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ = ( \add_instance|prim_datapath|temp1|dout\(9) & ( \add_instance|prim_datapath|temp1|dout\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\);

-- Location: MLABCELL_X87_Y36_N48
\add_instance|prim_datapath|alu_ent|add_temp[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(10) = ( \add_instance|prim_datapath|temp1|dout\(5) & ( \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(10) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(6)) # ((!\add_instance|prim_datapath|temp1|dout\(7)) # (!\add_instance|prim_datapath|alu_ent|carry~0_combout\)))) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(5) & ( 
-- \add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ & ( \add_instance|prim_datapath|temp1|dout\(10) ) ) ) # ( \add_instance|prim_datapath|temp1|dout\(5) & ( !\add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(10) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(5) & ( !\add_instance|prim_datapath|alu_ent|add_temp[10]~1_combout\ & ( \add_instance|prim_datapath|temp1|dout\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[10]~1_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(10));

-- Location: MLABCELL_X87_Y36_N6
\add_instance|prim_datapath|alu_ent|dest[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(10) = ( \add_instance|prim_datapath|alu_ent|add_temp\(10) & ( (\add_instance|prim_datapath|alu_ent|dest\(10)) # (\add_instance|control_logic|WideOr1~combout\) ) ) # ( 
-- !\add_instance|prim_datapath|alu_ent|add_temp\(10) & ( (!\add_instance|control_logic|WideOr1~combout\ & \add_instance|prim_datapath|alu_ent|dest\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(10),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(10),
	combout => \add_instance|prim_datapath|alu_ent|dest\(10));

-- Location: FF_X87_Y36_N8
\add_instance|prim_datapath|temp3|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|alu_ent|dest\(10),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(10));

-- Location: MLABCELL_X87_Y36_N33
\add_instance|prim_datapath|reg_file|registers[0][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][10]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(10) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][10]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) 
-- ) # ( !\add_instance|prim_datapath|temp3|dout\(10) & ( (!\input_vector[1]~input_o\ & (!\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|reg_file|registers[0][10]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][10]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(10),
	combout => \add_instance|prim_datapath|reg_file|registers[0][10]~combout\);

-- Location: MLABCELL_X87_Y37_N6
\add_instance|prim_datapath|t1_din[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[11]~11_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][11]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][11]~combout\,
	combout => \add_instance|prim_datapath|t1_din[11]~11_combout\);

-- Location: FF_X87_Y37_N8
\add_instance|prim_datapath|temp1|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[11]~11_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(11));

-- Location: MLABCELL_X87_Y35_N33
\add_instance|prim_datapath|alu_ent|add_temp[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ = ( \add_instance|prim_datapath|temp1|dout\(8) & ( \add_instance|prim_datapath|temp1|dout\(9) & ( \add_instance|prim_datapath|temp1|dout\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\);

-- Location: MLABCELL_X87_Y35_N24
\add_instance|prim_datapath|alu_ent|add_temp[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(11) = ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(11) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(6)) # ((!\add_instance|prim_datapath|temp1|dout\(5)) # (!\add_instance|prim_datapath|temp1|dout\(10))))) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( 
-- \add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ & ( \add_instance|prim_datapath|temp1|dout\(11) ) ) ) # ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(11) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|add_temp[11]~2_combout\ & ( \add_instance|prim_datapath|temp1|dout\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(11),
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[11]~2_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(11));

-- Location: MLABCELL_X87_Y35_N57
\add_instance|prim_datapath|alu_ent|dest[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(11) = ( \add_instance|prim_datapath|alu_ent|dest\(11) & ( \add_instance|prim_datapath|alu_ent|add_temp\(11) ) ) # ( !\add_instance|prim_datapath|alu_ent|dest\(11) & ( 
-- \add_instance|prim_datapath|alu_ent|add_temp\(11) & ( \add_instance|control_logic|WideOr1~combout\ ) ) ) # ( \add_instance|prim_datapath|alu_ent|dest\(11) & ( !\add_instance|prim_datapath|alu_ent|add_temp\(11) & ( 
-- !\add_instance|control_logic|WideOr1~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(11),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(11),
	combout => \add_instance|prim_datapath|alu_ent|dest\(11));

-- Location: FF_X87_Y36_N29
\add_instance|prim_datapath|temp3|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(11),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(11));

-- Location: MLABCELL_X87_Y36_N27
\add_instance|prim_datapath|reg_file|registers[0][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][11]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][11]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|temp3|dout\(11)))) 
-- ) ) # ( !\add_instance|prim_datapath|reg_file|registers[0][11]~combout\ & ( (\add_instance|control_logic|CS.S8~q\ & (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|temp3|dout\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|temp3|ALT_INV_dout\(11),
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][11]~combout\,
	combout => \add_instance|prim_datapath|reg_file|registers[0][11]~combout\);

-- Location: MLABCELL_X87_Y37_N51
\add_instance|prim_datapath|t1_din[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[12]~12_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][12]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][12]~combout\,
	combout => \add_instance|prim_datapath|t1_din[12]~12_combout\);

-- Location: FF_X87_Y37_N53
\add_instance|prim_datapath|temp1|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[12]~12_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(12));

-- Location: MLABCELL_X87_Y37_N54
\add_instance|prim_datapath|alu_ent|add_temp[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[12]~3_combout\ = ( \add_instance|prim_datapath|temp1|dout\(7) & ( (\add_instance|prim_datapath|temp1|dout\(9) & (\add_instance|prim_datapath|temp1|dout\(6) & \add_instance|prim_datapath|temp1|dout\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[12]~3_combout\);

-- Location: MLABCELL_X87_Y37_N33
\add_instance|prim_datapath|alu_ent|add_temp[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(12) = ( \add_instance|prim_datapath|temp1|dout\(10) & ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(12) $ (((!\add_instance|prim_datapath|temp1|dout\(5)) # 
-- ((!\add_instance|prim_datapath|temp1|dout\(11)) # (!\add_instance|prim_datapath|alu_ent|add_temp[12]~3_combout\)))) ) ) ) # ( !\add_instance|prim_datapath|temp1|dout\(10) & ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(12) ) ) ) # ( \add_instance|prim_datapath|temp1|dout\(10) & ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(12) ) ) ) # ( 
-- !\add_instance|prim_datapath|temp1|dout\(10) & ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(12),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(11),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[12]~3_combout\,
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(12));

-- Location: MLABCELL_X87_Y37_N57
\add_instance|prim_datapath|alu_ent|dest[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(12) = ( \add_instance|prim_datapath|alu_ent|add_temp\(12) & ( (\add_instance|prim_datapath|alu_ent|dest\(12)) # (\add_instance|control_logic|WideOr1~combout\) ) ) # ( 
-- !\add_instance|prim_datapath|alu_ent|add_temp\(12) & ( (!\add_instance|control_logic|WideOr1~combout\ & \add_instance|prim_datapath|alu_ent|dest\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(12),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(12),
	combout => \add_instance|prim_datapath|alu_ent|dest\(12));

-- Location: FF_X88_Y37_N17
\add_instance|prim_datapath|temp3|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(12),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(12));

-- Location: LABCELL_X88_Y37_N6
\add_instance|prim_datapath|reg_file|registers[0][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][12]~combout\ = ( \add_instance|control_logic|CS.S8~q\ & ( \add_instance|prim_datapath|temp3|dout\(12) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|control_logic|CS.S8~q\ & ( 
-- \add_instance|prim_datapath|temp3|dout\(12) & ( (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|reg_file|registers[0][12]~combout\) ) ) ) # ( !\add_instance|control_logic|CS.S8~q\ & ( !\add_instance|prim_datapath|temp3|dout\(12) & ( 
-- (!\input_vector[1]~input_o\ & \add_instance|prim_datapath|reg_file|registers[0][12]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][12]~combout\,
	datae => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(12),
	combout => \add_instance|prim_datapath|reg_file|registers[0][12]~combout\);

-- Location: LABCELL_X88_Y37_N21
\add_instance|prim_datapath|t1_din[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[13]~13_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][13]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][13]~combout\,
	combout => \add_instance|prim_datapath|t1_din[13]~13_combout\);

-- Location: FF_X88_Y37_N23
\add_instance|prim_datapath|temp1|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[13]~13_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(13));

-- Location: MLABCELL_X87_Y37_N45
\add_instance|prim_datapath|alu_ent|add_temp[13]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ = ( \add_instance|prim_datapath|temp1|dout\(9) & ( (\add_instance|prim_datapath|temp1|dout\(12) & (\add_instance|prim_datapath|temp1|dout\(11) & (\add_instance|prim_datapath|temp1|dout\(7) & 
-- \add_instance|prim_datapath|temp1|dout\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(12),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(11),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\);

-- Location: MLABCELL_X87_Y37_N21
\add_instance|prim_datapath|alu_ent|add_temp[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(13) = ( \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ & ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(13) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(6)) # ((!\add_instance|prim_datapath|temp1|dout\(10)) # (!\add_instance|prim_datapath|temp1|dout\(5))))) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ & ( 
-- \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(13) ) ) ) # ( \add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ & ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(13) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|add_temp[13]~4_combout\ & ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|temp1|dout\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(13),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[13]~4_combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(13));

-- Location: MLABCELL_X87_Y37_N24
\add_instance|prim_datapath|alu_ent|dest[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(13) = (!\add_instance|control_logic|WideOr1~combout\ & (\add_instance|prim_datapath|alu_ent|dest\(13))) # (\add_instance|control_logic|WideOr1~combout\ & ((\add_instance|prim_datapath|alu_ent|add_temp\(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datac => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(13),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(13),
	combout => \add_instance|prim_datapath|alu_ent|dest\(13));

-- Location: FF_X88_Y36_N47
\add_instance|prim_datapath|temp3|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(13),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(13));

-- Location: LABCELL_X88_Y36_N27
\add_instance|prim_datapath|reg_file|registers[0][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][13]~combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][13]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|control_logic|CS.S8~q\) # (\add_instance|prim_datapath|temp3|dout\(13)))) 
-- ) ) # ( !\add_instance|prim_datapath|reg_file|registers[0][13]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|temp3|dout\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datad => \add_instance|prim_datapath|temp3|ALT_INV_dout\(13),
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][13]~combout\,
	combout => \add_instance|prim_datapath|reg_file|registers[0][13]~combout\);

-- Location: LABCELL_X88_Y37_N54
\add_instance|prim_datapath|t1_din[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[14]~14_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][14]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][14]~combout\,
	combout => \add_instance|prim_datapath|t1_din[14]~14_combout\);

-- Location: FF_X88_Y37_N56
\add_instance|prim_datapath|temp1|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|t1_din[14]~14_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(14));

-- Location: LABCELL_X88_Y37_N12
\add_instance|prim_datapath|alu_ent|add_temp[14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ = ( \add_instance|prim_datapath|temp1|dout\(11) & ( \add_instance|prim_datapath|temp1|dout\(12) & ( (\add_instance|prim_datapath|temp1|dout\(13) & (\add_instance|prim_datapath|temp1|dout\(8) & 
-- (\add_instance|prim_datapath|temp1|dout\(10) & \add_instance|prim_datapath|temp1|dout\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(13),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(11),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(12),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\);

-- Location: LABCELL_X88_Y37_N42
\add_instance|prim_datapath|alu_ent|add_temp[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(14) = ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(14) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(7)) # ((!\add_instance|prim_datapath|temp1|dout\(6)) # (!\add_instance|prim_datapath|temp1|dout\(5))))) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( 
-- \add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ & ( \add_instance|prim_datapath|temp1|dout\(14) ) ) ) # ( \add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(14) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|carry~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|add_temp[14]~5_combout\ & ( \add_instance|prim_datapath|temp1|dout\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(14),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[14]~5_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(14));

-- Location: LABCELL_X88_Y37_N18
\add_instance|prim_datapath|alu_ent|dest[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(14) = ( \add_instance|prim_datapath|alu_ent|add_temp\(14) & ( (\add_instance|control_logic|WideOr1~combout\) # (\add_instance|prim_datapath|alu_ent|dest\(14)) ) ) # ( 
-- !\add_instance|prim_datapath|alu_ent|add_temp\(14) & ( (\add_instance|prim_datapath|alu_ent|dest\(14) & !\add_instance|control_logic|WideOr1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(14),
	datad => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(14),
	combout => \add_instance|prim_datapath|alu_ent|dest\(14));

-- Location: FF_X88_Y36_N8
\add_instance|prim_datapath|temp3|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|alu_ent|dest\(14),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(14));

-- Location: LABCELL_X88_Y36_N45
\add_instance|prim_datapath|reg_file|registers[0][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][14]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(14) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][14]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) 
-- ) # ( !\add_instance|prim_datapath|temp3|dout\(14) & ( (!\input_vector[1]~input_o\ & (!\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|reg_file|registers[0][14]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][14]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(14),
	combout => \add_instance|prim_datapath|reg_file|registers[0][14]~combout\);

-- Location: MLABCELL_X87_Y37_N0
\add_instance|prim_datapath|t1_din[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|t1_din[15]~15_combout\ = ( \add_instance|prim_datapath|reg_file|registers[0][15]~combout\ & ( \add_instance|control_logic|CS.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_CS.S0~q\,
	dataf => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][15]~combout\,
	combout => \add_instance|prim_datapath|t1_din[15]~15_combout\);

-- Location: FF_X87_Y37_N28
\add_instance|prim_datapath|temp1|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|prim_datapath|t1_din[15]~15_combout\,
	clrn => \ALT_INV_input_vector[1]~input_o\,
	sload => VCC,
	ena => \add_instance|control_logic|CS.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp1|dout\(15));

-- Location: MLABCELL_X87_Y37_N42
\add_instance|prim_datapath|alu_ent|add_temp[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ = ( \add_instance|prim_datapath|temp1|dout\(11) & ( \add_instance|prim_datapath|temp1|dout\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(12),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(11),
	combout => \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\);

-- Location: MLABCELL_X87_Y36_N42
\add_instance|prim_datapath|alu_ent|carry~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|carry~1_combout\ = ( \add_instance|prim_datapath|temp1|dout\(6) & ( \add_instance|prim_datapath|temp1|dout\(7) & ( (\add_instance|prim_datapath|temp1|dout\(5) & (\add_instance|prim_datapath|temp1|dout\(9) & 
-- (\add_instance|prim_datapath|temp1|dout\(8) & \add_instance|prim_datapath|alu_ent|carry~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(5),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(9),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(8),
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~0_combout\,
	datae => \add_instance|prim_datapath|temp1|ALT_INV_dout\(6),
	dataf => \add_instance|prim_datapath|temp1|ALT_INV_dout\(7),
	combout => \add_instance|prim_datapath|alu_ent|carry~1_combout\);

-- Location: MLABCELL_X87_Y36_N39
\add_instance|prim_datapath|alu_ent|add_temp[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|add_temp\(15) = ( \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ & ( \add_instance|prim_datapath|alu_ent|carry~1_combout\ & ( !\add_instance|prim_datapath|temp1|dout\(15) $ 
-- (((!\add_instance|prim_datapath|temp1|dout\(10)) # ((!\add_instance|prim_datapath|temp1|dout\(13)) # (!\add_instance|prim_datapath|temp1|dout\(14))))) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ & ( 
-- \add_instance|prim_datapath|alu_ent|carry~1_combout\ & ( \add_instance|prim_datapath|temp1|dout\(15) ) ) ) # ( \add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|carry~1_combout\ & ( 
-- \add_instance|prim_datapath|temp1|dout\(15) ) ) ) # ( !\add_instance|prim_datapath|alu_ent|add_temp[15]~0_combout\ & ( !\add_instance|prim_datapath|alu_ent|carry~1_combout\ & ( \add_instance|prim_datapath|temp1|dout\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|prim_datapath|temp1|ALT_INV_dout\(10),
	datab => \add_instance|prim_datapath|temp1|ALT_INV_dout\(13),
	datac => \add_instance|prim_datapath|temp1|ALT_INV_dout\(15),
	datad => \add_instance|prim_datapath|temp1|ALT_INV_dout\(14),
	datae => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp[15]~0_combout\,
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_carry~1_combout\,
	combout => \add_instance|prim_datapath|alu_ent|add_temp\(15));

-- Location: MLABCELL_X87_Y36_N0
\add_instance|prim_datapath|alu_ent|dest[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|alu_ent|dest\(15) = ( \add_instance|prim_datapath|alu_ent|add_temp\(15) & ( (\add_instance|prim_datapath|alu_ent|dest\(15)) # (\add_instance|control_logic|WideOr1~combout\) ) ) # ( 
-- !\add_instance|prim_datapath|alu_ent|add_temp\(15) & ( (!\add_instance|control_logic|WideOr1~combout\ & \add_instance|prim_datapath|alu_ent|dest\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_logic|ALT_INV_WideOr1~combout\,
	datad => \add_instance|prim_datapath|alu_ent|ALT_INV_dest\(15),
	dataf => \add_instance|prim_datapath|alu_ent|ALT_INV_add_temp\(15),
	combout => \add_instance|prim_datapath|alu_ent|dest\(15));

-- Location: FF_X87_Y36_N2
\add_instance|prim_datapath|temp3|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|prim_datapath|alu_ent|dest\(15),
	clrn => \ALT_INV_input_vector[1]~input_o\,
	ena => \add_instance|control_logic|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|prim_datapath|temp3|dout\(15));

-- Location: MLABCELL_X87_Y36_N54
\add_instance|prim_datapath|reg_file|registers[0][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|prim_datapath|reg_file|registers[0][15]~combout\ = ( \add_instance|prim_datapath|temp3|dout\(15) & ( (!\input_vector[1]~input_o\ & ((\add_instance|prim_datapath|reg_file|registers[0][15]~combout\) # (\add_instance|control_logic|CS.S8~q\))) ) 
-- ) # ( !\add_instance|prim_datapath|temp3|dout\(15) & ( (!\input_vector[1]~input_o\ & (!\add_instance|control_logic|CS.S8~q\ & \add_instance|prim_datapath|reg_file|registers[0][15]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|control_logic|ALT_INV_CS.S8~q\,
	datad => \add_instance|prim_datapath|reg_file|ALT_INV_registers[0][15]~combout\,
	dataf => \add_instance|prim_datapath|temp3|ALT_INV_dout\(15),
	combout => \add_instance|prim_datapath|reg_file|registers[0][15]~combout\);

-- Location: LABCELL_X63_Y79_N3
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


