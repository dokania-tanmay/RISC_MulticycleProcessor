library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;

entity state_transition is
	port(
		reset, clk: in std_logic; 
		opcode: in std_logic_vector(3 downto 0);
		C, Z, valid: in std_logic;
		condition: in std_logic_vector (1 downto 0);
      T: out std_logic_vector(29 downto 0)
		);

end entity;

architecture state_definition of state_transition is
	type state_definition is (S0, S1, S2, S3, S4, S5, S7, S8, S9, S11, S13, S20, SU, SK, SL4, SL3, S2p, S21, S22, S23, S24, S25);
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
	
	
	controller_design:
	process(opcode, CS)
	begin
		T <= (others => '0');
		case CS is
		  
		  when S0 =>
		      T(21 downto 20) <= "10"; --T1 din select r7_out
		      T(0) <= '1';	        -- RAM Memory Address select R7_dout
		      T(28) <= '1';            -- Instruction Register write enable 
	    
	          when S1 => 
	              
		      T(13) <= '1';
		      T(15) <= '0';  
		      T(16) <= '1';
		      T(19) <= '1';  
		      T(18 downto 17) <= "00";
		      T(27 downto 26) <= "10";
		      
		  when S2 =>
		      T(29) <= '0';
		      T(8 downto 7) <= "11";
		      T(10 downto 9) <= "00";
		      
		  when S3 =>
		     
		      T(23 downto 22) <= "00";
		      T(21 downto 20) <= "00";
		      T(11) <= '1';
		      T(6) <= '1';
		      T(12) <= '1';
		      T(14) <= '1';
		      
		  when S4 =>
		      T(13) <= '1';
		      T(15) <= '0';  
		      T(16) <= '1';
		      T(19) <= '1';
		      T(18 downto 17) <= "11";
		      
		  when S5 =>
		      T(29) <= '0';
		      T(8 downto 7) <= "00";
		      T(10 downto 9) <= "00";
		      T(5) <= '1';
		    
		      
		      
		      
	          when S7 =>
		      T(18 downto 17) <= "01";
		      T(27 downto 26) <= "10";
		      T(19) <= '0';
		      T(15) <= '1';
		      T(16) <= '1';
		      T(13) <= '1'; 
		      
		  when S20 =>
		  
		      T(13) <= '1'; 
		      T(19) <= '0'; 
		      T(24) <= '1'; 
		      T(15) <= '0';
		      
	          when S21 =>
		      T(21 downto 20) <= "01";
		      T(23 downto 22) <= "10";
		      T(0) <= '0';
		      T(11) <= '1';
		      T(14) <= '1';
		  
	          when S22 =>
		      T(29) <= '0';
		      T(27 downto 26) <= "10";
		      T(18 downto 17) <= "00";
		      T(10 downto 9) <= "01";
		      T(8 downto 7) <= "10";
		      T(15) <= '0';
		      T(19) <= '1';
		      T(13) <= '1';
		      T(4) <= '1';
		      T(25) <= '1';
	          
	          when S23 =>
		      T(23 downto 22) <= "01";
		      T(6) <= '0';
		      T(14) <= '1';
		      
		  when S24 =>
		      T(21 downto 20) <= "01";
		      T(3) <= '0';
		      T(1) <= '1';
		      T(0) <= '0';
		      T(11) <= '1';
		      
		      
	          when S25 =>
		      T(27 downto 26) <= "10";
		      T(18 downto 17) <= "00";
		      T(15) <= '0';
		      T(16) <= '1';
		      T(13) <= '1';
		      T(19) <= '1';
		      
		  when SU =>
		      T(29) <= '0';
		      T(10 downto 9) <= "10";
		      T (8 downto 7) <= "01";
		      
		  when SK =>
		   
		      T(8 downto 7)  <= "11";
		      T(29) <= '0';
		      T(10 downto 9) <= "01";

		      
		  when S8 =>
		      T(29) <= '1';
		      T(5) <= '1';
		      T(10 downto 9) <= "00";
		      T(8 downto 7) <= "00";
		      
		  when S9 =>
		  
		      T(2) <= '1';
		      T(3) <= '1';
		      T(0) <= '0';
		      
		  when S2p =>
		      T(29) <= '0';
		      T(8 downto 7) <= "11";
		      T(10 downto 9) <= "00";
		      
		  when S11 =>
		      T(29) <= '0';
		      T(8 downto 7) <= "11";
		      T(10 downto 9) <= "11";

		      
		  when S13 =>
		      T(15) <= '0';
		      T(18 downto 17) <= "10";
		      T(19) <= '1';
		      T(13) <= '1';
		  
		  when SL4 =>
		      T(29) <= '0';
		      T(8 downto 7) <= "01";
		      T(10 downto 9) <= "00";

		      
		  when SL3 =>
		      T(13) <= '1';
		      T(15) <= '1';
		   
		      
		  
		      
		  
	   end case;
	end process;
	
	
	
	
	
	
	
	
	
	
	
	
	
	state_transition_table:
	process(CS, opcode, C, Z, valid, reset, condition) 
	begin	         

	      
	    NS <= CS;
	    if (reset = '1') then
	          NS <= S0;
	     
	    else 
	        
	        case CS is 
	           
	           
	           when S0 => NS <= S1;
	           when S1 => NS <= S2;
	           
	           when S2 =>
	              case opcode is when "0001" => 
	                      if (condition ="00") then NS <= S3;
								 elsif (condition ="11") then NS <= S3;
								 elsif (C ='1' ) and (condition ="10")  then NS <= S3;
                         elsif (Z = '1') and (condition ="01") then NS <= S3;
	                      elsif (C = '0') and (condition ="10") then NS <= S0;
	                      elsif (Z = '0') and (condition ="01") then NS <= S0;
	                      end if;
 
	              when "0000" => NS <= S3;
	              when "0010" => 
	                      if (condition ="00") then NS <= S3;
	                      elsif (C = '1') and (condition ="10") then  NS <= S3;
	                      elsif (Z = '1') and (condition ="01") then NS <= S3;	 
	                      elsif (C = '0') and (condition ="10") then NS <= S0;
	                      elsif (Z = '0') and (condition ="01") then NS <= S0;
								 end if;


                     	                      

	              when "1010" => NS <= SL4; 
	              when "1001" => NS <= SL4; 
	              when "1000" => NS <= S7; 
	              when "1100" => NS <= S20;
	              when "1101" => NS <= S20;
	              when "1011" => NS <= S3;

                 when "0100" => NS <= SU; 
					  when others =>
	              
	          end case;
	          
	          when S3 =>
	              case opcode is when "1011" => NS <= S13;
	              when "0111" => NS <= S7;
	              when "0101" => NS <= S7;
	              when "0000" => NS <= S7;
	              when "1010" => NS <= S11;
	              when "1000" =>  
	                      if (Z = '0') then NS <= S0;
	                      elsif (Z = '1') then NS <= SK;
								 
	                      
	                      end if;

	              when "0001" => 
	                      if (C = '1') and (condition ="10") then NS <= S4;
	                      elsif (Z = '1') and (condition ="01") then NS <= S4;
	                      elsif (condition ="11") then NS <= S4;
	                      elsif (condition ="00") then NS <= S4;
	                      end if;
	              when "0010" =>
	                      if (C = '1') and (condition ="10") then NS <= S4;
	                      elsif (condition ="00") then NS <= S4;
	                      elsif (Z = '1') and (condition ="01") then NS <= S4;
	                      end if;
                 when others =>                    

              end case;					  
	          when S4 =>

	              case opcode is when "0001" => 
	                      if (C = '1') and (condition ="10") then NS <= S5;
	                      elsif (Z = '1') and (condition ="01") then NS <= S5;
	                      elsif (condition ="00") then NS <= S5;
	                      elsif (condition ="11") then NS <= S5;


	                      end if;
	              when "0010" =>
	                      if (C = '1') and (condition ="10") then NS <= S5;
	                      elsif (condition ="00") then NS <= S5;
	                      elsif (Z = '1') and (condition ="01") then NS <= S5;

	                      end if;
	                      	                      
                 when others =>
	              end case;	
	              -- recheck S4-S11 case 
	              
	          when S5 =>  NS <= S0;
	          
	          when S7 =>
	              case opcode is when "0000" => NS <= S8;
	              when "1000" => NS <= S3;
	              when "0101" => NS <= S9;
	              when "0111" => NS <= S21;
					  when others =>
	          end case;
	          
	          when S21 =>
	              case opcode is when "1100" => NS <= S22;
	              when "0111" => NS <= SL3;

		      when others =>
	          end case;
				 
	          when S8 =>  NS <= S0;
	          when S9 =>  NS <= S0;
	          when S11 => NS <= S0;
	          when S13 => NS <= S2p;
	          when SU => NS <= S0;
	          when SK => NS <= S0;
	          when SL3 =>  NS <= SL4;
                  when S23 => NS <= S24;
	          when S24 => NS <= S25;
	          when S2p => NS <= S0;	          	          
	          when S20 =>
	              case opcode is when "1100" => NS <= S21;
	              when "1101" => NS <= S23;
					  when others =>
                end case;		              
	          when SL4 =>
	              case opcode is when "1010" => NS <= S3;
	              when "0111" => NS <= S0;
	              when "1001" => NS <= S13;
					  when others =>
               end case;	
	          when S22 =>

	              case opcode is when "1100" => 
	                      if (valid = '1') then NS <= S21;
	                      elsif (valid = '1') then NS <= S0;

	                      
	                      end if;
					  when others =>

	              end case;	
						 
	          when S25 =>

	              case opcode is when "1101" => 
	                      if (valid = '1') then NS <= S23;
	                      elsif (valid = '1') then NS <= S0;

	                      
	                      end if;
					
                 when others =>
								 
					  end case;	
	            
	     end case;
		 end if;
	end process;

	    
end architecture; 
	              
	              
	              
	              
	              
	              
	              
	              
	              	              	              
	                      
	              	               


