library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.all;

entity oper_selec is
    port(opcode: in std_logic_vector(3 downto 0),
         condn: in std_logic_vector(1 downto 0),
         alu_op: out std_logic_vector(1 downto 0),
         alu_en: out std_logic);
end entity;

architecture beh of oper_selec is
begin
    if (opcode = "1000" or opcode = "1001" or opcode = "1011" or opcode = "0111" or opcode = "0101" 
        or opcode = "0000") then
            alu_op <= "10";
            alu_en <= '1';
    elsif (opcode = "0001") then
        if (codn = "00" or codn = "10" or codn = "01") then
            alu_op <= "10";
            alu_en <= '1';
        elsif codn = "11" then
            alu_op <= "11";
            alu_en <= '1';  
        end if;
    elsif (opcode = "0010") then
        alu_op <= "00";
        alu_en <= '1'; 
    elsif (opcode = "0100" or opcode = "1010") then
        alu_op <= "10";
        alu_en <= '0';
    end if;
end beh;

