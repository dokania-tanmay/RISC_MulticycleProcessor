library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

library work;
use work.basic.all;
use work.add.all;

entity data_path is
  port (
    clock : in std_logic,
    T : in std_logic_vector( ?? downto 0)
  ) ;
end data_path;

architecture flow of data_path is
    component sign_extender is
        generic(inSize: integer;
                outSize: integer);
        port(   inp: in std_logic_vector(inSize-1 downto 0);
                outp: out std_logic_vector(outSize-1 downto 0));
    end component;

    component register is
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
                clock, wr_enable, clear: in std_logic
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
        cclock: IN   std_logic;
        ram_data_in:  IN   std_logic_vector (15 DOWNTO 0);
        ram_address:  IN   std_logic_vector(ceil(log2(real(numRegs))))-1 downto 0);
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
    ins_register: register
        generic map(16)
        port map(clock => clock, wr_enable => ir_wr, clear => ir_clr, din => ir_din, dout => ir_dout);
    
    temp1 : register
        port map(clock => clock, wr_enable => t1_wr, clear => t1_clr, din => t1_din, dout => t1_dout);
    temp2 : register
        port map(clock => clock, wr_enable => t2_wr, clear => t2_clr, din => t2_din, dout => t2_dout);
    temp3 : register
        port map(clock => clock, wr_enable => t3_wr, clear => t3_clr, din => t3_din, dout => t3_dout);
    temp4 : register
        port map(clock => clock, wr_enable => t4_wr, clear => t4_clr, din => t4_din, dout => t4_dout);
    
    reg_file : registerFile
        generic map(16,8)
        port map(addr_out1 => rf_add1, addr_out2 => rf_add2, addr_in => rf_addin, data_out1=> rf_dout1, 
                data_out2 => rf_dout2, reg7_out => r7_out, data_in => rf_din, clock => clock, wr_enable => rf_wr, clear => rf_clr);
    
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
    ram_addr <= t3_dout when (T(0) = "0") else
                r7_out;
    
end flow;