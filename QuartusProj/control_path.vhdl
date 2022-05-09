LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.elem.ALL;

ENTITY state_transition IS
	PORT (
		reset, clk : IN STD_LOGIC;
		opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C, Z, valid : IN STD_LOGIC;
		condition : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		T : OUT STD_LOGIC_VECTOR(30 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE state_definition OF state_transition IS
	TYPE state_definition IS (S0, S1, S2, S3, S4, S5, S7, S8, S9, S11, S13, S20, SU, SK, SL4, SL3, S2p, S21, S22, S23, S24, S25, S26);
	SIGNAL CS, NS : state_definition := S0; --CS Current State
	--NS Next State
BEGIN
	clocked :
	PROCESS (clk, NS)
	BEGIN
		IF (clk'event AND clk = '1') THEN
			CS <= NS;
		END IF;
	END PROCESS;
	controller_design :
	PROCESS (opcode, CS)
	BEGIN
		T <= (OTHERS => '0');
		CASE CS IS

			WHEN S0 =>
				T(11) <= '1';
				T(21 DOWNTO 20) <= "10"; --T1 din select r7_out
				T(0) <= '1'; -- RAM Memory Address select R7_dout
				T(28) <= '1'; -- Instruction Register write enable 

			WHEN S1 =>
				T(30) <= '0'; 
				T(13) <= '1';
				T(15) <= '0';
				T(16) <= '1';
				T(19) <= '1';
				T(18 DOWNTO 17) <= "00";
				T(27 DOWNTO 26) <= "10";

			WHEN S2 =>
				T(29) <= '0';
				T(8 DOWNTO 7) <= "11";
				T(10 DOWNTO 9) <= "00";
				T(4) <= '0';
				T(5) <= '1';

			WHEN S3 =>

				T(23 DOWNTO 22) <= "00";
				T(21 DOWNTO 20) <= "00";
				T(11) <= '1';
				T(6) <= '1';
				T(12) <= '1';
				T(14) <= '1';
			

			WHEN S4 =>
				T(30) <= '0';
				T(13) <= '1';
				T(15) <= '0';
				T(16) <= '1';
				T(19) <= '1';
				T(18 DOWNTO 17) <= "11";
				CASE opcode IS
					WHEN "0001" =>
						IF condition = "11" THEN
							T(27 DOWNTO 26) <= "11";
						ELSE
							T(27 DOWNTO 26) <= "10";
						END IF;
					WHEN "0010" => T(27 DOWNTO 26) <= "00"; --- NAND
					WHEN "1000" => T(27 DOWNTO 26) <= "01"; --- XOR
					when others => T(27 DOWNTO 26) <= "00"; --- Doesnt happen
				END CASE;
			WHEN S5 =>
				T(29) <= '0';
				T(8 DOWNTO 7) <= "00";
				T(10 DOWNTO 9) <= "00";
				T(5) <= '1';
				T(4) <= '0';
			WHEN S7 =>
				T(30) <= '0';
				T(18 DOWNTO 17) <= "01";
				if opcode = "0000" then
					T(27 downto 26) <= "10";
				elsif opcode = "1000" then
				  T(27 downto 26) <= "01";
				END IF;
				T(19) <= '1';
				T(15) <= '0';
				T(16) <= '1';
				T(13) <= '1';
				
			WHEN S20 =>
				T(13) <= '1';
				T(19) <= '0';
				T(24) <= '1';
				T(15) <= '0';

			WHEN S21 =>
				T(21 DOWNTO 20) <= "01";
				T(23 DOWNTO 22) <= "10";
				T(0) <= '0';
				T(11) <= '1';
				T(14) <= '1';

			WHEN S22 =>
				T(30) <= '0';
				T(29) <= '0';
				T(27 DOWNTO 26) <= "10";
				T(18 DOWNTO 17) <= "00";
				T(10 DOWNTO 9) <= "01";
				T(8 DOWNTO 7) <= "10";
				T(15) <= '0';
				T(19) <= '1';
				T(13) <= '1';
				T(4) <= '1';
				T(25) <= '1';
				T(11) <= '1';

			WHEN S23 =>
				T(23 DOWNTO 22) <= "01";
				T(6) <= '0';
				T(14) <= '1';

			WHEN S24 =>
				T(21 DOWNTO 20) <= "01";
				T(3) <= '0';
				T(1) <= '1';
				T(0) <= '0';
				T(11) <= '1';
			WHEN S25 =>
				T(27 DOWNTO 26) <= "10";
				T(18 DOWNTO 17) <= "00";
				T(15) <= '0';
				T(16) <= '1';
				T(13) <= '1';
				T(19) <= '1';

			WHEN SU =>
				T(29) <= '0';
				T(10 DOWNTO 9) <= "10";
				T (8 DOWNTO 7) <= "01";
				T(4) <= '0';
				T(5) <= '1';

			WHEN SK =>
				T(4) <= '0';
				T(5) <= '1';
				T(8 DOWNTO 7) <= "11";
				T(29) <= '0';
				T(10 DOWNTO 9) <= "01";
			WHEN S8 =>
				T(29) <= '1';
				T(4) <= '0';
				T(5) <= '1';
				T(10 DOWNTO 9) <= "00";
				T(8 DOWNTO 7) <= "00";

			WHEN S9 =>
				T(1) <= '0';
				T(2) <= '1';
				T(3) <= '1';
				T(0) <= '0';

			WHEN S2p =>
				T(29) <= '0';
				T(8 DOWNTO 7) <= "11";
				T(10 DOWNTO 9) <= "00";
				T(4) <= '0';
				T(5) <= '1';

			WHEN S11 =>
				T(29) <= '0';
				T(8 DOWNTO 7) <= "11";
				T(10 DOWNTO 9) <= "11";
				T(4) <= '0';
				T(5) <= '1';
			WHEN S13 =>
				T(30) <= '0';
				T(15) <= '0';
				T(18 DOWNTO 17) <= "10";
				T(19) <= '1';
				T(13) <= '1';
				T(16) <= '1';

			WHEN SL4 =>
				T(4) <= '0';
				T(5) <= '1';
				T(29) <= '0';
				T(8 DOWNTO 7) <= "01";
				T(10 DOWNTO 9) <= "00";
			WHEN SL3 =>
				T(13) <= '1';
				T(15) <= '1';
				T(19) <= '0';
			
			when S26 => 
				T(30) <= '1';
				T(18 downto 17) <= "01";
				T(27 downto 26) <= "10";
				T(19) <= '1';
				T(15) <= '0';
				T(16) <= '1';
				T(13) <= '1'; 

		END CASE;
	END PROCESS;

	state_transition_table :
	PROCESS (CS, opcode, C, Z, valid, reset, condition)
	BEGIN
		NS <= CS;
		IF (reset = '1') THEN
			NS <= S0;

		ELSE

			CASE CS IS
				WHEN S0 => NS <= S1;
				WHEN S1 => NS <= S2;

				WHEN S2 =>
					CASE opcode IS WHEN "0001" =>
							IF (condition = "00") THEN
								NS <= S3;
							ELSIF (condition = "11") THEN
								NS <= S3;
							ELSIF (C = '1') AND (condition = "10") THEN
								NS <= S3;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S3;
							ELSIF (C = '0') AND (condition = "10") THEN
								NS <= S0;
							ELSIF (Z = '0') AND (condition = "01") THEN
								NS <= S0;
							END IF;

						WHEN "0000" => NS <= S3;
						WHEN "0010" =>
							IF (condition = "00") THEN
								NS <= S3;
							ELSIF (C = '1') AND (condition = "10") THEN
								NS <= S3;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S3;
							ELSIF (C = '0') AND (condition = "10") THEN
								NS <= S0;
							ELSIF (Z = '0') AND (condition = "01") THEN
								NS <= S0;
							END IF;
						WHEN "1010" => NS <= SL4;
						WHEN "1001" => NS <= SL4;
						WHEN "1000" => NS <= S7;
						WHEN "1100" => NS <= S20;
						WHEN "1101" => NS <= S20;
						WHEN "1011" => NS <= S3;
						WHEN "0111" => NS <= S3;
						WHEN "0101" => NS <= S3;
						WHEN "0100" => NS <= SU;
						WHEN OTHERS =>

					END CASE;

				WHEN S3 =>
					CASE opcode IS WHEN "1011" => NS <= S13;
						WHEN "0111" => NS <= S26;
						WHEN "0101" => NS <= S26;
						WHEN "0000" => NS <= S7;
						WHEN "1010" => NS <= S11;
						WHEN "1000" => NS <= S4;
						WHEN "0001" =>
							IF (C = '1') AND (condition = "10") THEN
								NS <= S4;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S4;
							ELSIF (condition = "11") THEN
								NS <= S4;
							ELSIF (condition = "00") THEN
								NS <= S4;
							END IF;
						WHEN "0010" =>
							IF (C = '1') AND (condition = "10") THEN
								NS <= S4;
							ELSIF (condition = "00") THEN
								NS <= S4;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S4;
							END IF;
						WHEN OTHERS =>

					END CASE;
				WHEN S4 =>

					CASE opcode IS WHEN "0001" =>
							IF (C = '1') AND (condition = "10") THEN
								NS <= S5;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S5;
							ELSIF (condition = "00") THEN
								NS <= S5;
							ELSIF (condition = "11") THEN
								NS <= S5;
							END IF;
						WHEN "0010" =>
							IF (C = '1') AND (condition = "10") THEN
								NS <= S5;
							ELSIF (condition = "00") THEN
								NS <= S5;
							ELSIF (Z = '1') AND (condition = "01") THEN
								NS <= S5;

							END IF;
						WHEN "1000" =>
							IF (Z = '1') THEN
								NS <= SK;
							ELSIF (Z = '0') THEN
								NS <= S0;
							END IF;
						WHEN OTHERS =>
					END CASE;
					-- recheck S4-S11 case 

				WHEN S5 => NS <= S0;

				WHEN S7 =>
					CASE opcode IS WHEN "0000" => NS <= S8;
						WHEN "1000" => NS <= S3;
						WHEN OTHERS =>
					END CASE;

				WHEN S21 =>
					CASE opcode IS WHEN "1100" => NS <= S22;
						WHEN "0111" => NS <= SL3;

						WHEN OTHERS =>
					END CASE;

				WHEN S8 => NS <= S0;
				WHEN S9 => NS <= S0;
				WHEN S11 => NS <= S0;
				WHEN S13 => NS <= S2p;
				WHEN SU => NS <= S0;
				WHEN SK => NS <= S0;
				WHEN SL3 => NS <= SL4;
				WHEN S23 => NS <= S24;
				WHEN S24 => NS <= S25;
				WHEN S2p => NS <= S0;
				WHEN S20 =>
					CASE opcode IS WHEN "1100" => NS <= S21;
						WHEN "1101" => NS <= S23;
						WHEN OTHERS =>
					END CASE;
				WHEN SL4 =>
					CASE opcode IS WHEN "1010" => NS <= S3;
						WHEN "0111" => NS <= S0;
						WHEN "1001" => NS <= S13;
						WHEN OTHERS =>
					END CASE;
				WHEN S22 =>

					CASE opcode IS WHEN "1100" =>
							IF (valid = '1') THEN
								NS <= S21;
							ELSIF (valid = '1') THEN
								NS <= S0;
							END IF;
						WHEN OTHERS =>

					END CASE;

				WHEN S25 =>

					CASE opcode IS WHEN "1101" =>
							IF (valid = '1') THEN
								NS <= S23;
							ELSIF (valid = '1') THEN
								NS <= S0;
							END IF;

						WHEN OTHERS =>

					END CASE;
				WHEN S26 => 
					CASE opcode IS WHEN "0111" => NS <= S21;
						WHEN "0101" => NS <= S9;
						WHEN OTHERS =>
					END CASE;
			END CASE;
		END IF;
	END PROCESS;
END ARCHITECTURE;