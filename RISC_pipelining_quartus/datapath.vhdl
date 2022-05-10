LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

LIBRARY work;
USE work.ALL;

ENTITY datapath IS
	PORT (
		reset, clock : IN STD_LOGIC

	);
END datapath;

LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

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

	signal WR_IF, WR_ID, WR_RR, WR_EX, WR_MEM, valid_IF, valid_out_IF, valid_ID, valid_out_ID, valid_RR, valid_out_RR, valid_EX, C_EX,
			Z_EX, wb_control_EX, staller_wr
			,valid_out_EX, C_out_EX, Z_out_EX, wb_control_out_EX,
			valid_MEM, C_MEM, Z_MEM, wb_control_MEM,valid_out_MEM, C_out_MEM, Z_out_MEM, wb_control_out_MEM, flush, match,
			Addr_cmp1, Addr_cmp2, Addr_cmp3, Addr_cmp4, Addr_cmp5, Addr_cmp6, JMP_EN, ALU_EN, ALU_C, ALU_Z, WB_ENABLE  : STD_LOGIC; 
	signal pc_IF, pc_2_IF, inst_IF, pc_out_IF, pc_2_out_IF, inst_out_IF, pc_ID, pc_2_ID, immd_ID, inst_ID, pc_out_ID, pc_2_out_ID, 
			inst_out_ID, pc_RR, pc_2_RR, inst_RR, pc_out_RR, pc_2_out_RR, inst_out_RR, D1_RR, D2_RR, D1_out_RR, D2_out_RR,
			pc_EX, pc_2_EX, inst_EX, pc_out_EX, pc_2_out_EX, inst_out_EX, D1_EX, D3_EX, D1_out_EX, D3_out_EX, 
			pc_MEM, pc_2_MEM, inst_MEM, pc_out_MEM, pc_2_out_MEM, inst_out_MEM, D3_MEM, D3_out_MEM, PC_Din, PC_next,PC_Dout, 
			branch_addr, PC_M2_out, alu_1_out, R1_ALU_OPDR_SEL, R2_ALU_OPDR_SEL, RA_ALU, RB_ALU, Imm16, RF_D1
			, RF_D2, ALU_OUTP: std_logic_vector(15 downto 0);
	signal cond_ID, cond_out_ID, cond_RR, cond_out_RR, cond_EX, cond_out_EX, cond_MEM, cond_out_MEM, ALU_OP: std_logic_vector(1 downto 0);
	signal AD1_ID, AD2_ID, AD3_ID, AD1_out_ID, AD2_out_ID, AD3_out_ID, AD1_RR, AD2_RR, AD3_RR, AD1_out_RR, AD2_out_RR, AD3_out_RR,
			AD3_EX, AD3_out_EX, AD3_MEM, AD3_out_MEM, x, y: std_logic_vector(2 downto 0);
	signal immd_RR, immd_out_RR, immd_EX, immd_out_EX, immd_MEM, immd_out_MEM: std_logic_vector(9 downto 0);
	signal data_mem_out, data_mem_addr, data_mem_in : std_logic_vector(15 downto 0);
	signal data_mem_wr std_logic;
BEGIN
	LUT_FLUSH: LUT
				port map(flush => flush, match => match, branch_addr => branch_addr, PC_RR => pc_out_RR, PC_EXE => pc_out_EX, PC_PRED => PC_next, clk => clock, IF_M1_OUT => PC_M2_out );
	PC: pipe_reg
		generic map(16)
		port map(clk => clock, clr => reset, wr_enable => '1', Din => PC_Din, Dout => PC_Dout );
	alu_1 : ALU_1
		port map(a => PC_M2_out, c => alu_1_out);	
	PC_M2_out <= PC_Dout when (FLush = '0') else
				PC_next;
	PC_Din <= alu_1_out when(match = '0') else
				branch_addr;	
	code_mem: ram_mem
		port map(clock => clock, reset => reset, ram_address => PC_M2_out, ram_data_out => inst_IF);
	sign_extender: sel_sign_extender
		port map(inp => immd_out_RR, outp => );
	Alu_Oprd_sel : ALU_Oprd_Sel
		port map(RA => R1_ALU_OPDR_SEL, RB => R2_ALU_OPDR_SEL, OPR1 => RA_ALU, OPR2 => RB_ALU, PC => pc_out_RR, immediate => Imm16, 
			opcode => inst_out_RR(15 downto 12));

	Prio_mux_1: priority_mux
		port map(inp1 => D3_out_MEM, inp2 => D3_out_MEM, inp3 => D1_out_RR, sel => x , output => R1_ALU_OPDR_SEL);
	Addr_cmp_1: Addr_cmp
		port map(addr1 => AD1_out_RR, addr2 => AD3_out_EX, output_match => Addr_cmp1);
	x(1 downto 1) <= wb_control_out_MEM and Addr_cmp1;
	Addr_cmp_2 : Addr_cmp
		port map(addr1 => AD1_out_RR, addr2 => AD3_out_MEM, output_match => Addr_cmp2);
	x(0 downto 0) <= wb_control_out_MEM and Addr_cmp2;


	Prio_mux_2: priority_mux
		port map(inp1 => D3_out_MEM, inp2 => D3_out_MEM, inp3 => D2_out_RR, sel => y , output => R2_ALU_OPDR_SEL);
	Addr_cmp_3: Addr_cmp
		port map(addr1 => AD2_out_RR, addr2 => AD3_out_EX, output_match => Addr_cmp3);
	y(1 downto 1) <= wb_control_out_MEM and Addr_cmp3;
	Addr_cmp_4 : Addr_cmp
		port map(addr1 => AD2_out_RR, addr2 => AD3_out_MEM, output_match => Addr_cmp4);
	y(0 downto 0) <= wb_control_out_MEM and Addr_cmp4;


	Addr_cmp_5 : Addr_cmp
		port map(addr1 => AD1_out_ID, addr2 => AD3_out_MEM, output_match => Addr_cmp5);
	x(3 downto 3) <= wb_control_out_MEM and Addr_cmp5;
	D1_RR <= RF_D1 when(x(3) = '0') else
			D3_out_MEM;
	
	Addr_cmp_6 : Addr_cmp
		port map(addr1 => AD2_out_ID, addr2 => AD3_out_MEM, output_match => Addr_cmp6);
	y(3 downto 3) <= wb_control_out_MEM and Addr_cmp6;
	D2_RR <= RF_D2 when(y(3) = '0') else
			D3_out_MEM;
	alu_oper_sel: ALU_Oper_Sel
		port map(opcode => inst_out_RR(15 downto 12), alu_en => ALU_EN, alu_op => ALU_OP, condn => cond_out_RR);
	
	WB_WR_EN : write_enable
			port map(opcode => inst_out_RR(15 downto 12), condn => cond_out_RR , C => ALU_C, Z => ALU_Z, WB_enable => WB_ENABLE);
	main_alu: alu
			port map(opr1 => RA_ALU, opr2 => RB_ALU, dest => ALU_OUTP, sel => ALU_OP, enable => ALU_EN,  C => ALU_C, Z => ALU_Z );
	pc_predictor: pc_pred 
			port map(pc_2 => pc_2_out_RR, RB => R2_ALU_OPDR_SEL, alu_out => ALU_OUTP, opcode=> inst_out_RR(15 downto 12), 
						jump_enable => JMP_EN, pc_next => PC_next);
	BEQ_JCHECK: BEQ_jcheck
			port map(RA => R1_ALU_OPDR_SEL, RB => R2_ALU_OPDR_SEL, jump_enable => JMP_EN);



----------- Component Declaration
	IF_ID_pipe : pipe_IFD
		port map(pc=>pc_IF, pc_2=>pc_2_IF, inst=>inst_IF, valid=>valid_IF, clk => clock, clear=>(flush or reset), write_enable=>staller_wr, 
		valid_out=>valid_out_IF, pc_out=>pc_out_IF, pc_2_out=>pc_2_out_IF, inst_out=>inst_out_IF);
	ID_RR_pipe : pipe_IDRR
		port map(pc=>pc_out_IF, pc_2=>pc_2_out_IF, inst=>inst_out_IF,valid=>valid_out_IF,clk => clock,cond=>cond_ID,AD1=>AD1_ID, AD2=>AD2_ID, AD3=>AD3_ID,
		write_enable=> staller_wr,clear=>(flush or reset), immd => immd_ID,
		valid_out=>valid_out_ID,cond_out=>cond_out_ID, 
		AD1_out => AD1_out_ID, AD2_out => AD2_out_ID, AD3_out => AD3_out_ID, pc_out=> pc_out_ID, pc_2_out=>pc_2_out_ID, inst_out => inst_out_ID);
	RR_EXE_pipe : pipe_RREX
		port map(pc=>pc_out_ID, pc_2=>pc_2_out_ID, inst=>inst_out_ID,valid=>valid_out_ID,clk => clock, cond=>cond_out_ID,
		AD1=> AD1_out_ID, AD2=> AD2_out_ID, AD3=> AD3_out_ID, write_enable => '1', 
		D1=>D1_RR, D2=> D2_RR, immd=>immd_out_ID, clear=> (reset or (not (staller_wr))), 
		D1_out => D1_out_RR, D2_out => D2_out_RR, immd_out => immd_out_RR,
		valid_out=>valid_out_RR,cond_out=>cond_out_RR,
		AD1_out => AD1_out_RR, AD2_out => AD2_out_RR, AD3_out => AD3_out_RR, pc_out=> pc_out_RR, pc_2_out=>pc_2_out_RR, inst_out => inst_out_RR);
	EXE_MEM_pipe : pipe_EXMEM
		port map(pc=>pc_out_RR, pc_2=>pc_2_out_RR, inst=>inst_out_RR,valid=>valid_out_RR,clk => clock, cond=>cond_out_RR,
		D1 => D1_out_RR, D3 => D3_EX, immd => immd_out_RR, C=>ALU_C , Z=>ALU_Z, wb_control => wb_control_EX, AD3=> AD3_out_RR, clear => reset, write_enable => 1,
		C_out => C_out_EX, Z_out => Z_out_EX, wb_control_out => wb_control_out_EX, cond_out => cond_out_EX, AD3_out => AD3_out_EX, D1_out => D1_out_EX, D3_out => D3_out_EX, immd_out => immd_out_EX,
		pc_out => pc_out_EX, pc_2_out => pc_2_out_EX, inst_out =>inst_out_EX
		);
		mi:mem_interfacer
			port map( opcode=> inst_out_EX, Exe_d3=> D3_out_EX, Exe_d1=> D1_out_EX, Mem_out=> data_mem_out, WB_d3=> , Mem_in=> data_mem_in, Mem_wr=> data_mem_wr, Mem_addr=> data_mem_addr);
	D3_EX <= pc_2_out_RR when (inst_out_RR(15 downto 12) = "1001" or inst_out_RR(15 downto 12) = "1010") else
			ALU_OUTP;
end flow;