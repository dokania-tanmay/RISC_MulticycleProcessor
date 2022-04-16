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
		      T(8 downto 7) <= "00";
		      T(10 downto 9) <= "00";
		      T(5) <= '1';
		    
		      
		      
		      
	          when S7 =>
		      T(18 downto 17) <= "01";
		      T(27 downto 26) <= "10";
		      T(19) <= '1';
		      T(15) <= '0';
		      T(16) <= '1';
		      T(13) <= '1'; 
		      
		  when S20 =>
		  
		      T(13) <= '1'; 
		      T(19) <= '0'; 
		      T(24) <= '1'; 
		      
	          when S21 =>
		      T(21 downto 20) <= "01";
		      T(23 downto 22) <= "10";
		      T(0) <= '0';
		      T(11) <= '1';
		      T(14) <= '1';
		  
	          when S22 =>
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
		      T(10 downto 9) <= "10";
		      T (8 downto 7) <= "01";
		      
		  when SK =>
		   
		      T(8 downto 7)  <= "11"
		      T(29) <= "0";
		      T(10 downto 9) <= "01"
		      T(14) <= "1";
		      
		  when S8 =>
		      T(5) <= "1";
		      T(10 downto 9) <= "00";
		      T(8 downto 7) <= "11";
		      
		  when S9 =>
		  
		      T(2) <= '1';
		      T(3) <= '1';
		      T(0) <= '0';
		      
		  when S2p =>
		     
		      T(8 downto 7) <= "11";
		      T(10 downto 9) <= "00";
		      
		  when S11 =>
		      T(29) <= "0";
		      T(8 downto 7) <= "11";
		      T(10 downto 9) <= "11";
		      
		  when S13 =>
		      T(15) <= "0";
		      T(18 downto 17) <= "10";
		      T(19) <= "1";
		      T(11) <= "1";
		  
		  when SL4 =>
		      T(29) <= "0";
		      T(8 downto 7) <= "01";
		      T(10 downto 9) <= "00";
		      T(13) <= "1";
		      
		  when SL3 =>
		  
		   
		      
		      
		  
	              
	
	
	
	
	
	
	
	
	
	
	
	
	
	state_transition_table:
	process(CS, opcode, valid, C, Z, valid, reset)
	begin	         

	      
	    NS <= CS;
	    if (reset = '1') then
	          NS <= S0;
	     
	     
	        
	        case CS is 
	           
	           
	           when S0 => NS <= S1;
	           when S1 => NS <= S2;
	           
	           when S2 =>
	              case opcode is when "00000" => NS <= S3;
	              case opcode is when "00011" => NS <= S3;
	              case opcode is when "00100" => NS <= S3;
	              case opcode is when "00101" => NS <= S3;
	              case opcode is when "00001" => 
	                      if (C ='1') then NS <= S3;
	                      
	                      end if;
	              case opcode is when "00110" =>
	                      if (C = '1') then NS <= S3;
	                      
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z = '1') then NS <= S3;
	                      
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z = '1') then NS <= S3;
	                      
	                      end if;
	              case opcode is when "01111" => NS <= S3; 
	              case opcode is when "01110" => NS <= S3; 
	              case opcode is when "01101" => NS <= S7; 
	              case opcode is when "01011" => NS <= S20;
	              case opcode is when "01100" => NS <= S20;
	              case opcode is when "00001" => 
	                      if (C = '0') then NS <= S0;
	                      
	                      end if;
	              case opcode is when "00110" =>
	                      if (C = '0') then NS <= S0;
	                      
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z = '0') then NS <= S0;
	                      
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z = '0') then NS <= S0;
	                      
	                      end if;
                 case opcode is when "01000" => NS <= SU; 
	              
	          end case;
	          
	          when S3 =>
	              case opcode is when "10000" => NS <= S13;
	              case opcode is when "01001" => NS <= S7;
	              case opcode is when "01010" => NS <= S7;
	              case opcode is when "00100" => NS <= S7;
	              case opcode is when "01101" =>  
	                      if (Z = '0') then NS <= S0;
	                      
	                      end if;
	              case opcode is when "01101" =>  
	                      if (Z = '1') then NS <= SK;
	                      
	                      end if;
	              case opcode is when "00001" => 
	                      if (C = '1') then NS <= S4;
	                      
	                      end if;
	              case opcode is when "00110" =>
	                      if (C = '1') then NS <= S4;
	                      
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z = '1') then NS <= S4;
	                      
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z = '1') then NS <= S4;
	                      
	                      end if;
	              case opcode is when "00000" => NS <= S4;	                
	              case opcode is when "00011" => NS <= S4;
	              case opcode is when "00101" => NS <= S4;
              end case;					  
	          when S4 =>

	              case opcode is when "00001" => 
	                      if (C = '1') then NS <= S5;
	                      
	                      end if;
	              case opcode is when "00110" =>
	                      if (C = '1') then NS <= S5;
	                      
	                      end if;
	              case opcode is when "00010" =>  
	                      if (Z = '1') then NS <= S5;
	                      
	                      end if;	                      	                      
	              case opcode is when "00111" =>  
	                      if (Z = '1') then NS <= S5;
	                      
	                      end if;
	              case opcode is when "00000" => NS <= S5;	                
	              case opcode is when "00011" => NS <= S5;
	              case opcode is when "00101" => NS <= S5;
	              end case;	
	              -- recheck S4-S11 case 
	              
	          when S5 =>  NS <= S0;
	          
	          when S7 =>
	              case opcode is when "00100" => NS <= S8;
	              case opcode is when "01101" => NS <= S3;
	              case opcode is when "01010" => NS <= S9;
	              case opcode is when "01001" => NS <= SL3;
	          end case;	
				 
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
                end case;		              
	          when SL4 =>
	              case opcode is when "01110" => NS <= S11;
	              case opcode is when "01001" => NS <= S0;
	              case opcode is when "01111" => NS <= S13;
               end case;	
	          when S22 =>

	              case opcode is when "01011" => 
	                      if (valid = '1') then NS <= S21;
	                      
	                      end if;
	              case opcode is when "01011" =>
	                      if (valid = '1') then NS <= S0;
	                      
	                      end if;
	              end case;	
						 
	          when S25 =>

	              case opcode is when "01100" => 
	                      if (valid = '1') then NS <= S23;
	                      
	                      end if;
	              case opcode is when "01100" =>
	                      if (valid = '1') then NS <= S0;
	                      
	                      end if;
								 
					  end case;	
	            
	     end case;
	end process;

	    
end architecture; 
	              
	              
	              
	              
	              
	              
	              
	              
	              	              	              
	                      
	              	               


