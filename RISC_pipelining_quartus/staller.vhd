library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;


entity staller is
	port(   opcode: in std_logic_vector(3 downto 0);
                AD1:    in std_logic_vector(3 downto 0);
                AD2:    in std_logic_vector(3 downto 0);
                AD3:    in std_logic_vector(3 downto 0);
                clk, reset:    in std_logic;
                wr_en:  out std_logic
                
		);

end entity;

architecture write_enable of staller is
	type write_enable is (S0, S1);
	signal CS, NS: write_enable;  --CS Current State
	                                  --NS Next State
begin


	clocked:
	process(clk, NS)
	begin
		if (clk'event and clk = '1') then
			CS <= NS;
		end if;
	end process;
	
	enable_control:
	process(CS, NS, opcode, reset, AD1, AD2, AD3 )
        begin

        
         case CS is 
         when S0 =>

	    
	        wr_en <= '1';
	    
          
         when S1 =>
             
              wr_en <= '0';
             
         when others => 
         
         end case;
	
       
       end process;
       

    
    
        
	
	
	
	
	
	
	
	
	
  transistion:
	process(opcode, AD1, AD2, AD3, clk, reset) 
	begin	         

	      
	    NS <= CS;
	    if (reset = '1') then
	          NS <= S0;
	     
	    else 
	    case opcode is 
	    when "0111" => 
	    
	        if (AD1 = AD3) or (AD2 = AD3) then NS <= S1; 
	        else NS <= S0;
	        
	        end if;
	        
	    when others => NS <= S0;
	    
	    end case;
		 
		end if;
	    
 end process;
	 
 end architecture;
	 
	
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
