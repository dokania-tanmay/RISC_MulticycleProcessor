library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;
---- Reset mapping needs to be done
entity data_path is
  port (
    clock, reset : in std_logic;
    T : in std_logic_vector(29 downto 0);
    flags: out std_logic_vector(2 downto 0);
	op_code: out std_logic_vector(3 downto 0);
	condition: out std_logic_vector(1 downto 0);
    regs_out : out regBank
  ) ;
end data_path;

architecture flow of data_path is
    component sign_extender is
        generic(inSize: integer;
                outSize: integer);
        port(   inp: in std_logic_vector(inSize-1 downto 0);
                outp: out std_logic_vector(outSize-1 downto 0));
    end component;

    component reg is
        generic(dataSize: integer := 16);
        port(   clock, wr_enable, clear: in std_logic;
                din: in std_logic_vector(dataSize-1 downto 0);
                dout: out std_logic_vector(dataSize-1 downto 0));
    end component;

    component left_shift is
        generic(
            input_length: integer := 9;        -- 9 bit input taken from immediate-9 field of the instruction
            output_length: integer := 16;      -- 16 bit output to be stored in the register
            shift_length: integer :=7);        -- 7 bit left shifter
        port(
            inp: in std_logic_vector(input_length-1 downto 0);
            outp: out std_logic_vector(output_length-1 downto 0)
                );
    end component;

    component registerFile is
        generic(
                dataSize: integer := 16;
                numRegs: integer := 8
        );
        port(
            addr_out1, addr_out2, addr_in: in std_logic_vector(integer(ceil(log2(real(numRegs))))-1 downto 0);
            data_out1, data_out2, reg7_out : out std_logic_vector(dataSize-1 downto 0);
            data_in : in std_logic_vector(dataSize-1 downto 0);
            clock, wr_enable, clear: in std_logic;
            regbank_out : out regBank
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

    component lsm is
        port (
            inc, reset, clock : in std_logic;
            insReg : in std_logic_vector(7 downto 0);
            valid, wr : out std_logic;
            addr : out std_logic_vector(2 downto 0)
        );
    end component;

    component ram_mem is
        port(
        clock: IN   std_logic;
        ram_data_in:  IN   std_logic_vector (15 DOWNTO 0);
        ram_address:  IN   std_logic_vector(15 downto 0);
        ram_write_enable:    IN   std_logic;
        ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0));
    -- Define RAM component
    -- Define Signals
    end component;

    -- 16 bit
    signal ram_dout, ram_din, ram_addr, ir_din, ir_dout, se9, se6, ls7_out, rf_dout1, rf_dout2, rf_din, r7_out, t1_din,
            t1_dout, t2_din, t2_dout, t3_din, t3_dout, t4_din, t4_dout, alu_a, alu_b, alu_c : std_logic_vector(15 downto 0);
    -- 3 bit
    signal rf_add1, rf_add2, rf_addin, ls_add : std_logic_vector(2 downto 0);
    -- 2 bit
    signal alu_sel : std_logic_vector(1 downto 0);
    -- 1 bit
    signal ram_wr, ir_wr, rf_wr, ir_clr, rf_clr, alu_ena, C, Z, lsm_inc, lsm_rst, lsm_vld, lsm_wr, t1_wr, t2_wr, t3_wr, t4_wr,
             t1_clr, t2_clr, t3_clr, t4_clr : std_logic;
begin
    ins_register: reg
        generic map(16)
        port map(clock => clock, wr_enable => ir_wr, clear => ir_clr, din => ir_din, dout => ir_dout);

    temp1 : reg
        port map(clock => clock, wr_enable => t1_wr, clear => t1_clr, din => t1_din, dout => t1_dout);
    temp2 : reg
        port map(clock => clock, wr_enable => t2_wr, clear => t2_clr, din => t2_din, dout => t2_dout);
    temp3 : reg
        port map(clock => clock, wr_enable => t3_wr, clear => t3_clr, din => t3_din, dout => t3_dout);
    temp4 : reg
        port map(clock => clock, wr_enable => t4_wr, clear => t4_clr, din => t4_din, dout => t4_dout);

    reg_file : registerFile
        generic map(16,8)
        port map(addr_out1 => rf_add1, addr_out2 => rf_add2, addr_in => rf_addin, data_out1=> rf_dout1,
                data_out2 => rf_dout2, reg7_out => r7_out, data_in => rf_din, clock => clock, wr_enable => rf_wr, clear => rf_clr, regbank_out => regs_out);

    se6_ent : sign_extender
        generic map(6,16)
        port map(inp => ir_dout(5 downto 0), outp => se6);

    se9_ent : sign_extender
        generic map(9,16)
        port map(inp => ir_dout(8 downto 0), outp => se9);

    left7 : left_shift
        port map(inp => ir_dout(8 downto 0), outp => ls7_out);

    alu_ent : alu
        port map(opr1 => alu_a, opr2 => alu_b, dest => alu_c, sel => alu_sel, enable => alu_ena, C => C, Z => Z);
 
    lsm_hw : lsm
        port map(inc => lsm_inc, reset => lsm_rst, clock => clock, insReg => ir_dout(7 downto 0), valid => lsm_vld, wr => lsm_wr, addr => ls_add);

    ram_memory : ram_mem
        port map(ram_data_out => ram_dout, clock => clock, ram_data_in => ram_din, ram_write_enable => ram_wr, ram_address => ram_addr);






--- Need to map register clears
--- Register File has no clear operation yet
    ram_addr <= t3_dout when (T(0) = '0') else
                r7_out;
    ram_wr  <= T(2) when (T(1) = '0') else
               lsm_wr;
    ram_din <= t2_dout when (T(3) = '0') else
               t3_dout;
    rf_wr   <= T(5) when (T(4) = '0') else
               lsm_wr;
    rf_add1 <= ir_dout(11 downto 9);
    
    rf_add2 <= ls_add when (T(6) = '0') else
                ir_dout(8 downto 6);
    rf_addin <= ir_dout(5 downto 3) when ((T(29)) & (T(8 downto 7)) = "000")
                else
                    ir_dout(11 downto 9) when( T(29) & T(8 downto 7) = "001" )
                else
                    "111" when( T(29) & T(8 downto 7) = "011" )
                else
                    ls_add when( T(29) & T(8 downto 7) = "010" )
                else 
                    ir_dout(8 downto 6);
    rf_din <=   t3_dout when( T(10 downto 9) ="00") else
                t4_dout when( T(10 downto 9) = "01") else
                ls7_out when( T(10 downto 9) = "10") else
                t2_dout; 
	 t1_wr <= T(11); 
    t2_wr <= T(12);                                     
    t3_wr <= T(13);
    t4_wr <= T(14);
    alu_ena <= T(16);
    alu_b <= "0000000000000001" when( T( 18 downto 17) = "00") else
                se6 when( T( 18 downto 17) = "01") else
                se9 when( T( 18 downto 17) = "10") else
                t2_dout; 
    t3_din <= rf_dout1 when( T(19) = '0') else
                alu_c;
    t1_din <= rf_dout1 when( T(21 downto 20) = "00") else
                t3_dout when( T(21 downto 20) = "01") else
                r7_out;
    t4_din <= t3_dout when( T(23 downto 22) = "00") else
               rf_dout2 when( T(23 downto 22) = "01") else
               ram_dout;
    lsm_rst <= T(24);
    lsm_inc <= T(25);
    alu_sel <= T(27 downto 26);
    rf_add1 <= ir_dout(11 downto 9);

    flags(2) <= Z;
    flags(1) <= C;
    flags(0) <= lsm_vld;
	 
	 op_code <= ir_dout(15 downto 12);
	 condition <= ir_dout(1 downto 0);
    

end flow;
