library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library work;
use work.elem.all;

-- Input
    -- Inc          =   Increase to the next register value
    -- IR(7 to 0)   =   8 bit information regarding each register 
    -- RESET        =   Reset all parameters to 0

-- Output
    -- Valid        =   1 bit flag. Loop execution is going on (valid = 1) or loop has completed (valid = 0)
    -- Address      =   3-bit address corresponding to each register
    -- wr           =   1 bit to enable write operation to the register file

entity lsm is
    port (
        inc, reset, clock : in std_logic;
        insReg : in std_logic_vector(7 downto 0);
        valid, wr : out std_logic;
        addr : out std_logic_vector(2 downto 0)
    );
end lsm;

architecture beh of lsm is
    signal num : std_logic_vector(2 downto 0);
begin
    addr <= num;
    inc_num : process (inc, reset) is
    begin
        if (inc = '1') then
            if unsigned(num) = 7 then
                num <= std_logic_vector( to_unsigned( 0,3));
                valid <= '0';
            else 
                num <= std_logic_vector(unsigned(num)+1);
                valid <= '1';
            end if;
        end if;
        if (reset = '1') then
            num <= std_logic_vector( to_unsigned( 0,3));
        end if;
    end process;
    wr <= insReg(to_integer(unsigned(num)));
end beh;
