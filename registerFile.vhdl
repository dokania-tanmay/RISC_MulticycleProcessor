library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;

entity registerFile is
    generic(
            dataSize: integer := 16;
            numRegs: integer := 8
    );
    port(
            addr_out1, addr_out2, addr_in: in std_logic_vector(integer(ceil(log2(real(numRegs))))-1 downto 0);
            data_out1, data_out2 : out std_logic_vector(dataSize-1 downto 0);
            data_in : in std_logic_vector(dataSize-1 downto 0);
            clock, wr_enable, clear: in std_logic)
    );
end entity;

architecture beh of registerFile is





end beh;