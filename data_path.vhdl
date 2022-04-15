library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

library work;
use work.basic.all;
use work.add.all;

entity data_path is
  port (
    
  ) ;
end data_path;
--- Control Signals

-- Instruction Register
----- wr_enable in

-- LSM
----- INC       in
----- RESET     in
----- wr        out
----- valid     out


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
            input: in std_logic_vector(input_length-1 downto 0);   
            output: out std_logic_vector(output_length-1 downto 0)
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

    -- Define RAM component
    -- Define Signals
    
begin


end flow;