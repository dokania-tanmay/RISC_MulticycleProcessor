library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity mem_interfacer is
	port( 
		opcode: in std_logic_vector(3 downto 0);
		Exe_d3: in std_logic_vector(15 downto 0);
		Exe_d1: in std_logic_vector(15 downto 0); 
      Mem_out: in std_logic_vector(15 downto 0);
		WB_d3: out std_logic_vector(15 downto 0);
		Mem_in: out std_logic_vector(15 downto 0);
		Mem_wr: out std_logic;
		Mem_addr: out std_logic_vector(15 downto 0)
		);
end entity;

architecture interface of mem_interfacer is

begin  

      interfacer:
      process(Exe_d3, Exe_d1, opcode, Mem_out)
      begin

      case opcode is 
      when "0111" =>
      
         Mem_addr <= Exe_d3;
         WB_d3 <= Mem_out;  
           
           
      when "0101" =>
      
         Mem_addr <= Exe_d3;
         Mem_in <= Exe_d1;
         Mem_wr <= '1';
         
      
      when others =>
      
         WB_d3 <= Exe_d3;
         
      end case;
    
    end process;
    
 end architecture;
 
 
         
   
      
       
