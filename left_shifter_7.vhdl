-- Title				: Left Shifter
-- Purpose				: To left shift the given input by specified amount
-- Brief Description	: 
-- Author				: Aayush M Gopal
-- Date					: April. 14, 2022


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;

entity left_shift is

	generic(
		input_length: integer := 9;        -- 9 bit input taken from immediate-9 field of the instruction  
		output_length: integer := 16;      -- 16 bit output to be stored in the register
		shift_length: integer :=7);        -- 7 bit left shifter
		
	port(
		input: in std_logic_vector(input_length-1 downto 0);   
		output: out std_logic_vector(output_length-1 downto 0)
            );
            
end entity;

architecture shift_7 of left_shift is
	signal output_temp: std_logic_vector(output_length-1 downto 0);
begin

	main: process(input)
	begin
		output_temp <= (others => '0');    -- setting the output_temp to '000000000000000' intially 

		
		for i in output_length-1 downto shift_length loop   -- here the most significant 7 bits are set to the input provided rest are not changed so remains 0 
		        output_temp(i) <= input(i-shift_length);
		end loop;
	end process;
	
	output <= output_temp;

	
end architecture;
		
		
