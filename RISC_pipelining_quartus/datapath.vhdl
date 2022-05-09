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

	signal WR_IF, WR_ID, valid_IF, valid_out_IF, valid_ID, valid_out_ID : STD_LOGIC; 
	signal pc_IF, pc_2_IF, inst_IF, pc_out_IF, pc_2_out_IF, inst_out_IF, pc_ID, pc_2_ID, inst_ID, pc_out_ID, pc_2_out_ID, 
			inst_out_ID, pc_IF, pc_2_IF, inst_IF, pc_out_IF, pc_2_out_IF, inst_out_IF, D1, D2, D1_out, D2_out: std_logic_vector(15 downto 0);
	signal cond_ID, cond_out_ID: in std_logic_vector(1 downto 0);
	signal AD1_ID, AD2_ID, AD3_ID, AD1_out_ID, AD2_out_ID, AD3_out_ID: in std_logic_vector(2 downto 0);

BEGIN

end flow;