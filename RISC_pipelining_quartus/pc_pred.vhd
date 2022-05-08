library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity pc_pred is

	port(
		pc_2, RB, alu_out: in std_logic_vector(15 downto 0);
		opcode: in std_logic_vector(3 downto 0);
                jump_enable: in std_logic;
                pc_next: out std_logic_vector(15 downto 0)
                );
		
end entity;


architecture prediction of pc_pred is
begin
     
     pred:
     process(opcode, jump_enable, alu_out, pc_2, RB)
     begin
       
       case opcode is 
             when "1010" =>
                pc_next(15 downto 0) <= RB(15 downto 0);
                
             when "1000" =>
                if (jump_enable = '0') then
                    pc_next(15 downto 0) <= pc_2(15 downto 0);
                else
                    pc_next(15 downto 0) <= alu_out(15 downto 0);
                    
                 end if ;
             when "1011" | "1001" =>
                    pc_next(15 downto 0) <= alu_out(15 downto 0);
                    
             when others => pc_next(15 downto 0) <= pc_2(15 downto 0) ;

				  
	    end case;
		 

		 
              
     end process ;
       
  end architecture;
        
              
                      
                 
                     
                 
             
       
          