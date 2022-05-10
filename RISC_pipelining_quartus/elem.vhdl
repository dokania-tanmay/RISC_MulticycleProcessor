library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

-- Package Declarations
package elem is
    type regBank is array(0 to 7) of std_logic_vector(15 downto 0);
end package;
