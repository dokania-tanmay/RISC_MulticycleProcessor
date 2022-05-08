library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity write_enable is

	port(
		opcode: in std_logic_vector(3 downto 0);
		CZ: in std_logic_vector(1 downto 0);
                C,Z: in std_logic;
                WB_enable: out std_logic
                );
		
end entity;


architecture WB_enable_contol of write_enable is
    signal enable : std_logic ;       
        
begin
     
     update:
     process(opcode,CZ,C,Z)
     begin
       
       case opcode is 
             when "0001" | "0010" =>
                case CZ is when "01" => 
                      if (Z= '1') then enable <= '1';
                      else enable <= '0';
                      
                      end if;
                when "10" => 
                      if (C= '1') then enable <= '1';
                      else enable <= '0';
                      
                      end if;
					

                when others => enable <= '1';
					 end case;
                      
              when "1000" | "1011"  => enable <= '0';
              
              when others => enable <='1';
				  
	    end case;
		 
		 WB_enable <= enable;
		 
              
     end process ;
       
  end architecture;
        
              
                      
                 
                     
                 
             
       
          