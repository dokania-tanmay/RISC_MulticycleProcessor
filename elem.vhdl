library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

-- Package Declarations
package elem is
    component register is
        generic(dataSize: integer := 16);
        port(   clock, wr_enable, clear: in std_logic;
                din: in std_logic_vector(dataSize-1 downto 0);
                dout: out std_logic_vector(dataSize-1 downto 0));
    end component;
    component sign_extender is
        generic(inSize: integer;
                outSize: integer);
        port(   inp: in std_logic_vector(inSize-1 downto 0);
                outp: out std_logic_vector(outSize-1 downto 0));
    end component;
end package;

-- Entity and Architecture Declarations
-- Register
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register is
    generic(dataSize:integer);
    port(   clock, wr_enable, clear: in std_logic;
            din: in std_logic_vector(dataSize-1 downto 0);
            dout: out std_logic_vector(dataSize-1 downto 0));
end entity;
-- To write on a register, set wr_enable pin and the value on din will written on dout on the next rising edge.
architecture regArch of reg is
begin
    process(clock, clear)
    begin -- Check
        if(clock'event and clock = '1' and wr_enable = '1') then
            dout <= din;
        end if;
        if(clear = '1') then
            dout <= (others => '0');
        end if;
    end process;
end regArch;


-- Sign Extender
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extender is
    generic(inSize: integer;
            outSize: integer);
    port(   inp: in std_logic_vector(inSize-1 downto 0);
            outp: out std_logic_vector(outSize-1 downto 0));
end entity;

architecture beh of sign_extender is
begin
    outp(inSize-1 downto 0) <= inp;
    padding: for i in inSize to outSize-1 generate
        outp(i) <= inp(inSize-1);
    end generate;
end beh;

-- Left Shift