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
            clock, wr_enable, clear: in std_logic;
            regbank_out : out regBank
    );
end entity;
--- Writing is done at clock edges and changes to wr_enable signal
architecture beh of registerFile is
    signal registers : regBank;
begin
    data_out1 <= registers(to_integer(unsigned(addr_out1)));
    data_out2 <= registers(to_integer(unsigned(addr_out2)));
    reg7_out <= registers(numRegs-1);
    regbank_out <= registers;
    regProcess : process (clock, wr_enable, clear) is
    begin
        if(wr_enable = '1') then
            registers(to_integer(unsigned(addr_in))) <= data_in;
        end if;
		  if(clear = '1') then
            registers(0) <= "0000000000000001";
            registers(1) <= "0000000000000011";
            registers(2) <= (others => '0');
            registers(3) <= (others => '0');
            registers(4) <= (others => '0');
            registers(5) <= (others => '0');
            registers(6) <= (others => '0');
            registers(7) <= (others => '0');
        end if;
    end process;
end beh;