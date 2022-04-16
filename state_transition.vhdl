library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity state_transition is
	port(
		reset, clk: in std_logic; 
		opcode: in std_logic_vector(3 downto 0);
                T: out std_logic_vector(25 downto 0);
		C, Z, valid: in std_logic);
end entity;

architecture state_definition of state_transition is
	type fsm_state is (S0, S1, S2, S3, S4, S5, S7, S8, S9, S11, S13, S20, SU, SK, SL4, SL3, S2p, S21, S22, S23, S24, S25);
	signal CS, NS: state_definition;  --CS Current State
	                                  --NS Next State
begin


	clocked:
	process(clk, NS)
	begin
		if (clk'event and clk = '1') then
			CS <= NS;
		end if;
	end process;
	
	
	
	state_transition_table:
	process(CS, opcode, valid, C, Z, valid, reset)
	begin
	      
	    NS <= CS;
	    if (reset = '1') then
	          NS <= S0;
	     
	    else 
	        
	        case CS is 
	           
	           
	           when S0 => NS <= S1
	           when S1 => NS <= S2
	           
	           when S2 =>
	              case opcode is when "00000" => NS <= S3;
	              case opcode is when "00011" => NS <= S3;
	              case opcode is when "00100" => NS <= S3;
	              case opcode is when "00101" => NS <= S3;
	              case opcode is when "00001" => 
	                      if (C is '1') then NS <= S3;
	                      else
	                      end if;
	              case opcode is when "00110" =>
	                      if (C is '1') then NS <= S3;
	                      else
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z is '1') then NS <= S3;
	                      else
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z is '1') then NS <= S3;
	                      else
	                      end if;
	              case opcode is when "01111" => NS <= S3; 
	              case opcode is when "01110" => NS <= S3; 
	              case opcode is when "01101" => NS <= S7; 
	              case opcode is when "01011" => NS <= S20;
	              case opcode is when "01100" => NS <= S20;
	              case opcode is when "00001" => 
	                      if (C is '0') then NS <= S0;
	                      else
	                      end if;
	              case opcode is when "00110" =>
	                      if (C is '0') then NS <= S0;
	                      else
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z is '0') then NS <= S0;
	                      else
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z is '0') then NS <= S0;
	                      else
	                      end if;
                      case opcode is when "01000" => NS <= SU; 
	              
	          end case;
	          
	          when S3 =>
	              case opcode is when "10000" => NS <= S13;
	              case opcode is when "01001" => NS <= S7;
	              case opcode is when "01010" => NS <= S7;
	              case opcode is when "00100" => NS <= S7;
	              case opcode is when "01101" =>  
	                      if (Z is '0') then NS <= S0;
	                      else
	                      end if;
	              case opcode is when "01101" =>  
	                      if (Z is '1') then NS <= SK;
	                      else
	                      end if;
	              case opcode is when "00001" => 
	                      if (C is '1') then NS <= S4;
	                      else
	                      end if;
	              case opcode is when "00110" =>
	                      if (C is '1') then NS <= S4;
	                      else
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z is '1') then NS <= S4;
	                      else
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z is '1') then NS <= S4;
	                      else
	                      end if;
	              case opcode is when "00000" => NS <= S4;	                
	              case opcode is when "00011" => NS <= S4;
	              case opcode is when "00101" => NS <= S4;	               
	          when S4 =>

	              case opcode is when "00001" => 
	                      if (C is '1') then NS <= S5;
	                      else
	                      end if;
	              case opcode is when "00110" =>
	                      if (C is '1') then NS <= S5;
	                      else
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z is '1') then NS <= S5;
	                      else
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z is '1') then NS <= S5;
	                      else
	                      end if;
	              case opcode is when "00000" => NS <= S5;	                
	              case opcode is when "00011" => NS <= S5;
	              case opcode is when "00101" => NS <= S5;
	              
	              -- recheck S4-S11 case 
	              
	          when S5 =>  NS <= S0;
	          
	          when S7 =>
	              case opcode is when "00100" => NS <= S8;
	              case opcode is when "01101" => NS <= S3;
	              case opcode is when "01010" => NS <= S9;
	              case opcode is when "01001" => NS <= SL3;
	          
	          when S8 =>  NS <= S0;
	          when S9 =>  NS <= S0;
	          when S11 => NS <= S0;
	          when S13 => NS <= S2p;
	          when SU => NS <= S0;
	          when SK => NS <= S0;
	          when SL3 =>  NS <= SL4;
	          when S21 =>  NS <= S22;
	          when S23 => NS <= S24;
	          when S24 => NS <= S25;
	          when S2p => NS <= S0;	          	          
	          when S20 =>
	              case opcode is when "01011" => NS <= S21;
	              case opcode is when "01100" => NS <= S23;	              
	          when SL4 =>
	              case opcode is when "01110" => NS <= S11;
	              case opcode is when "01001" => NS <= S0;
	              case opcode is when "01111" => NS <= S13;

	          when S22 =>

	              case opcode is when "01011" => 
	                      if (valid is '1') then NS <= S21;
	                      else
	                      end if;
	              case opcode is when "01011" =>
	                      if (valid is '1') then NS <= S0;
	                      else
	                      end if;
	                      
	          when S25 =>

	              case opcode is when "01100" => 
	                      if (valid is '1') then NS <= S23;
	                      else
	                      end if;
	              case opcode is when "01100" =>
	                      if (valid is '1') then NS <= S0;
	                      else
	                      end if;
	            
	         end case;
	         
	      end if;
	    
	    end process;
	  end architecture;
	  
	              
	              
	              
	              
	              
	              
	              
	              
	              	              	              
	                      
	              	               


