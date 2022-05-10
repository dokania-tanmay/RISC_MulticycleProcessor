library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library work;
use work.elem.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(79 downto 0));
end entity;

architecture DutWrap of DUT is
	component datapath IS
	PORT (
		reset, clock : IN STD_LOGIC;
		output_bank: out regBank
	);
END component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: datapath
			port map (
					reset => input_vector(1),
					clock => input_vector(0),
					output_bank(0) => output_vector(15 downto 0),
					output_bank(1) => output_vector(31 downto 16),
					output_bank(2) => output_vector(47 downto 32),
					output_bank(3) => output_vector(63 downto 48),
					output_bank(7) => output_vector(79 downto 64)
					);

end DutWrap;

