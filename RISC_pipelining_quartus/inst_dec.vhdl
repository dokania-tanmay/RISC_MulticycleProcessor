library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity inst_dec is
	port(
		inst: in std_logic_vector(15 downto 0);
		CZ: out std_logic_vector(1 downto 0);
		AD1, AD2, AD3: out std_logic_vector(2 downto 0);
		immediate: out std_logic_vector(9 downto 0)
		);
end entity;

architecture decode of inst_dec is
signal temp_code: std_logic_vector(3 downto 0);
signal junk: std_logic_vector(9 downto 0);  -- holding the opcode temporarily
signal reg_junk: std_logic_vector(2 downto 0);
signal con_junk: std_logic_vector(1 downto 0);

begin

     junk <= "0000000000";
     reg_junk <= "000";
     con_junk <= "00";
     temp_code <= inst(15 downto 12);
     AD1 <= inst(11 downto 9);


     decoder:
     process(temp_code, inst)
     begin

     case temp_code is
     when "0001" | "0010" =>

        CZ <= inst(1 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(5 downto 3);
        immediate <= junk;

     when "0000" =>
        CZ <= con_junk;
        immediate(9) <= '0';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(8 downto 6);

     when "0100" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(5 downto 3);

     when "0111" =>
        CZ <= con_junk;
        immediate(9) <= '0';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(11 downto 9);
     when "0101" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= reg_junk;
     when "1100" | "1101" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(5 downto 3);
     when "1000" =>
        CZ <= con_junk;
        immediate(9) <= '0';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= reg_junk;
      when "1001" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= reg_junk;
        AD3 <= inst(11 downto 9);
      when "1010" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= inst(8 downto 6);
        AD3 <= inst(11 downto 9);
      when "1011" =>
        CZ <= con_junk;
        immediate(9) <= '1';
        immediate(8 downto 0) <= inst(8 downto 0);
        AD2 <= reg_junk;
        AD3 <= reg_junk;


      when others =>

      end case;

	end process;

  end architecture;
