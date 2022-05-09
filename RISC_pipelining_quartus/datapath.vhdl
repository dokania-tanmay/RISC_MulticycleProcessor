LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

LIBRARY work;
USE work.pipeline_register.ALL;

ENTITY datapath IS
	PORT (
		reset, clock : IN STD_LOGIC

	);
END datapath;

ARCHITECTURE flow OF datapath IS
	COMPONENT priority_mux IS
		PORT (
			inp1, inp2, inp3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	COMPONENT LUT IS

		PORT (
			IF_M1_OUT, PC_EXE, PC_PRED, PC_RR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			clk : IN STD_LOGIC;
			match, clr : OUT STD_LOGIC;
			Branch_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	END COMPONENT;

	COMPONENT ALU_Oper_Sel IS
		PORT (
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			condn : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			alu_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			alu_en : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT write_enable IS

		PORT (
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			condn : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			C, Z : IN STD_LOGIC;
			WB_enable : OUT STD_LOGIC
		);

	END COMPONENT;
	COMPONENT sel_sign_extender IS

		GENERIC (
			inp_width : INTEGER := 10;
			outp_width : INTEGER := 16);

		PORT (
			inp : IN STD_LOGIC_VECTOR(inp_width - 1 DOWNTO 0);
			outp : OUT STD_LOGIC_VECTOR(outp_width - 1 DOWNTO 0)

		);

	END COMPONENT;
	COMPONENT pc_pred IS

		PORT (
			pc_2, RB, alu_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			jump_enable : IN STD_LOGIC;
			pc_next : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	END COMPONENT;
	COMPONENT cond_left_shift IS

		PORT (
			immediate : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			d3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			d3_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	END COMPONENT;
	COMPONENT BEQ_jcheck IS

		PORT (

			RA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			RB : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			jump_enable : OUT STD_LOGIC

		);

	END COMPONENT;

	COMPONENT Addr_cmp IS

		PORT (

			addr1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			addr2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			output_match : OUT STD_LOGIC

		);

	END COMPONENT;
	COMPONENT ALU_Oprd_Sel IS

		PORT (
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			RA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			RB : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			immediate : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			PC : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			OPR1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			OPR2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	END COMPONENT;

	signal WR_IF, WR_ID, WR_RR, valid_IF, valid_out_IF, valid_ID, valid_out_ID, valid_RR, valid_out_RR, valid_EX, C_EX, Z_EX, wb_control_EX
			,valid_out_EX, C_out_EX, Z_out_EX, wb_control_out_EX : STD_LOGIC; 
	signal pc_IF, pc_2_IF, inst_IF, pc_out_IF, pc_2_out_IF, inst_out_IF, pc_ID, pc_2_ID, inst_ID, pc_out_ID, pc_2_out_ID, 
			inst_out_ID, pc_RR, pc_2_RR, inst_RR, pc_out_RR, pc_2_out_RR, inst_out_RR, D1_RR, D2_RR, D1_out_RR, D2_out_RR,
			pc_EX, pc_2_EX, inst_EX, pc_out_EX, pc_2_out_EX, inst_out_EX, D1_EX, D3_EX, D1_out_EX, D3_out_EX, 
			pc_MEM, pc_2_MEM, inst_MEM, pc_out_MEM, pc_2_out_MEM, inst_out_MEM, D3_MEM, D3_out_MEM: std_logic_vector(15 downto 0);
	signal cond_ID, cond_out_ID, cond_RR, cond_out_RR, cond_EX, cond_out_EX: in std_logic_vector(1 downto 0);
	signal AD1_ID, AD2_ID, AD3_ID, AD1_out_ID, AD2_out_ID, AD3_out_ID, AD1_RR, AD2_RR, AD3_RR, AD1_out_RR, AD2_out_RR, AD3_out_RR,
			AD3_EX, AD3_out_EX: in std_logic_vector(2 downto 0);
	signal immd_RR, immd_out_RR, immd_EX, immd_out_EX: in std_logic_vector(9 downto 0);

BEGIN



















----------- Component Declaration
	IF_ID_pipe : pipe_IFD
		port map(pc, pc_2, inst, valid, clk => clock, write_enable, valid_out, pc_out, pc_2_out, inst_out);
	ID_RR_pipe : pipe_IDRR
		port map(pc, pc_2, inst,valid,clk => clock,cond,AD1, AD2, AD3,write_enable,clear,valid_out,cond_out,
		AD1_out, AD2_out, AD3_out,pc_out, pc_2_out, inst_out);

end flow;