LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;
USE ieee.std_logic_1164.ALL;
ENTITY sel_sign_extender IS

	GENERIC (
		inp_width : INTEGER := 10;
		outp_width : INTEGER := 16);

	PORT (
		inp : IN STD_LOGIC_VECTOR(inp_width - 1 DOWNTO 0);
		outp : out STD_LOGIC_VECTOR(outp_width - 1 DOWNTO 0)

	);

END ENTITY;
ARCHITECTURE conditon OF sel_sign_extender IS
	SIGNAL condition : STD_LOGIC;
	SIGNAL temp_op : STD_LOGIC_VECTOR (outp_width - 1 DOWNTO 0);

BEGIN
	condition <= inp(9);
	sign_cond :
	PROCESS (inp)
	BEGIN

		CASE condition IS
			WHEN '1' =>
				temp_op(8 DOWNTO 0) <= inp(8 DOWNTO 0);

				extend_1 :
				FOR i IN 9 TO (outp_width - 1) loop
					temp_op(i) <= inp(8);
				END loop;-- extend_1;

			WHEN '0' =>
				temp_op(5 DOWNTO 0) <= inp(5 DOWNTO 0);

				extend_2 :
				FOR i IN 6 TO (outp_width - 1) loop
					temp_op(i) <= inp(5);
				END loop;-- extend_2;
			
			WHEN others => 
		END CASE;

		outp(outp_width - 1 DOWNTO 0) <= temp_op(outp_width - 1 DOWNTO 0);

	END PROCESS;

END ARCHITECTURE;