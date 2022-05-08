library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity BEQ_jcheck is

	port(

		RA: in std_logic_vector(15 downto 0);
                RB: in std_logic_vector(15 downto 0);
                jump_enable: out std_logic

                );
		
end entity;


architecture jump_controller of BEQ_jcheck is
begin

  jump:
  process(RA,RB)
  begin
  
   if RA(15 downto 0) = RB(15 downto 0) then
        jump_enable <= '1';
        
   else
       
        jump_enable <= '0';
        
   end if;
 
 end process;
     

        
        
  
		 
              

       
end architecture;
