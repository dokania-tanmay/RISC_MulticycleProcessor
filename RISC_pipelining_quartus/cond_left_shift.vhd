library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;




entity cond_left_shift is

	port(
		immediate: in std_logic_vector(8 downto 0);
		opcode: in std_logic_vector(3 downto 0);
      d3: in std_logic_vector(15 downto 0);
      d3_out: out std_logic_vector(15 downto 0)
                );
		
end entity;


architecture cond_shifter of cond_left_shift is
signal out_temp: std_logic_vector(15 downto 0) := (others => '0');
begin
     
     shifter:
     process(opcode, immediate, d3)
     begin
        
        case opcode is 
           when "0100"  =>
              out_temp(15 downto 7) <= immediate(8 downto 0);
              out_temp(6 downto 0) <= "0000000";
              
            when others =>
               
              out_temp(15 downto 0) <= d3(15 downto 0);
              
              
          end case;
		
		d3_out(15 downto 0) <= out_temp(15 downto 0);
          
      end process;
      
      
  end architecture;
                