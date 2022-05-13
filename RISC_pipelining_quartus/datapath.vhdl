LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

LIBRARY work;
USE work.elem.ALL;
use work.all;

ENTITY datapath IS
	PORT (
		reset, clock : IN STD_LOGIC;
		output_bank: out regBank
	);
END datapath;

LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;


LIBRARY work;
USE work.ALL;

ARCHITECTURE flow OF datapath IS
--type regBank is array(0 to 7) of std_logic_vector(15 downto 0);

component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;

component registerFile is
    generic(
            dataSize: integer := 16;
            numRegs: integer := 8
    );
    port(
            addr_out1, addr_out2, addr_in: in std_logic_vector(integer(ceil(log2(real(numRegs))))-1 downto 0);
            data_out1, data_out2: out std_logic_vector(dataSize-1 downto 0);
            data_in : in std_logic_vector(dataSize-1 downto 0);
            clock, wr_enable, clear: in std_logic;
            regbank_out : out regBank
    );
end component;

component ram_mem IS
	PORT
   (
    clock: IN   std_logic;
    ram_address:  IN   std_logic_vector(15 downto 0);
    ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0);
	 reset : in std_logic
	 );
   
END component;

component pipe_IFD is
	port(
		pc, pc_2, inst : in std_logic_vector(15 downto 0);
		valid: in std_logic;
		clk: in std_logic;
			clear: in std_logic;
		write_enable: in std_logic;
		valid_out: out std_logic;
				pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
				);

   end component;

component pipe_IDRR is
	port(
		pc, pc_2, inst : in std_logic_vector(15 downto 0);
		valid: in std_logic;
		clk, clear: in std_logic;
		cond: in std_logic_vector(1 downto 0);
		immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
		AD1, AD2, AD3: in std_logic_vector(2 downto 0);
					write_enable: in std_logic;
		valid_out: out std_logic;
		cond_out: out std_logic_vector(1 downto 0);
		immd_out: out std_logic_vector(9 downto 0);
		AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
				   pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0));

   end component;

component pipe_RREX is
	port(
		pc, pc_2, inst : in std_logic_vector(15 downto 0);
		D1, D2 : in std_logic_vector(15 downto 0);
		immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
		valid: in std_logic;
		clk: in std_logic;
		cond: in std_logic_vector(1 downto 0);
		AD1, AD2, AD3: in std_logic_vector(2 downto 0);
		clear: in std_logic;
		write_enable: in std_logic;
		valid_out: out std_logic;
		cond_out: out std_logic_vector(1 downto 0);
		AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
		D1_out, D2_out : out std_logic_vector(15 downto 0);
		immd_out: out std_logic_vector(9 downto 0);
		pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
		);

   end component;

component pipe_EXMEM is
	port(
		pc, pc_2, inst : in std_logic_vector(15 downto 0);
		D1, D3 : in std_logic_vector(15 downto 0);
		immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
		valid, C, Z, wb_control: in std_logic;
		clk: in std_logic;
		cond: in std_logic_vector(1 downto 0);
		AD3: in std_logic_vector(2 downto 0);
		clear: in std_logic;
					write_enable: in std_logic;
		valid_out, C_out, Z_out, wb_control_out: out std_logic;
		cond_out: out std_logic_vector(1 downto 0);
		AD3_out: out std_logic_vector(2 downto 0);
		D1_out, D3_out : out std_logic_vector(15 downto 0);
		immd_out: out std_logic_vector(9 downto 0);
		pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
		);

   end component;

component pipe_MEMWB is
	port(
		pc, pc_2, inst : in std_logic_vector(15 downto 0);
		D3: in std_logic_vector(15 downto 0);
		immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
		valid, C, Z, wb_control: in std_logic;
		clk: in std_logic;
		cond: in std_logic_vector(1 downto 0);
			AD3: in std_logic_vector(2 downto 0);
		clear: in std_logic;
					write_enable: in std_logic;
		valid_out, C_out, Z_out, wb_control_out: out std_logic;
		cond_out: out std_logic_vector(1 downto 0);
			AD3_out: out std_logic_vector(2 downto 0);
		D3_out: out std_logic_vector(15 downto 0);
		immd_out: out std_logic_vector(9 downto 0);
		pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
		);

   end component;

COMPONENT priority_mux IS
PORT (
	inp1, inp2, inp3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END COMPONENT;
COMPONENT LUT IS

PORT (
	IF_M1_OUT, PC_EXE, PC_PRED, PC_RR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk, reset, RR_EX_valid : IN STD_LOGIC;
	match, fush : OUT STD_LOGIC;
	Branch_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);

END COMPONENT;



component staller is
	port(   opcode: in std_logic_vector(3 downto 0);
                AD1_ID_RR:    in std_logic_vector(2 downto 0);
                AD2_ID_RR:    in std_logic_vector(2 downto 0);
                AD3_RR_EX:    in std_logic_vector(2 downto 0);
                clk, reset:    in std_logic;
                wr_en:  out std_logic
                
		);

end component;

component mem_interfacer is
	port( 
		opcode: in std_logic_vector(3 downto 0);
		Exe_d3: in std_logic_vector(15 downto 0);
		Exe_d1: in std_logic_vector(15 downto 0); 
      Mem_out: in std_logic_vector(15 downto 0);
		WB_d3: out std_logic_vector(15 downto 0);
		Mem_in: out std_logic_vector(15 downto 0);
		Mem_wr: out std_logic;
		Mem_addr: out std_logic_vector(15 downto 0)
		);
end component;

component cond_left_shift is

	port(
		immediate: in std_logic_vector(8 downto 0);
		opcode: in std_logic_vector(3 downto 0);
      d3: in std_logic_vector(15 downto 0);
      d3_out: out std_logic_vector(15 downto 0)
                );
		
end component;

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

component data_mem IS
	PORT
   (
    clock: IN   std_logic;
    ram_data_in:  IN   std_logic_vector (15 DOWNTO 0);
    ram_address:  IN   std_logic_vector(15 downto 0);
    ram_write_enable:    IN   std_logic;
    ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0);
	 reset : in std_logic
	 );
   
END component;
 component inst_dec is
	port(
		inst: in std_logic_vector(15 downto 0);

		opcode: out std_logic_vector(3 downto 0); 

		CZ: out std_logic_vector(1 downto 0);
		AD1, AD2, AD3: out std_logic_vector(2 downto 0);
		immediate: out std_logic_vector(9 downto 0)
		);
end component;

component alu is 
	generic(
		operand_width : integer:= 16;
		sel_line: integer:= 2
	);
	port (
		opr1: in std_logic_vector(operand_width-1 downto 0);
		opr2: in std_logic_vector(operand_width-1 downto 0);
		dest: out std_logic_vector(operand_width-1 downto 0);
		sel: in std_logic_vector(sel_line-1 downto 0);
		enable: in std_logic;
		C, Z: out std_logic
	);
end component;

component ALU_1 is
	    port(a: in std_logic_vector(15 downto 0); 
        c : out std_logic_vector(15 downto 0));
END component;

	signal WR_RR, WR_EX, WR_MEM, valid_IF, valid_out_IF, valid_ID, valid_out_ID, valid_RR, valid_out_RR, valid_EX, C_EX,
			Z_EX, wb_control_EX, staller_wr
			,valid_out_EX, C_out_EX, Z_out_EX, wb_control_out_EX,
			valid_MEM, C_MEM, Z_MEM, wb_control_MEM,valid_out_MEM, C_out_MEM, Z_out_MEM, wb_control_out_MEM, flush, match,
			Addr_cmp1, Addr_cmp2, Addr_cmp3, Addr_cmp4, Addr_cmp5, Addr_cmp6, JMP_EN, ALU_EN, ALU_C, ALU_Z, 
			WB_ENABLE, data_mem_wr, flsh_rst, rst_stall: STD_LOGIC := '0'; 
	signal pc_IF, pc_2_IF, inst_IF, pc_out_IF, pc_2_out_IF, inst_out_IF, pc_ID, pc_2_ID, inst_ID, pc_out_ID, pc_2_out_ID, 
			inst_out_ID, pc_RR, pc_2_RR, inst_RR, pc_out_RR, pc_2_out_RR, inst_out_RR, D1_RR, D2_RR, D1_out_RR, D2_out_RR,
			pc_EX, pc_2_EX, inst_EX, pc_out_EX, pc_2_out_EX, inst_out_EX, D1_EX, D3_EX, D1_out_EX, D3_out_EX, 
			pc_MEM, pc_2_MEM, inst_MEM, pc_out_MEM, pc_2_out_MEM, inst_out_MEM, D3_MEM, D3_out_MEM, PC_Din, PC_next,PC_Dout, 
			branch_addr, R1_ALU_OPDR_SEL, R2_ALU_OPDR_SEL, RA_ALU, RB_ALU, Imm16, RF_D1
			, RF_D2, RF_D3, ALU_OUTP: std_logic_vector(15 downto 0) := (others => '0');
	signal cond_ID, cond_out_ID, cond_RR, cond_out_RR, cond_EX, cond_out_EX, cond_MEM, cond_out_MEM, ALU_OP: std_logic_vector(1 downto 0) := (others => '0') ;
	signal AD1_ID, AD2_ID, AD3_ID, AD1_out_ID, AD2_out_ID, AD3_out_ID, AD1_RR, AD2_RR, AD3_RR, AD1_out_RR, AD2_out_RR, AD3_out_RR,
			AD3_EX, AD3_out_EX, AD3_MEM, AD3_out_MEM, x, y: std_logic_vector(2 downto 0) := (others => '0');
	signal immd_ID, immd_out_ID, immd_RR, immd_out_RR, immd_EX, immd_out_EX, immd_MEM, immd_out_MEM: std_logic_vector(9 downto 0) := (others => '0');
	signal data_mem_out, data_mem_addr, data_mem_in : std_logic_vector(15 downto 0) := (others => '0');

BEGIN
	LUT_FLUSH: LUT
				port map(fush => flush, match => match, branch_addr => branch_addr, PC_RR => pc_out_ID, PC_EXE => pc_out_RR, 
				PC_PRED => PC_next, clk => clock, IF_M1_OUT => pc_IF, reset => reset, RR_EX_valid => valid_out_RR );
	PC: pipe_reg
		generic map(16)
		port map(clk => clock, clr => reset, wr_enable => '1', Din => PC_Din, Dout => PC_Dout );
	main_alu_1 : ALU_1
		port map(a => pc_IF, c => pc_2_IF);	
	pc_IF <= PC_Dout when (FLush = '0') else
				PC_next;
	PC_Din <= pc_2_IF when(match = '0') else
				branch_addr;	
	code_mem: ram_mem
		port map(clock => clock, reset => reset, ram_address => pc_IF, ram_data_out => inst_IF);
	sign_extender: sel_sign_extender
		port map(inp => immd_out_RR, outp => Imm16);
	Alu_Oprd_sel1 : ALU_Oprd_Sel
		port map(RA => R1_ALU_OPDR_SEL, RB => R2_ALU_OPDR_SEL, OPR1 => RA_ALU, OPR2 => RB_ALU, PC => pc_out_RR, immediate => Imm16, 
			opcode => inst_out_RR(15 downto 12));

	Prio_mux_1: priority_mux
		port map(inp1 => D3_out_MEM, inp2 => D3_out_MEM, inp3 => D1_out_RR, sel => x(1 downto 0) , output => R1_ALU_OPDR_SEL);
	Addr_cmp_1: Addr_cmp
		port map(addr1 => AD1_out_RR, addr2 => AD3_out_EX, output_match => Addr_cmp1);
	x(1) <= '1';----(wb_control_out_MEM and Addr_cmp1);
	Addr_cmp_2 : Addr_cmp
		port map(addr1 => AD1_out_RR, addr2 => AD3_out_MEM, output_match => Addr_cmp2);
	x(0) <= '1'; ----wb_control_out_MEM and Addr_cmp2;


	Prio_mux_2: priority_mux
		port map(inp1 => D3_out_MEM, inp2 => D3_out_MEM, inp3 => D2_out_RR, sel => y(1 downto 0) , output => R2_ALU_OPDR_SEL);
	Addr_cmp_3: Addr_cmp
		port map(addr1 => AD2_out_RR, addr2 => AD3_out_EX, output_match => Addr_cmp3);
	y(1) <= '1'; ----wb_control_out_MEM and Addr_cmp3;
	Addr_cmp_4 : Addr_cmp
		port map(addr1 => AD2_out_RR, addr2 => AD3_out_MEM, output_match => Addr_cmp4);
	y(0) <= '1';--------wb_control_out_MEM and Addr_cmp4;


	Addr_cmp_5 : Addr_cmp
		port map(addr1 => AD1_out_ID, addr2 => AD3_out_MEM, output_match => Addr_cmp5);
	x(2) <= wb_control_out_MEM and Addr_cmp5;
	D1_RR <= RF_D1 when(x(2) = '0') else
			D3_out_MEM;
	
	Addr_cmp_6 : Addr_cmp
		port map(addr1 => AD2_out_ID, addr2 => AD3_out_MEM, output_match => Addr_cmp6);
	y(2) <= wb_control_out_MEM and Addr_cmp6;
	D2_RR <= RF_D2 when(y(2) = '0') else
			D3_out_MEM;
	alu_oper_sel1: ALU_Oper_Sel
		port map(opcode => inst_out_RR(15 downto 12), alu_en => ALU_EN, alu_op => ALU_OP, condn => cond_out_RR);
	
	WB_WR_EN : write_enable
			port map(opcode => inst_out_RR(15 downto 12), condn => cond_out_RR , C => ALU_C, Z => ALU_Z, WB_enable => WB_ENABLE);
	main_alu: alu
			port map(opr1 => RA_ALU, opr2 => RB_ALU, dest => ALU_OUTP, sel => ALU_OP, enable => ALU_EN,  C => ALU_C, Z => ALU_Z );
	pc_predictor: pc_pred 
			port map(pc_2 => pc_2_out_RR, RB => R2_ALU_OPDR_SEL, alu_out => ALU_OUTP, opcode=> inst_out_RR(15 downto 12), 
						jump_enable => JMP_EN, pc_next => PC_next);
	BEQ_JCHECK1: BEQ_jcheck
			port map(RA => R1_ALU_OPDR_SEL, RB => R2_ALU_OPDR_SEL, jump_enable => JMP_EN);

	data_mem1: data_mem
		port map(clock => clock,
		ram_data_in => data_mem_in ,
		ram_address => data_mem_addr,
		ram_write_enable => data_mem_wr,
		ram_data_out => data_mem_out,
		 reset => reset);

	stl: staller
		port map(opcode=> inst_out_RR(15 downto 12), AD1_ID_RR=> AD1_out_ID, AD2_ID_RR=> AD2_out_ID,
				AD3_RR_EX =>  AD3_out_RR ,clk=> clock, reset=> reset,
			wr_en=> staller_wr);
	
	RF: registerFile
		port map(addr_out1 => AD1_out_ID, addr_out2 => AD2_out_ID, addr_in => AD3_out_MEM ,data_out1 => RF_D1, data_out2 => RF_D2,
		data_in => RF_D3, clock => clock, wr_enable => wb_control_out_MEM, clear => reset ,regbank_out => output_bank);
		 
----------- Component Declaration
	IF_ID_pipe : pipe_IFD
		port map(pc=>pc_IF, pc_2=>pc_2_IF, inst=>inst_IF, valid=>'1', clk => clock, clear=>flsh_rst, write_enable=>staller_wr, 
		valid_out=>valid_out_IF, pc_out=>pc_out_IF, pc_2_out=>pc_2_out_IF, inst_out=>inst_out_IF);
	ID_RR_pipe : pipe_IDRR
		port map(pc=>pc_out_IF, pc_2=>pc_2_out_IF, inst=>inst_out_IF,valid=>valid_out_IF,clk => clock,cond=>cond_ID,AD1=>AD1_ID, 
		AD2=>AD2_ID, AD3=>AD3_ID,
		write_enable=> staller_wr,clear=>flsh_rst, immd => immd_ID,
		valid_out=>valid_out_ID,cond_out=>cond_out_ID, 
		AD1_out => AD1_out_ID, AD2_out => AD2_out_ID, AD3_out => AD3_out_ID, pc_out=> pc_out_ID, pc_2_out=>pc_2_out_ID, 
		inst_out => inst_out_ID);
	RR_EXE_pipe : pipe_RREX
		port map(pc=>pc_out_ID, pc_2=>pc_2_out_ID, inst=>inst_out_ID,valid=>valid_out_ID,clk => clock, cond=>cond_out_ID,
		AD1=> AD1_out_ID, AD2=> AD2_out_ID, AD3=> AD3_out_ID, write_enable => '1', 
		D1=>D1_RR, D2=> D2_RR, immd=>immd_out_ID, clear=> rst_stall,
		D1_out => D1_out_RR, D2_out => D2_out_RR, immd_out => immd_out_RR,
		valid_out=>valid_out_RR,cond_out=>cond_out_RR,
		AD1_out => AD1_out_RR, AD2_out => AD2_out_RR, AD3_out => AD3_out_RR, pc_out=> pc_out_RR, pc_2_out=>pc_2_out_RR, 
		inst_out => inst_out_RR);
	
		rst_stall <= (reset or (not (staller_wr)));
		flsh_rst <= (flush or reset);
	EXE_MEM_pipe : pipe_EXMEM
		port map(pc=>pc_out_RR, pc_2=>pc_2_out_RR, inst=>inst_out_RR,valid=>valid_out_RR,clk => clock, cond=>cond_out_RR,
		D1 => D1_out_RR, D3 => D3_EX, immd => immd_out_RR, C=>ALU_C , Z=>ALU_Z, wb_control => wb_control_EX, AD3=> AD3_out_RR, 
		clear => reset, write_enable => '1',
		C_out => C_out_EX, Z_out => Z_out_EX, wb_control_out => wb_control_out_EX, cond_out => cond_out_EX, AD3_out => AD3_out_EX, 
		D1_out => D1_out_EX, D3_out => D3_out_EX, immd_out => immd_out_EX,
		pc_out => pc_out_EX, pc_2_out => pc_2_out_EX, inst_out =>inst_out_EX, valid_out => valid_out_EX
		);
	p_mem_wb:pipe_MEMWB
		port map(pc=> pc_out_EX, pc_2=> pc_2_out_EX, inst=> inst_out_EX, D3=> D3_MEM, immd=> immd_out_EX, valid=> valid_out_EX, 
		C=> C_out_EX, Z=> Z_out_EX, wb_control=> wb_control_out_EX,  clk=> clock, 
		cond=> cond_out_EX, AD3=> AD3_out_EX, clear=> reset, 
		write_enable=> '1', valid_out=> valid_out_MEM, C_out=> C_out_MEM, Z_out => Z_out_MEM, wb_control_out=> wb_control_out_MEM, 
		Cond_out => Cond_out_MEM, AD3_out=> AD3_out_MEM, D3_out=> D3_out_MEM, 
		immd_out=> immd_out_MEM, pc_out=> pc_out_MEM, pc_2_out=> pc_2_out_MEM, inst_out => inst_out_MEM);
	mi:mem_interfacer
		port map( opcode=> inst_out_EX(15 downto  12), Exe_d3=> D3_out_EX, Exe_d1=> D1_out_EX, Mem_out=> data_mem_out, 
		WB_d3=> D3_MEM, Mem_in=> data_mem_in, Mem_wr=> data_mem_wr, Mem_addr=> data_mem_addr);
	D3_EX <= pc_2_out_RR when (inst_out_RR(15 downto 12) = "1001" or inst_out_RR(15 downto 12) = "1010") else
			ALU_OUTP;
	id:inst_dec 
			port map(inst=> inst_out_IF, CZ=> cond_ID, AD1=> AD1_ID, AD2=> AD2_ID, AD3=> AD3_ID, immediate=>immd_ID);
	cls:cond_left_shift
			port map(immediate=> immd_out_MEM(8 downto 0),opcode=>inst_out_MEM(15 downto 12) ,d3=> D3_out_MEM,d3_out=> RF_D3);
	--PC_M2_out <= pc_IF;
	--alu_1_out <= pc_2_IF;
	WB_control_EX <= (WB_ENABLE and valid_out_RR);
			end flow;