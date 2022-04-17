library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;
ENTITY ram_mem IS
	PORT
   (
    clock: IN   std_logic;
    ram_data_in:  IN   std_logic_vector (15 DOWNTO 0);
    ram_address:  IN   std_logic_vector(15 downto 0);
    ram_write_enable:    IN   std_logic;
    ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0);
	 reset : in std_logic
	 );
   
END ram_mem;

ARCHITECTURE beh OF ram_mem IS
   TYPE mem IS ARRAY(0 TO 65535) OF std_logic_vector(15 DOWNTO 0);
   SIGNAL ram_block : mem;
BEGIN
   PROCESS (clock, reset)
   BEGIN
      IF (clock'event AND clock = '1') THEN
         IF (ram_write_enable = '1') THEN
            ram_block(to_integer(unsigned(ram_address))) <= ram_data_in;
         END IF;
      END IF;
		 --if(reset = '1') then
            --ram_block(0) <= (others => '0');
            --ram_block(1) <= (others => '0');
            --ram_block(2) <= (others => '0');
            --ram_block(3) <= (others => '0');
           -- ram_block(4) <= (others => '0');
          --  ram_block(5) <= (others => '0');
          --  ram_block(6) <= (others => '0');
          --  ram_block(7) <= (others => '0');
       -- end if;
   END PROCESS;
	
   ram_data_out <= ram_block(to_integer(unsigned(ram_address)));
	-- The instructions can be written below and upon reset, the following instructions will be loaded to RAM.
END beh;