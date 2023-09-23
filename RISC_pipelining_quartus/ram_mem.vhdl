library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.all;
ENTITY ram_mem IS
	PORT
   (
    clock: IN   std_logic;
    ram_address:  IN   std_logic_vector(15 downto 0);
    ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0);
	 reset : in std_logic
	 );
   
END ram_mem;

ARCHITECTURE beh OF ram_mem IS
   TYPE mem IS ARRAY(0 TO 31) OF std_logic_vector(15 DOWNTO 0);
   SIGNAL ram_block : mem := (others=> (others => '0'));
BEGIN
   PROCESS (clock)
   BEGIN
		 if(reset = '1') then
            ram_block(1) <= "0001000001011000";
            ram_block(0) <= "0001000001011000";
            ram_block(2) <= "0001000001011000";
            ram_block(3) <= "0001000001011000";
            ram_block(4) <= "0001000001011000";
            ram_block(5) <= (others => '0');
            ram_block(6) <= (others => '0');
            ram_block(7) <= (others => '0');
				ram_block(12)<= (others => '0');
				ram_block(13) <= (others => '0');
        end if;
   END PROCESS;
	
   ram_data_out <= ram_block(to_integer(unsigned(ram_address(4 downto 0))));
	-- The instructions can be written below and upon reset, the following instructions will be loaded to RAM.
END beh;