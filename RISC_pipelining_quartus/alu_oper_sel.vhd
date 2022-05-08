library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity alu_oper_sel is

	port(
		opcode: in std_logic_vector(3 downto 0);
		RA: in std_logic_vector(15 downto 0);
                RB: in std_logic_vector(15 downto 0);
                immediate: in std_logic_vector(15 downto 0); 
                PC: in std_logic_vector(15 downto 0);
                OPR1: out std_logic_vector(15 downto 0);
                OPR2: out std_logic_vector(15 downto 0)
                );
		
end entity;


architecture controller of alu_oper_sel is
           
        
begin
     
     operand_select:
     process(opcode,RA,RB,immediate,PC)
     begin
       
       case opcode is 
             when "0000" | "1011" =>
                 OPR1 <= RA;
                 OPR2 <= immediate;
             when "0111" | "0101" =>
                 OPR1 <= RB;
                 OPR2 <= immediate;
                 
             when "1000" | "1001" =>
                 OPR1 <= PC;
                 OPR2 <= immediate;
             when others =>
                 OPR1 <= RA;
                 OPR2 <= RB;
                 
        end case;
        
        
  
		 
              
     end process ;
       
  end architecture;