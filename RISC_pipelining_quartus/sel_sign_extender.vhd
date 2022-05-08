library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity sel_sign_extender is

	generic(
	        input_width: integer := 10;
		output_width: integer := 16);

	port(
		input: in std_logic_vector(input_width-1 downto 0);
		output: in std_logic_vector(output_width-1 downto 0)

                );
           
end entity;


architecture conditon of sel_sign_extender is
    signal condition : input(0) ;
    signal temp_op: std_logic_vector (output_width-1 downto 0);     
        
begin

   sign_cond:
   process(input)
   begin
     
     case condition is when '1' =>
         temp_op(8 downto 0) <= input(9 downto 1);
	
         extend_1:
	      for i in 9 to output_width-1 generate
		      output(i) <= input(9);
	      end generate ;
	  
     when '0' =>
         temp_op(5 down to 0) <= input(6 downto 1);
	
         extend_2:
	      for i in 6 to output_width-1 generate
		      temp_op(i) <= input(5);
	      end generate;

     when others => ;
          
     end case;
	  
	output(output_width-1 downto 0) <= temp_op(output_width-1 downto 0);
		
	end process;
      
end architecture;
        
        
          
          
          
    