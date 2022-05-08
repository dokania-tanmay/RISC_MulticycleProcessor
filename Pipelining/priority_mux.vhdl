library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.all;

entity priority_mux is
    port(inp1,  inp2, inp3: in std_logic_vector(15 downto 0),
        sel: in std_logic_vector(1 downto 0),
        output: std_logic_vector(15 downto 0));
end entity;

architecture beh of priority_mux is
begin
    if sel = "00" then
        output <= inp1;
    elsif sel = "01" then
        output <= inp2;
    elsif sel = "10" then
        output <= inp3;
    end if;    
end beh;

