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
	component risc_processor is
    port (
        clock, reset : in std_logic;
        r0, r1, r2, r3, r4, r5, r6, r7 : out std_logic_vector(15 downto 0)
    );
	end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: risc_processor
			port map (
					-- order of inputs Cin B A
					reset => input_vector(1),
					clock => input_vector(0),
                                        -- order of outputs S Cout
					r0 => output_vector(15 downto 0),
					r1 => output_vector(31 downto 16),
					r2 => output_vector(47 downto 32),
					r3 => output_vector(63 downto 48),
					r7 => output_vector(79 downto 64)
					);

end DutWrap;

