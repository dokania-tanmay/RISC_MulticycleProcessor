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
            clock : in std_logic;
            T : in std_logic_vector(29 downto 0);
            flags: out std_logic_vector(2 downto 0);
            op_code: out std_logic_vector(3 downto 0);
            condition: out std_logic_vector(1 downto 0);
            regs_out : out regBank
          ) ;
    end component;
    component state_transition is

    end component;

-- Signals
begin


end complete;