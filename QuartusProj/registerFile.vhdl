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
            data_out1, data_out2, reg7_out : out std_logic_vector(dataSize-1 downto 0);
            data_in : in std_logic_vector(dataSize-1 downto 0);
            clock, wr_enable, clear: in std_logic
    );
end entity;
--- Writing is done at clock edges and changes to wr_enable signal
architecture beh of registerFile is
    type regBank is array(0 to numRegs-1) of std_logic_vector(dataSize-1 downto 0);
    signal registers : regBank;
begin
    data_out1 <= registers(to_integer(unsigned(addr_out1)));
    data_out2 <= registers(to_integer(unsigned(addr_out2)));
    reg7_out <= registers(numRegs-1);
    regProcess : process (clock, wr_enable) is
    begin
        if(wr_enable = '1') then
            registers(to_integer(unsigned(addr_in))) <= data_in;
        end if;
    end process;
end beh;