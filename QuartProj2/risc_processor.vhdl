library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;

entity risc_processor is
    port (
        clock, reset : in std_logic;
        regs_out : out regBank
    );
end risc_processor;

architecture complete of risc_processor is
    component data_path is
        port (
            clock, reset : in std_logic;
            T : in std_logic_vector(29 downto 0);
            flags: out std_logic_vector(2 downto 0);
            op_code: out std_logic_vector(3 downto 0);
            condition: out std_logic_vector(1 downto 0);
            regs_out : out regBank
          ) ;
    end component;
    component state_transition is
        port(
            reset, clk: in std_logic; 
            opcode: in std_logic_vector(3 downto 0);
            C, Z, valid: in std_logic;
            condition: in std_logic_vector (1 downto 0);
            T: out std_logic_vector(29 downto 0)
            );
    end component;

-- Signals
        signal T : std_logic_vector(29 downto 0);
        signal flags : std_logic_vector(2 downto 0);
        signal op_code: std_logic_vector(3 downto 0);
        signal condition: std_logic_vector(1 downto 0);
        
begin
    prim_datapath : data_path
        port map(clock => clock, T => T, flags => flags, op_code => op_code, condition => condition, regs_out => regs_out, reset => reset);
    control_logic : state_transition
        port map(reset => reset, clk => clock, opcode => op_code, C => flags(1), Z => flags(2), valid => flags(0), condition => condition, T => T);

end complete;