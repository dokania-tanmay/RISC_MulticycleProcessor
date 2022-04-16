LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ram_mem IS
   PORT
   (
    clock: IN   std_logic;
    ram_data_in:  IN   std_logic_vector (15 DOWNTO 0);
    ram_address:  IN   RANGE INTEGER 0 TO 65535;
    ram_write_enable:    IN   std_logic;
    ram_data_out:     OUT  std_logic_vector (15 DOWNTO 0));
   );
END ram_mem;

ARCHITECTURE beh OF ram_infer IS
   TYPE mem IS ARRAY(0 TO 65535) OF std_logic_vector(15 DOWNTO 0);
   SIGNAL ram_block : mem;
BEGIN
   PROCESS (clock)
   BEGIN
      IF (clock'event AND clock = '1') THEN
         IF (we = '1') THEN
            ram_block(address) <= data;
         END IF;
         q <= ram_block(address);
      END IF;
   END PROCESS;
END beh;