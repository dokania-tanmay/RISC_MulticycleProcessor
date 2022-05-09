library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity Addr_cmp is

	port(

		addr1: in std_logic_vector(2 downto 0);
                addr2: in std_logic_vector(2 downto 0);
                output_match: out std_logic

                );
		
end entity;


architecture comparator of Addr_cmp is
begin

  comp:
  process(addr1,addr2)
  begin
  
   if addr1(2 downto 0) = addr2(2 downto 0) then
        output_match <= '1';
        
   else
       
        output_match <= '0';
        
   end if;
 
 end process;
     

        
        
  
		 
              

       
end architecture;