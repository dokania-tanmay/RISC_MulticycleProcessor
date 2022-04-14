library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library work;
use work.elem.all;
--- Operations
--- 00 = NAND
--- 01 = XOR
--- 10 = ADD
--- 11 = Not assigned
entity alu is 
	generic(
		operand_width : integer:= 16;
		sel_line: integer:= 2
	);
	port (
		opr1: in std_logic_vector(operand_width-1 downto 0);
		opr2: in std_logic_vector(operand_width-1 downto 0);
		dest: out std_logic_vector(operand_width-1 downto 0);
		sel: in std_logic_vector(operand_width-1 downto 0);
		C, Z: out std_logic
	);
end alu;

architecture beh of alu is
	--- Addition Function
	function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0)) 
	return std_logic_vector is
				variable sum: std_logic_vector(operand_width downto 0);
				variable carry: std_logic_vector(operand_width-1 downto 0);
				variable i : integer;
		begin
				sum(0) := A(0) xor B(0);
				carry(0) := A(0) AND B(0);
				summingBitwise: for i in 1 to operand_width-1 loop
					sum(i) := ( A(i) xor B(i) ) xor carry(i-1);
					carry(i) := (A(i) and B(i) ) or ( B(i) and carry(i-1) ) or ( A(i) and carry(i-1) );
				end loop;
				sum(operand_width) := carry(operand_width-1);
			return sum;
	end function add;
	


	signal add_temp : std_logic_vector(operand_width downto 0);
   signal dest_temp : std_logic_vector(operand_width-1 downto 0); --(Aayush) directly using or reduce is giving some error for zero flag 
                                                                  -- added a signal for that
begin
	add_temp <= add(opr1, opr2);

	main: process(opr1,opr2,sel)
	begin
		if unsigned(sel) = 0 then
			dest <= opr1 nand opr2;
			dest_temp <= opr1 nand opr2;

		elsif unsigned(sel) = 1 then
			dest <= opr1 xor opr2;
			dest_temp <= opr1 xor opr2;

		elsif unsigned(sel) = 2 then
			dest <= add_temp(operand_width-1 downto 0);-- ADD
			dest_temp <= add_temp(operand_width-1 downto 0);-- ADD

			C <= add_temp(operand_width);
		end if;

	end process;

-- OR all bits and write in Z
	Z <= or_reduce(dest_temp);
end beh;
