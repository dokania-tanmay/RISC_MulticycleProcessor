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

-- DATE "05/11/2022 01:55:19"

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
-- output_vector[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[48]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[49]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[50]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[51]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[52]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[53]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[54]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[55]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[56]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[57]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[58]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[59]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[60]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[61]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[62]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[63]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[64]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[65]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[66]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[67]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[68]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[69]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[70]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[71]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[72]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[73]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[74]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[75]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[76]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[77]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[78]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[79]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~5_sumout\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~6\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~9_sumout\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~10\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~13_sumout\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~14\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~17_sumout\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~18\ : std_logic;
SIGNAL \add_instance|main_alu_1|Add0~1_sumout\ : std_logic;
SIGNAL \add_instance|code_mem|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|ID_RR_pipe|inst_reg|Dout~0_combout\ : std_logic;
SIGNAL \add_instance|IF_ID_pipe|valid_reg|Dout~0_combout\ : std_logic;
SIGNAL \add_instance|IF_ID_pipe|valid_reg|Dout~q\ : std_logic;
SIGNAL \add_instance|ID_RR_pipe|valid_reg|Dout~q\ : std_logic;
SIGNAL \add_instance|RR_EXE_pipe|valid_reg|Dout~q\ : std_logic;
SIGNAL \add_instance|EXE_MEM_pipe|wb_cont|Dout~q\ : std_logic;
SIGNAL \add_instance|p_mem_wb|wb_cont|Dout~q\ : std_logic;
SIGNAL \add_instance|RF|Decoder0~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~1_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~2\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~5_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][1]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~6\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~9_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][2]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~10\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~13_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][3]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~14\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~17_sumout\ : std_logic;
SIGNAL \add_instance|p_mem_wb|D3_reg|Dout[4]~feeder_combout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][4]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~18\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~21_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][5]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~22\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~25_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][6]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~26\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~29_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][7]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~30\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~33_sumout\ : std_logic;
SIGNAL \add_instance|p_mem_wb|D3_reg|Dout[8]~feeder_combout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][8]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~34\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~37_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][9]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~38\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~41_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][10]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~42\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~45_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][11]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~46\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~49_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][12]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~50\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~53_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][13]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~54\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~57_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][14]~combout\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~58\ : std_logic;
SIGNAL \add_instance|main_alu|Add0~61_sumout\ : std_logic;
SIGNAL \add_instance|RF|registers[0][15]~combout\ : std_logic;
SIGNAL \add_instance|RF|Decoder0~1_combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][0]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][1]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][2]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][3]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][4]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][5]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][6]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][7]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][8]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][9]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][10]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][11]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][12]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][13]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][14]~combout\ : std_logic;
SIGNAL \add_instance|RF|registers[3][15]~combout\ : std_logic;
SIGNAL \add_instance|p_mem_wb|D3_reg|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|PC|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|p_mem_wb|AD3_reg|Dout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|EXE_MEM_pipe|D3_reg|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|EXE_MEM_pipe|AD3_reg|Dout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|RR_EXE_pipe|AD3_reg|Dout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|IF_ID_pipe|inst_reg|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|ID_RR_pipe|AD3_reg|Dout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][15]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][14]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][13]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][12]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][11]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][10]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][9]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][8]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][7]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][6]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][5]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][4]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][3]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][2]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][1]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[3][0]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][15]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][14]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][13]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][12]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][11]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][10]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][9]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][8]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][7]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][6]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][5]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][4]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][3]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][2]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][1]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_registers[0][0]~combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \add_instance|RF|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \add_instance|PC|ALT_INV_Dout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \add_instance|IF_ID_pipe|inst_reg|ALT_INV_Dout\ : std_logic_vector(12 DOWNTO 12);
SIGNAL \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|EXE_MEM_pipe|D3_reg|ALT_INV_Dout\ : std_logic_vector(8 DOWNTO 4);
SIGNAL \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|p_mem_wb|wb_cont|ALT_INV_Dout~q\ : std_logic;
SIGNAL \add_instance|p_mem_wb|AD3_reg|ALT_INV_Dout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector[1]~input_o\ <= NOT \input_vector[1]~input_o\;
\add_instance|RF|ALT_INV_registers[3][15]~combout\ <= NOT \add_instance|RF|registers[3][15]~combout\;
\add_instance|RF|ALT_INV_registers[3][14]~combout\ <= NOT \add_instance|RF|registers[3][14]~combout\;
\add_instance|RF|ALT_INV_registers[3][13]~combout\ <= NOT \add_instance|RF|registers[3][13]~combout\;
\add_instance|RF|ALT_INV_registers[3][12]~combout\ <= NOT \add_instance|RF|registers[3][12]~combout\;
\add_instance|RF|ALT_INV_registers[3][11]~combout\ <= NOT \add_instance|RF|registers[3][11]~combout\;
\add_instance|RF|ALT_INV_registers[3][10]~combout\ <= NOT \add_instance|RF|registers[3][10]~combout\;
\add_instance|RF|ALT_INV_registers[3][9]~combout\ <= NOT \add_instance|RF|registers[3][9]~combout\;
\add_instance|RF|ALT_INV_registers[3][8]~combout\ <= NOT \add_instance|RF|registers[3][8]~combout\;
\add_instance|RF|ALT_INV_registers[3][7]~combout\ <= NOT \add_instance|RF|registers[3][7]~combout\;
\add_instance|RF|ALT_INV_registers[3][6]~combout\ <= NOT \add_instance|RF|registers[3][6]~combout\;
\add_instance|RF|ALT_INV_registers[3][5]~combout\ <= NOT \add_instance|RF|registers[3][5]~combout\;
\add_instance|RF|ALT_INV_registers[3][4]~combout\ <= NOT \add_instance|RF|registers[3][4]~combout\;
\add_instance|RF|ALT_INV_registers[3][3]~combout\ <= NOT \add_instance|RF|registers[3][3]~combout\;
\add_instance|RF|ALT_INV_registers[3][2]~combout\ <= NOT \add_instance|RF|registers[3][2]~combout\;
\add_instance|RF|ALT_INV_registers[3][1]~combout\ <= NOT \add_instance|RF|registers[3][1]~combout\;
\add_instance|RF|ALT_INV_registers[3][0]~combout\ <= NOT \add_instance|RF|registers[3][0]~combout\;
\add_instance|RF|ALT_INV_registers[0][15]~combout\ <= NOT \add_instance|RF|registers[0][15]~combout\;
\add_instance|RF|ALT_INV_registers[0][14]~combout\ <= NOT \add_instance|RF|registers[0][14]~combout\;
\add_instance|RF|ALT_INV_registers[0][13]~combout\ <= NOT \add_instance|RF|registers[0][13]~combout\;
\add_instance|RF|ALT_INV_registers[0][12]~combout\ <= NOT \add_instance|RF|registers[0][12]~combout\;
\add_instance|RF|ALT_INV_registers[0][11]~combout\ <= NOT \add_instance|RF|registers[0][11]~combout\;
\add_instance|RF|ALT_INV_registers[0][10]~combout\ <= NOT \add_instance|RF|registers[0][10]~combout\;
\add_instance|RF|ALT_INV_registers[0][9]~combout\ <= NOT \add_instance|RF|registers[0][9]~combout\;
\add_instance|RF|ALT_INV_registers[0][8]~combout\ <= NOT \add_instance|RF|registers[0][8]~combout\;
\add_instance|RF|ALT_INV_registers[0][7]~combout\ <= NOT \add_instance|RF|registers[0][7]~combout\;
\add_instance|RF|ALT_INV_registers[0][6]~combout\ <= NOT \add_instance|RF|registers[0][6]~combout\;
\add_instance|RF|ALT_INV_registers[0][5]~combout\ <= NOT \add_instance|RF|registers[0][5]~combout\;
\add_instance|RF|ALT_INV_registers[0][4]~combout\ <= NOT \add_instance|RF|registers[0][4]~combout\;
\add_instance|RF|ALT_INV_registers[0][3]~combout\ <= NOT \add_instance|RF|registers[0][3]~combout\;
\add_instance|RF|ALT_INV_registers[0][2]~combout\ <= NOT \add_instance|RF|registers[0][2]~combout\;
\add_instance|RF|ALT_INV_registers[0][1]~combout\ <= NOT \add_instance|RF|registers[0][1]~combout\;
\add_instance|RF|ALT_INV_registers[0][0]~combout\ <= NOT \add_instance|RF|registers[0][0]~combout\;
\add_instance|RF|ALT_INV_Decoder0~1_combout\ <= NOT \add_instance|RF|Decoder0~1_combout\;
\add_instance|RF|ALT_INV_Decoder0~0_combout\ <= NOT \add_instance|RF|Decoder0~0_combout\;
\add_instance|PC|ALT_INV_Dout\(3) <= NOT \add_instance|PC|Dout\(3);
\add_instance|PC|ALT_INV_Dout\(2) <= NOT \add_instance|PC|Dout\(2);
\add_instance|PC|ALT_INV_Dout\(1) <= NOT \add_instance|PC|Dout\(1);
\add_instance|PC|ALT_INV_Dout\(0) <= NOT \add_instance|PC|Dout\(0);
\add_instance|PC|ALT_INV_Dout\(4) <= NOT \add_instance|PC|Dout\(4);
\add_instance|IF_ID_pipe|inst_reg|ALT_INV_Dout\(12) <= NOT \add_instance|IF_ID_pipe|inst_reg|Dout\(12);
\add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0) <= NOT \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0);
\add_instance|EXE_MEM_pipe|D3_reg|ALT_INV_Dout\(8) <= NOT \add_instance|EXE_MEM_pipe|D3_reg|Dout\(8);
\add_instance|EXE_MEM_pipe|D3_reg|ALT_INV_Dout\(4) <= NOT \add_instance|EXE_MEM_pipe|D3_reg|Dout\(4);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(15) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(15);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(14) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(14);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(13) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(13);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(12) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(12);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(11) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(11);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(10) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(10);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(9) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(9);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(8) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(8);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(7) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(7);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(6) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(6);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(5) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(5);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(4) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(4);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(3) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(3);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(2) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(2);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(1) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(1);
\add_instance|p_mem_wb|wb_cont|ALT_INV_Dout~q\ <= NOT \add_instance|p_mem_wb|wb_cont|Dout~q\;
\add_instance|p_mem_wb|AD3_reg|ALT_INV_Dout\(0) <= NOT \add_instance|p_mem_wb|AD3_reg|Dout\(0);
\add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(0) <= NOT \add_instance|p_mem_wb|D3_reg|Dout\(0);

-- Location: IOOBUF_X68_Y0_N2
\output_vector[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][0]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(0));

-- Location: IOOBUF_X89_Y4_N45
\output_vector[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][1]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(1));

-- Location: IOOBUF_X89_Y9_N56
\output_vector[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][2]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(2));

-- Location: IOOBUF_X89_Y6_N22
\output_vector[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][3]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(3));

-- Location: IOOBUF_X66_Y0_N93
\output_vector[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][4]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(4));

-- Location: IOOBUF_X72_Y0_N53
\output_vector[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][5]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(5));

-- Location: IOOBUF_X89_Y6_N56
\output_vector[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][6]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(6));

-- Location: IOOBUF_X70_Y0_N19
\output_vector[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][7]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(7));

-- Location: IOOBUF_X72_Y0_N36
\output_vector[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][8]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(8));

-- Location: IOOBUF_X89_Y4_N96
\output_vector[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][9]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(9));

-- Location: IOOBUF_X89_Y9_N39
\output_vector[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][10]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(10));

-- Location: IOOBUF_X89_Y6_N5
\output_vector[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][11]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(11));

-- Location: IOOBUF_X89_Y8_N5
\output_vector[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][12]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(12));

-- Location: IOOBUF_X89_Y9_N22
\output_vector[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][13]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(13));

-- Location: IOOBUF_X89_Y8_N22
\output_vector[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][14]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(14));

-- Location: IOOBUF_X70_Y0_N2
\output_vector[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[0][15]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(15));

-- Location: IOOBUF_X32_Y81_N53
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N2
\output_vector[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(19));

-- Location: IOOBUF_X36_Y81_N19
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

-- Location: IOOBUF_X84_Y81_N36
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X28_Y81_N36
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

-- Location: IOOBUF_X8_Y0_N53
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

-- Location: IOOBUF_X82_Y81_N59
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

-- Location: IOOBUF_X58_Y81_N76
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X40_Y81_N2
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

-- Location: IOOBUF_X34_Y81_N76
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

-- Location: IOOBUF_X40_Y81_N36
\output_vector[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(32));

-- Location: IOOBUF_X62_Y0_N2
\output_vector[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(33));

-- Location: IOOBUF_X60_Y0_N19
\output_vector[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(34));

-- Location: IOOBUF_X56_Y0_N2
\output_vector[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(35));

-- Location: IOOBUF_X36_Y81_N53
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

-- Location: IOOBUF_X62_Y81_N2
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X56_Y81_N19
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

-- Location: IOOBUF_X6_Y0_N53
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X66_Y81_N59
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

-- Location: IOOBUF_X78_Y81_N2
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

-- Location: IOOBUF_X68_Y81_N36
\output_vector[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_output_vector(44));

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N53
\output_vector[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][0]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(48));

-- Location: IOOBUF_X89_Y4_N62
\output_vector[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][1]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(49));

-- Location: IOOBUF_X70_Y0_N36
\output_vector[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][2]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(50));

-- Location: IOOBUF_X72_Y0_N2
\output_vector[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][3]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(51));

-- Location: IOOBUF_X66_Y0_N76
\output_vector[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][4]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(52));

-- Location: IOOBUF_X66_Y0_N59
\output_vector[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][5]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(53));

-- Location: IOOBUF_X68_Y0_N19
\output_vector[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][6]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(54));

-- Location: IOOBUF_X68_Y0_N36
\output_vector[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][7]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(55));

-- Location: IOOBUF_X66_Y0_N42
\output_vector[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][8]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(56));

-- Location: IOOBUF_X89_Y35_N79
\output_vector[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][9]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(57));

-- Location: IOOBUF_X89_Y8_N39
\output_vector[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][10]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(58));

-- Location: IOOBUF_X72_Y0_N19
\output_vector[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][11]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(59));

-- Location: IOOBUF_X89_Y9_N5
\output_vector[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][12]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(60));

-- Location: IOOBUF_X89_Y8_N56
\output_vector[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][13]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(61));

-- Location: IOOBUF_X89_Y6_N39
\output_vector[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][14]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(62));

-- Location: IOOBUF_X70_Y0_N53
\output_vector[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|RF|registers[3][15]~combout\,
	devoe => ww_devoe,
	o => ww_output_vector(63));

-- Location: IOOBUF_X60_Y81_N53
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

-- Location: IOOBUF_X62_Y81_N19
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

-- Location: IOOBUF_X62_Y81_N53
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

-- Location: IOOBUF_X62_Y81_N36
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X72_Y81_N19
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

-- Location: IOOBUF_X50_Y81_N42
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

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X32_Y81_N36
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

-- Location: IOOBUF_X86_Y81_N19
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

-- Location: IOOBUF_X26_Y0_N42
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

-- Location: IOOBUF_X72_Y81_N2
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X40_Y81_N19
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X26_Y0_N59
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

-- Location: IOIBUF_X89_Y4_N78
\input_vector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

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

-- Location: LABCELL_X81_Y4_N30
\add_instance|main_alu_1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu_1|Add0~5_sumout\ = SUM(( \add_instance|PC|Dout\(0) ) + ( VCC ) + ( !VCC ))
-- \add_instance|main_alu_1|Add0~6\ = CARRY(( \add_instance|PC|Dout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|PC|ALT_INV_Dout\(0),
	cin => GND,
	sumout => \add_instance|main_alu_1|Add0~5_sumout\,
	cout => \add_instance|main_alu_1|Add0~6\);

-- Location: FF_X81_Y4_N31
\add_instance|PC|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu_1|Add0~5_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|PC|Dout\(0));

-- Location: LABCELL_X81_Y4_N33
\add_instance|main_alu_1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu_1|Add0~9_sumout\ = SUM(( \add_instance|PC|Dout\(1) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~6\ ))
-- \add_instance|main_alu_1|Add0~10\ = CARRY(( \add_instance|PC|Dout\(1) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|PC|ALT_INV_Dout\(1),
	cin => \add_instance|main_alu_1|Add0~6\,
	sumout => \add_instance|main_alu_1|Add0~9_sumout\,
	cout => \add_instance|main_alu_1|Add0~10\);

-- Location: FF_X81_Y4_N35
\add_instance|PC|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu_1|Add0~9_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|PC|Dout\(1));

-- Location: LABCELL_X81_Y4_N36
\add_instance|main_alu_1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu_1|Add0~13_sumout\ = SUM(( \add_instance|PC|Dout\(2) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~10\ ))
-- \add_instance|main_alu_1|Add0~14\ = CARRY(( \add_instance|PC|Dout\(2) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|PC|ALT_INV_Dout\(2),
	cin => \add_instance|main_alu_1|Add0~10\,
	sumout => \add_instance|main_alu_1|Add0~13_sumout\,
	cout => \add_instance|main_alu_1|Add0~14\);

-- Location: FF_X81_Y4_N38
\add_instance|PC|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu_1|Add0~13_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|PC|Dout\(2));

-- Location: LABCELL_X81_Y4_N39
\add_instance|main_alu_1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu_1|Add0~17_sumout\ = SUM(( \add_instance|PC|Dout\(3) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~14\ ))
-- \add_instance|main_alu_1|Add0~18\ = CARRY(( \add_instance|PC|Dout\(3) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|PC|ALT_INV_Dout\(3),
	cin => \add_instance|main_alu_1|Add0~14\,
	sumout => \add_instance|main_alu_1|Add0~17_sumout\,
	cout => \add_instance|main_alu_1|Add0~18\);

-- Location: FF_X81_Y4_N40
\add_instance|PC|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu_1|Add0~17_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|PC|Dout\(3));

-- Location: LABCELL_X81_Y4_N42
\add_instance|main_alu_1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu_1|Add0~1_sumout\ = SUM(( \add_instance|PC|Dout\(4) ) + ( GND ) + ( \add_instance|main_alu_1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|PC|ALT_INV_Dout\(4),
	cin => \add_instance|main_alu_1|Add0~18\,
	sumout => \add_instance|main_alu_1|Add0~1_sumout\);

-- Location: FF_X81_Y4_N44
\add_instance|PC|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu_1|Add0~1_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|PC|Dout\(4));

-- Location: LABCELL_X81_Y4_N24
\add_instance|code_mem|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|code_mem|Mux3~0_combout\ = ( \add_instance|PC|Dout\(0) & ( (!\add_instance|PC|Dout\(2) & (!\add_instance|PC|Dout\(4) & !\add_instance|PC|Dout\(3))) ) ) # ( !\add_instance|PC|Dout\(0) & ( (!\add_instance|PC|Dout\(4) & 
-- (!\add_instance|PC|Dout\(3) & ((!\add_instance|PC|Dout\(2)) # (!\add_instance|PC|Dout\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|PC|ALT_INV_Dout\(2),
	datab => \add_instance|PC|ALT_INV_Dout\(4),
	datac => \add_instance|PC|ALT_INV_Dout\(1),
	datad => \add_instance|PC|ALT_INV_Dout\(3),
	dataf => \add_instance|PC|ALT_INV_Dout\(0),
	combout => \add_instance|code_mem|Mux3~0_combout\);

-- Location: FF_X81_Y4_N26
\add_instance|IF_ID_pipe|inst_reg|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|code_mem|Mux3~0_combout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|IF_ID_pipe|inst_reg|Dout\(12));

-- Location: LABCELL_X81_Y4_N27
\add_instance|ID_RR_pipe|inst_reg|Dout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|ID_RR_pipe|inst_reg|Dout~0_combout\ = ( \add_instance|IF_ID_pipe|inst_reg|Dout\(12) & ( !\input_vector[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|IF_ID_pipe|inst_reg|ALT_INV_Dout\(12),
	combout => \add_instance|ID_RR_pipe|inst_reg|Dout~0_combout\);

-- Location: FF_X81_Y4_N28
\add_instance|ID_RR_pipe|AD3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|ID_RR_pipe|inst_reg|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ID_RR_pipe|AD3_reg|Dout\(0));

-- Location: FF_X79_Y4_N59
\add_instance|RR_EXE_pipe|AD3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|ID_RR_pipe|AD3_reg|Dout\(0),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0));

-- Location: FF_X80_Y4_N46
\add_instance|EXE_MEM_pipe|AD3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|AD3_reg|Dout\(0));

-- Location: FF_X80_Y4_N37
\add_instance|p_mem_wb|AD3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|AD3_reg|Dout\(0),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|AD3_reg|Dout\(0));

-- Location: LABCELL_X81_Y4_N15
\add_instance|IF_ID_pipe|valid_reg|Dout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|IF_ID_pipe|valid_reg|Dout~0_combout\ = ( !\input_vector[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input_vector[1]~input_o\,
	combout => \add_instance|IF_ID_pipe|valid_reg|Dout~0_combout\);

-- Location: FF_X80_Y4_N56
\add_instance|IF_ID_pipe|valid_reg|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|IF_ID_pipe|valid_reg|Dout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|IF_ID_pipe|valid_reg|Dout~q\);

-- Location: FF_X80_Y4_N25
\add_instance|ID_RR_pipe|valid_reg|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|IF_ID_pipe|valid_reg|Dout~q\,
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ID_RR_pipe|valid_reg|Dout~q\);

-- Location: FF_X80_Y4_N5
\add_instance|RR_EXE_pipe|valid_reg|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|ID_RR_pipe|valid_reg|Dout~q\,
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RR_EXE_pipe|valid_reg|Dout~q\);

-- Location: FF_X80_Y4_N23
\add_instance|EXE_MEM_pipe|wb_cont|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|RR_EXE_pipe|valid_reg|Dout~q\,
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|wb_cont|Dout~q\);

-- Location: FF_X80_Y4_N1
\add_instance|p_mem_wb|wb_cont|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|wb_cont|Dout~q\,
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|wb_cont|Dout~q\);

-- Location: LABCELL_X80_Y4_N36
\add_instance|RF|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|Decoder0~0_combout\ = ( \add_instance|p_mem_wb|wb_cont|Dout~q\ & ( !\add_instance|p_mem_wb|AD3_reg|Dout\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|p_mem_wb|AD3_reg|ALT_INV_Dout\(0),
	dataf => \add_instance|p_mem_wb|wb_cont|ALT_INV_Dout~q\,
	combout => \add_instance|RF|Decoder0~0_combout\);

-- Location: LABCELL_X79_Y4_N0
\add_instance|main_alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~1_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(0) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(0) ) + ( !VCC ))
-- \add_instance|main_alu|Add0~2\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(0) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(0),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => GND,
	sumout => \add_instance|main_alu|Add0~1_sumout\,
	cout => \add_instance|main_alu|Add0~2\);

-- Location: FF_X79_Y4_N1
\add_instance|EXE_MEM_pipe|D3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~1_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(0));

-- Location: FF_X79_Y4_N56
\add_instance|p_mem_wb|D3_reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(0),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(0));

-- Location: LABCELL_X79_Y4_N51
\add_instance|RF|registers[0][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][0]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(0) & ( ((\add_instance|RF|Decoder0~0_combout\) # (\input_vector[1]~input_o\)) # (\add_instance|RF|registers[0][0]~combout\) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(0) & 
-- ( ((\add_instance|RF|registers[0][0]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) # (\input_vector[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_registers[0][0]~combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(0),
	combout => \add_instance|RF|registers[0][0]~combout\);

-- Location: LABCELL_X79_Y4_N3
\add_instance|main_alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~5_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(1) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(1) ) + ( \add_instance|main_alu|Add0~2\ ))
-- \add_instance|main_alu|Add0~6\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(1) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(1) ) + ( \add_instance|main_alu|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(1),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~2\,
	sumout => \add_instance|main_alu|Add0~5_sumout\,
	cout => \add_instance|main_alu|Add0~6\);

-- Location: FF_X79_Y4_N5
\add_instance|EXE_MEM_pipe|D3_reg|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~5_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(1));

-- Location: FF_X79_Y4_N50
\add_instance|p_mem_wb|D3_reg|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(1),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(1));

-- Location: LABCELL_X79_Y4_N57
\add_instance|RF|registers[0][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][1]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(1) & ( ((\add_instance|RF|Decoder0~0_combout\) # (\input_vector[1]~input_o\)) # (\add_instance|RF|registers[0][1]~combout\) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(1) & 
-- ( ((\add_instance|RF|registers[0][1]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) # (\input_vector[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_registers[0][1]~combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(1),
	combout => \add_instance|RF|registers[0][1]~combout\);

-- Location: LABCELL_X79_Y4_N6
\add_instance|main_alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~9_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(2) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(2) ) + ( \add_instance|main_alu|Add0~6\ ))
-- \add_instance|main_alu|Add0~10\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(2) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(2) ) + ( \add_instance|main_alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(2),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~6\,
	sumout => \add_instance|main_alu|Add0~9_sumout\,
	cout => \add_instance|main_alu|Add0~10\);

-- Location: FF_X79_Y4_N7
\add_instance|EXE_MEM_pipe|D3_reg|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~9_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(2));

-- Location: FF_X80_Y4_N14
\add_instance|p_mem_wb|D3_reg|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(2),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(2));

-- Location: LABCELL_X80_Y4_N3
\add_instance|RF|registers[0][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][2]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(2) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|registers[0][2]~combout\) # (\add_instance|RF|Decoder0~0_combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(2) 
-- & ( (!\add_instance|RF|Decoder0~0_combout\ & (\add_instance|RF|registers[0][2]~combout\ & !\input_vector[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datab => \add_instance|RF|ALT_INV_registers[0][2]~combout\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(2),
	combout => \add_instance|RF|registers[0][2]~combout\);

-- Location: LABCELL_X79_Y4_N9
\add_instance|main_alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~13_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(3) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(3) ) + ( \add_instance|main_alu|Add0~10\ ))
-- \add_instance|main_alu|Add0~14\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(3) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(3) ) + ( \add_instance|main_alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(3),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~10\,
	sumout => \add_instance|main_alu|Add0~13_sumout\,
	cout => \add_instance|main_alu|Add0~14\);

-- Location: FF_X79_Y4_N10
\add_instance|EXE_MEM_pipe|D3_reg|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~13_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(3));

-- Location: FF_X80_Y4_N41
\add_instance|p_mem_wb|D3_reg|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(3),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(3));

-- Location: LABCELL_X80_Y4_N48
\add_instance|RF|registers[0][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][3]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(3) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~0_combout\) # (\add_instance|RF|registers[0][3]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(3) 
-- & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[0][3]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|RF|ALT_INV_registers[0][3]~combout\,
	datac => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(3),
	combout => \add_instance|RF|registers[0][3]~combout\);

-- Location: LABCELL_X79_Y4_N12
\add_instance|main_alu|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~17_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(4) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(4) ) + ( \add_instance|main_alu|Add0~14\ ))
-- \add_instance|main_alu|Add0~18\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(4) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(4) ) + ( \add_instance|main_alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(4),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~14\,
	sumout => \add_instance|main_alu|Add0~17_sumout\,
	cout => \add_instance|main_alu|Add0~18\);

-- Location: FF_X79_Y4_N13
\add_instance|EXE_MEM_pipe|D3_reg|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~17_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(4));

-- Location: MLABCELL_X78_Y4_N48
\add_instance|p_mem_wb|D3_reg|Dout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|p_mem_wb|D3_reg|Dout[4]~feeder_combout\ = ( \add_instance|EXE_MEM_pipe|D3_reg|Dout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \add_instance|EXE_MEM_pipe|D3_reg|ALT_INV_Dout\(4),
	combout => \add_instance|p_mem_wb|D3_reg|Dout[4]~feeder_combout\);

-- Location: FF_X78_Y4_N50
\add_instance|p_mem_wb|D3_reg|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|p_mem_wb|D3_reg|Dout[4]~feeder_combout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(4));

-- Location: MLABCELL_X78_Y4_N3
\add_instance|RF|registers[0][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][4]~combout\ = ( \add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(4) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(4) & ( 
-- (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][4]~combout\) ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(4) & ( (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][4]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|RF|ALT_INV_registers[0][4]~combout\,
	datae => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(4),
	combout => \add_instance|RF|registers[0][4]~combout\);

-- Location: LABCELL_X79_Y4_N15
\add_instance|main_alu|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~21_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(5) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(5) ) + ( \add_instance|main_alu|Add0~18\ ))
-- \add_instance|main_alu|Add0~22\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(5) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(5) ) + ( \add_instance|main_alu|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(5),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~18\,
	sumout => \add_instance|main_alu|Add0~21_sumout\,
	cout => \add_instance|main_alu|Add0~22\);

-- Location: FF_X79_Y4_N17
\add_instance|EXE_MEM_pipe|D3_reg|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~21_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(5));

-- Location: FF_X78_Y4_N8
\add_instance|p_mem_wb|D3_reg|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(5),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(5));

-- Location: MLABCELL_X78_Y4_N15
\add_instance|RF|registers[0][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][5]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(5) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~0_combout\) # (\add_instance|RF|registers[0][5]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(5) 
-- & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[0][5]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][5]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(5),
	combout => \add_instance|RF|registers[0][5]~combout\);

-- Location: LABCELL_X79_Y4_N18
\add_instance|main_alu|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~25_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(6) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(6) ) + ( \add_instance|main_alu|Add0~22\ ))
-- \add_instance|main_alu|Add0~26\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(6) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(6) ) + ( \add_instance|main_alu|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(6),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~22\,
	sumout => \add_instance|main_alu|Add0~25_sumout\,
	cout => \add_instance|main_alu|Add0~26\);

-- Location: FF_X79_Y4_N19
\add_instance|EXE_MEM_pipe|D3_reg|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~25_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(6));

-- Location: FF_X80_Y4_N32
\add_instance|p_mem_wb|D3_reg|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(6),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(6));

-- Location: LABCELL_X80_Y4_N15
\add_instance|RF|registers[0][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][6]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(6) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|registers[0][6]~combout\) # (\add_instance|RF|Decoder0~0_combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(6) 
-- & ( (!\add_instance|RF|Decoder0~0_combout\ & (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][6]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][6]~combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(6),
	combout => \add_instance|RF|registers[0][6]~combout\);

-- Location: LABCELL_X79_Y4_N21
\add_instance|main_alu|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~29_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(7) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(7) ) + ( \add_instance|main_alu|Add0~26\ ))
-- \add_instance|main_alu|Add0~30\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(7) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(7) ) + ( \add_instance|main_alu|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(7),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~26\,
	sumout => \add_instance|main_alu|Add0~29_sumout\,
	cout => \add_instance|main_alu|Add0~30\);

-- Location: FF_X79_Y4_N22
\add_instance|EXE_MEM_pipe|D3_reg|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~29_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(7));

-- Location: FF_X80_Y4_N50
\add_instance|p_mem_wb|D3_reg|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(7),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(7));

-- Location: LABCELL_X80_Y4_N21
\add_instance|RF|registers[0][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][7]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(7) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|registers[0][7]~combout\) # (\add_instance|RF|Decoder0~0_combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(7) 
-- & ( (!\add_instance|RF|Decoder0~0_combout\ & (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][7]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][7]~combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(7),
	combout => \add_instance|RF|registers[0][7]~combout\);

-- Location: LABCELL_X79_Y4_N24
\add_instance|main_alu|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~33_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(8) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(8) ) + ( \add_instance|main_alu|Add0~30\ ))
-- \add_instance|main_alu|Add0~34\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(8) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(8) ) + ( \add_instance|main_alu|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(8),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~30\,
	sumout => \add_instance|main_alu|Add0~33_sumout\,
	cout => \add_instance|main_alu|Add0~34\);

-- Location: FF_X79_Y4_N25
\add_instance|EXE_MEM_pipe|D3_reg|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~33_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(8));

-- Location: MLABCELL_X78_Y4_N24
\add_instance|p_mem_wb|D3_reg|Dout[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|p_mem_wb|D3_reg|Dout[8]~feeder_combout\ = ( \add_instance|EXE_MEM_pipe|D3_reg|Dout\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \add_instance|EXE_MEM_pipe|D3_reg|ALT_INV_Dout\(8),
	combout => \add_instance|p_mem_wb|D3_reg|Dout[8]~feeder_combout\);

-- Location: FF_X78_Y4_N26
\add_instance|p_mem_wb|D3_reg|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|p_mem_wb|D3_reg|Dout[8]~feeder_combout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(8));

-- Location: MLABCELL_X78_Y4_N57
\add_instance|RF|registers[0][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][8]~combout\ = ( \add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(8) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(8) & ( 
-- (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][8]~combout\) ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(8) & ( (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][8]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][8]~combout\,
	datae => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(8),
	combout => \add_instance|RF|registers[0][8]~combout\);

-- Location: LABCELL_X79_Y4_N27
\add_instance|main_alu|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~37_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(9) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(9) ) + ( \add_instance|main_alu|Add0~34\ ))
-- \add_instance|main_alu|Add0~38\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(9) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(9) ) + ( \add_instance|main_alu|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(9),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~34\,
	sumout => \add_instance|main_alu|Add0~37_sumout\,
	cout => \add_instance|main_alu|Add0~38\);

-- Location: FF_X79_Y4_N29
\add_instance|EXE_MEM_pipe|D3_reg|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~37_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(9));

-- Location: FF_X78_Y4_N32
\add_instance|p_mem_wb|D3_reg|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(9),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(9));

-- Location: MLABCELL_X78_Y4_N39
\add_instance|RF|registers[0][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][9]~combout\ = ( \add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(9) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(9) & ( 
-- (\add_instance|RF|registers[0][9]~combout\ & !\input_vector[1]~input_o\) ) ) ) # ( !\add_instance|RF|Decoder0~0_combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(9) & ( (\add_instance|RF|registers[0][9]~combout\ & !\input_vector[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF|ALT_INV_registers[0][9]~combout\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datae => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(9),
	combout => \add_instance|RF|registers[0][9]~combout\);

-- Location: LABCELL_X79_Y4_N30
\add_instance|main_alu|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~41_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(10) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(10) ) + ( \add_instance|main_alu|Add0~38\ ))
-- \add_instance|main_alu|Add0~42\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(10) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(10) ) + ( \add_instance|main_alu|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(10),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~38\,
	sumout => \add_instance|main_alu|Add0~41_sumout\,
	cout => \add_instance|main_alu|Add0~42\);

-- Location: FF_X79_Y4_N31
\add_instance|EXE_MEM_pipe|D3_reg|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~41_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(10));

-- Location: FF_X80_Y4_N17
\add_instance|p_mem_wb|D3_reg|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(10),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(10));

-- Location: LABCELL_X80_Y4_N24
\add_instance|RF|registers[0][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][10]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(10) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~0_combout\) # (\add_instance|RF|registers[0][10]~combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(10) & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[0][10]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|RF|ALT_INV_registers[0][10]~combout\,
	datac => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(10),
	combout => \add_instance|RF|registers[0][10]~combout\);

-- Location: LABCELL_X79_Y4_N33
\add_instance|main_alu|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~45_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(11) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(11) ) + ( \add_instance|main_alu|Add0~42\ ))
-- \add_instance|main_alu|Add0~46\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(11) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(11) ) + ( \add_instance|main_alu|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(11),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~42\,
	sumout => \add_instance|main_alu|Add0~45_sumout\,
	cout => \add_instance|main_alu|Add0~46\);

-- Location: FF_X79_Y4_N34
\add_instance|EXE_MEM_pipe|D3_reg|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~45_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(11));

-- Location: FF_X80_Y4_N53
\add_instance|p_mem_wb|D3_reg|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(11),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(11));

-- Location: LABCELL_X80_Y4_N33
\add_instance|RF|registers[0][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][11]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(11) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|registers[0][11]~combout\) # (\add_instance|RF|Decoder0~0_combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(11) & ( (!\add_instance|RF|Decoder0~0_combout\ & (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][11]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][11]~combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(11),
	combout => \add_instance|RF|registers[0][11]~combout\);

-- Location: LABCELL_X79_Y4_N36
\add_instance|main_alu|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~49_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(12) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(12) ) + ( \add_instance|main_alu|Add0~46\ ))
-- \add_instance|main_alu|Add0~50\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(12) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(12) ) + ( \add_instance|main_alu|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(12),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~46\,
	sumout => \add_instance|main_alu|Add0~49_sumout\,
	cout => \add_instance|main_alu|Add0~50\);

-- Location: FF_X79_Y4_N37
\add_instance|EXE_MEM_pipe|D3_reg|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~49_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(12));

-- Location: FF_X80_Y4_N44
\add_instance|p_mem_wb|D3_reg|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(12),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(12));

-- Location: LABCELL_X80_Y4_N9
\add_instance|RF|registers[0][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][12]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(12) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~0_combout\) # (\add_instance|RF|registers[0][12]~combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(12) & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[0][12]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][12]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(12),
	combout => \add_instance|RF|registers[0][12]~combout\);

-- Location: LABCELL_X79_Y4_N39
\add_instance|main_alu|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~53_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(13) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(13) ) + ( \add_instance|main_alu|Add0~50\ ))
-- \add_instance|main_alu|Add0~54\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(13) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(13) ) + ( \add_instance|main_alu|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(13),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~50\,
	sumout => \add_instance|main_alu|Add0~53_sumout\,
	cout => \add_instance|main_alu|Add0~54\);

-- Location: FF_X79_Y4_N41
\add_instance|EXE_MEM_pipe|D3_reg|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~53_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(13));

-- Location: FF_X80_Y4_N8
\add_instance|p_mem_wb|D3_reg|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(13),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(13));

-- Location: LABCELL_X80_Y4_N57
\add_instance|RF|registers[0][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][13]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(13) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~0_combout\) # (\add_instance|RF|registers[0][13]~combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(13) & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[0][13]~combout\ & !\add_instance|RF|Decoder0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][13]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(13),
	combout => \add_instance|RF|registers[0][13]~combout\);

-- Location: LABCELL_X79_Y4_N42
\add_instance|main_alu|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~57_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(14) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(14) ) + ( \add_instance|main_alu|Add0~54\ ))
-- \add_instance|main_alu|Add0~58\ = CARRY(( (\add_instance|p_mem_wb|D3_reg|Dout\(14) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(14) ) + ( \add_instance|main_alu|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(14),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~54\,
	sumout => \add_instance|main_alu|Add0~57_sumout\,
	cout => \add_instance|main_alu|Add0~58\);

-- Location: FF_X79_Y4_N43
\add_instance|EXE_MEM_pipe|D3_reg|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~57_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(14));

-- Location: FF_X80_Y4_N35
\add_instance|p_mem_wb|D3_reg|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(14),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(14));

-- Location: LABCELL_X80_Y4_N45
\add_instance|RF|registers[0][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][14]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(14) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|registers[0][14]~combout\) # (\add_instance|RF|Decoder0~0_combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(14) & ( (!\add_instance|RF|Decoder0~0_combout\ & (!\input_vector[1]~input_o\ & \add_instance|RF|registers[0][14]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[0][14]~combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(14),
	combout => \add_instance|RF|registers[0][14]~combout\);

-- Location: LABCELL_X79_Y4_N45
\add_instance|main_alu|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|Add0~61_sumout\ = SUM(( (\add_instance|p_mem_wb|D3_reg|Dout\(15) & \add_instance|RR_EXE_pipe|AD3_reg|Dout\(0)) ) + ( \add_instance|p_mem_wb|D3_reg|Dout\(15) ) + ( \add_instance|main_alu|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(15),
	datad => \add_instance|RR_EXE_pipe|AD3_reg|ALT_INV_Dout\(0),
	cin => \add_instance|main_alu|Add0~58\,
	sumout => \add_instance|main_alu|Add0~61_sumout\);

-- Location: FF_X79_Y4_N46
\add_instance|EXE_MEM_pipe|D3_reg|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	d => \add_instance|main_alu|Add0~61_sumout\,
	sclr => \input_vector[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(15));

-- Location: FF_X81_Y4_N17
\add_instance|p_mem_wb|D3_reg|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputCLKENA0_outclk\,
	asdata => \add_instance|EXE_MEM_pipe|D3_reg|Dout\(15),
	sclr => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|p_mem_wb|D3_reg|Dout\(15));

-- Location: LABCELL_X81_Y4_N54
\add_instance|RF|registers[0][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[0][15]~combout\ = ( \add_instance|RF|registers[0][15]~combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(15) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|registers[0][15]~combout\ & ( 
-- \add_instance|p_mem_wb|D3_reg|Dout\(15) & ( (!\input_vector[1]~input_o\ & \add_instance|RF|Decoder0~0_combout\) ) ) ) # ( \add_instance|RF|registers[0][15]~combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(15) & ( (!\input_vector[1]~input_o\ & 
-- !\add_instance|RF|Decoder0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|RF|ALT_INV_Decoder0~0_combout\,
	datae => \add_instance|RF|ALT_INV_registers[0][15]~combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(15),
	combout => \add_instance|RF|registers[0][15]~combout\);

-- Location: LABCELL_X80_Y4_N0
\add_instance|RF|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|Decoder0~1_combout\ = ( \add_instance|p_mem_wb|AD3_reg|Dout\(0) & ( \add_instance|p_mem_wb|wb_cont|Dout~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|p_mem_wb|wb_cont|ALT_INV_Dout~q\,
	dataf => \add_instance|p_mem_wb|AD3_reg|ALT_INV_Dout\(0),
	combout => \add_instance|RF|Decoder0~1_combout\);

-- Location: LABCELL_X79_Y4_N54
\add_instance|RF|registers[3][0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][0]~combout\ = ( \add_instance|RF|registers[3][0]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(0)))) ) ) # ( 
-- !\add_instance|RF|registers[3][0]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(0),
	dataf => \add_instance|RF|ALT_INV_registers[3][0]~combout\,
	combout => \add_instance|RF|registers[3][0]~combout\);

-- Location: LABCELL_X79_Y4_N48
\add_instance|RF|registers[3][1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][1]~combout\ = ( \add_instance|RF|registers[3][1]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(1)))) ) ) # ( 
-- !\add_instance|RF|registers[3][1]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(1),
	dataf => \add_instance|RF|ALT_INV_registers[3][1]~combout\,
	combout => \add_instance|RF|registers[3][1]~combout\);

-- Location: LABCELL_X80_Y4_N12
\add_instance|RF|registers[3][2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][2]~combout\ = ( \add_instance|RF|registers[3][2]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(2)))) ) ) # ( 
-- !\add_instance|RF|registers[3][2]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(2),
	dataf => \add_instance|RF|ALT_INV_registers[3][2]~combout\,
	combout => \add_instance|RF|registers[3][2]~combout\);

-- Location: LABCELL_X80_Y4_N39
\add_instance|RF|registers[3][3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][3]~combout\ = ( \add_instance|RF|registers[3][3]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(3)))) ) ) # ( 
-- !\add_instance|RF|registers[3][3]~combout\ & ( (\add_instance|RF|Decoder0~1_combout\ & (!\input_vector[1]~input_o\ & \add_instance|p_mem_wb|D3_reg|Dout\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(3),
	dataf => \add_instance|RF|ALT_INV_registers[3][3]~combout\,
	combout => \add_instance|RF|registers[3][3]~combout\);

-- Location: MLABCELL_X78_Y4_N21
\add_instance|RF|registers[3][4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][4]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(4) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][4]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(4) 
-- & ( (\add_instance|RF|registers[3][4]~combout\ & (!\input_vector[1]~input_o\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|ALT_INV_registers[3][4]~combout\,
	datab => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(4),
	combout => \add_instance|RF|registers[3][4]~combout\);

-- Location: MLABCELL_X78_Y4_N42
\add_instance|RF|registers[3][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][5]~combout\ = ( \add_instance|RF|Decoder0~1_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(5) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|Decoder0~1_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(5) & ( 
-- (!\input_vector[1]~input_o\ & \add_instance|RF|registers[3][5]~combout\) ) ) ) # ( !\add_instance|RF|Decoder0~1_combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(5) & ( (!\input_vector[1]~input_o\ & \add_instance|RF|registers[3][5]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|RF|ALT_INV_registers[3][5]~combout\,
	datae => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(5),
	combout => \add_instance|RF|registers[3][5]~combout\);

-- Location: LABCELL_X80_Y4_N30
\add_instance|RF|registers[3][6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][6]~combout\ = ( \add_instance|RF|registers[3][6]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(6)))) ) ) # ( 
-- !\add_instance|RF|registers[3][6]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(6),
	dataf => \add_instance|RF|ALT_INV_registers[3][6]~combout\,
	combout => \add_instance|RF|registers[3][6]~combout\);

-- Location: LABCELL_X80_Y4_N27
\add_instance|RF|registers[3][7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][7]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(7) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][7]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(7) 
-- & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[3][7]~combout\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[3][7]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(7),
	combout => \add_instance|RF|registers[3][7]~combout\);

-- Location: MLABCELL_X78_Y4_N18
\add_instance|RF|registers[3][8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][8]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(8) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][8]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(8) 
-- & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[3][8]~combout\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[3][8]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(8),
	combout => \add_instance|RF|registers[3][8]~combout\);

-- Location: MLABCELL_X78_Y4_N12
\add_instance|RF|registers[3][9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][9]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(9) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][9]~combout\))) ) ) # ( !\add_instance|p_mem_wb|D3_reg|Dout\(9) 
-- & ( (\add_instance|RF|registers[3][9]~combout\ & (!\input_vector[1]~input_o\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF|ALT_INV_registers[3][9]~combout\,
	datac => \ALT_INV_input_vector[1]~input_o\,
	datad => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(9),
	combout => \add_instance|RF|registers[3][9]~combout\);

-- Location: LABCELL_X80_Y4_N54
\add_instance|RF|registers[3][10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][10]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(10) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][10]~combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(10) & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[3][10]~combout\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datab => \add_instance|RF|ALT_INV_registers[3][10]~combout\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(10),
	combout => \add_instance|RF|registers[3][10]~combout\);

-- Location: LABCELL_X80_Y4_N51
\add_instance|RF|registers[3][11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][11]~combout\ = ( \add_instance|RF|registers[3][11]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(11)))) ) ) # ( 
-- !\add_instance|RF|registers[3][11]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(11),
	dataf => \add_instance|RF|ALT_INV_registers[3][11]~combout\,
	combout => \add_instance|RF|registers[3][11]~combout\);

-- Location: LABCELL_X80_Y4_N42
\add_instance|RF|registers[3][12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][12]~combout\ = ( \add_instance|RF|registers[3][12]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(12)))) ) ) # ( 
-- !\add_instance|RF|registers[3][12]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(12),
	dataf => \add_instance|RF|ALT_INV_registers[3][12]~combout\,
	combout => \add_instance|RF|registers[3][12]~combout\);

-- Location: LABCELL_X80_Y4_N6
\add_instance|RF|registers[3][13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][13]~combout\ = ( \add_instance|RF|registers[3][13]~combout\ & ( (!\input_vector[1]~input_o\ & ((!\add_instance|RF|Decoder0~1_combout\) # (\add_instance|p_mem_wb|D3_reg|Dout\(13)))) ) ) # ( 
-- !\add_instance|RF|registers[3][13]~combout\ & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|Decoder0~1_combout\ & \add_instance|p_mem_wb|D3_reg|Dout\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	datad => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(13),
	dataf => \add_instance|RF|ALT_INV_registers[3][13]~combout\,
	combout => \add_instance|RF|registers[3][13]~combout\);

-- Location: LABCELL_X80_Y4_N18
\add_instance|RF|registers[3][14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][14]~combout\ = ( \add_instance|p_mem_wb|D3_reg|Dout\(14) & ( (!\input_vector[1]~input_o\ & ((\add_instance|RF|Decoder0~1_combout\) # (\add_instance|RF|registers[3][14]~combout\))) ) ) # ( 
-- !\add_instance|p_mem_wb|D3_reg|Dout\(14) & ( (!\input_vector[1]~input_o\ & (\add_instance|RF|registers[3][14]~combout\ & !\add_instance|RF|Decoder0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[3][14]~combout\,
	datad => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(14),
	combout => \add_instance|RF|registers[3][14]~combout\);

-- Location: LABCELL_X81_Y4_N9
\add_instance|RF|registers[3][15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|RF|registers[3][15]~combout\ = ( \add_instance|RF|Decoder0~1_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(15) & ( !\input_vector[1]~input_o\ ) ) ) # ( !\add_instance|RF|Decoder0~1_combout\ & ( \add_instance|p_mem_wb|D3_reg|Dout\(15) & ( 
-- (!\input_vector[1]~input_o\ & \add_instance|RF|registers[3][15]~combout\) ) ) ) # ( !\add_instance|RF|Decoder0~1_combout\ & ( !\add_instance|p_mem_wb|D3_reg|Dout\(15) & ( (!\input_vector[1]~input_o\ & \add_instance|RF|registers[3][15]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_vector[1]~input_o\,
	datac => \add_instance|RF|ALT_INV_registers[3][15]~combout\,
	datae => \add_instance|RF|ALT_INV_Decoder0~1_combout\,
	dataf => \add_instance|p_mem_wb|D3_reg|ALT_INV_Dout\(15),
	combout => \add_instance|RF|registers[3][15]~combout\);

-- Location: LABCELL_X31_Y32_N0
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


