LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

LIBRARY work;
USE work.ALL;

entity ALU_1 is
    port(a: in std_logic_vector(15 downto 0); 
        c : out std_logic_vector(15 downto 0));
end entity;

architecture str of ALU_1 is
    begin
        c <= STD_LOGIC_VECTOR(unsigned(a) + 1);
    end str;