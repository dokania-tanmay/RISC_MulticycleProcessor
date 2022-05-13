library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end entity;



architecture behave of pipe_reg is
begin
	process(clk, clr, wr_enable)
	begin
		if(clk'event and clk = '1') then
			if (wr_enable='1') then
				Dout <= Din;
			end if;
			if(clr = '1') then
				Dout <= (others => '0');
			end if;
		end if;
	end process;

end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end entity;

architecture behave of pipe_bit is
begin
	process(clk, clr, wr_enable)
	begin
		if(clk'event and clk = '1') then
			if (wr_enable='1') then
				Dout <= Din;
			end if;
			if(clr = '1') then
				Dout <= '0';
			end if;
		end if;
	end process;

end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

package pipeline_register is
	type regBank is array(0 to 7) of std_logic_vector(15 downto 0);
	component pipe_IFD is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			valid: in std_logic;
			clk: in std_logic;
		        clear: in std_logic;
			write_enable: in std_logic;
			valid_out: out std_logic;
	                pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
	                );

       end component;

	component pipe_IDRR is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			valid: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			AD1, AD2, AD3: in std_logic_vector(2 downto 0);
                        write_enable: in std_logic;
			valid_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
                       pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0));

       end component;

	component pipe_RREX is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D1, D2 : in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
			AD1, AD2, AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
            write_enable: in std_logic;
			valid_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
			AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
			D1_out, D2_out : out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

       end component;

	component pipe_EXMEM is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D1, D3 : in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid, C, Z, wb_control: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
		    AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
                        write_enable: in std_logic;
			valid_out, C_out, Z_out, wb_control_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
		    AD3_out: out std_logic_vector(2 downto 0);
			D1_out, D3_out : out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

       end component;

	component pipe_MEMWB is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D3: in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid, C, Z, wb_control: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
		        AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
                        write_enable: in std_logic;
			valid_out, C_out, Z_out, wb_control_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
		        AD3_out: out std_logic_vector(2 downto 0);
			D3_out: out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

       end component;





end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;

entity pipe_IFD is

         port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			valid: in std_logic;
			clk: in std_logic;
			write_enable: in std_logic;
			valid_out: out std_logic;
			clear: in std_logic;
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);


end entity;







architecture reg_1_2 of pipe_IFD is
component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;
begin


	pc_reg: pipe_reg
		generic map(16)
		port map( Din => pc, Dout => pc_out, wr_enable => write_enable, clk => clk, clr => clear);


	inst_reg: pipe_reg
		generic map(16)
		port map( Din => inst, Dout => inst_out, wr_enable => write_enable, clk => clk, clr => clear);

	pc_2_reg: pipe_reg
		generic map(16)
		port map( Din => pc_2, Dout => pc_2_out, wr_enable => write_enable, clk => clk, clr => clear);

	valid_reg: pipe_bit
		generic map(1)
		port map( Din => valid, Dout => valid_out, wr_enable => '1', clk => clk, clr => clear);

end architecture;

--########################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
entity pipe_IDRR is
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			valid: in std_logic;
			clk, clear: in std_logic;
			cond: in std_logic_vector(1 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			AD1, AD2, AD3: in std_logic_vector(2 downto 0);
                        write_enable: in std_logic;
			valid_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			
			);
end entity;



architecture reg_2_3 of pipe_IDRR is
component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;
begin

	pc_reg: pipe_reg
		generic map(16)
		port map( Din => pc, Dout => pc_out, wr_enable => write_enable, clk => clk, clr => clear);
	inst_reg: pipe_reg
		generic map(16)
		port map( Din => inst, Dout => inst_out, wr_enable => write_enable, clk => clk, clr => clear);

	pc_2_reg: pipe_reg
		generic map(16)
		port map( Din => pc_2, Dout => pc_2_out, wr_enable => write_enable, clk => clk, clr => clear);

	valid_reg: pipe_bit
		generic map(1)
		port map( Din => valid, Dout => valid_out, wr_enable => '1', clk => clk, clr => clear);

   AD1_reg: pipe_reg
		generic map(3)
		port map( Din => AD1, Dout => AD1_out, wr_enable => write_enable, clk => clk, clr => clear);

	AD2_reg: pipe_reg
		generic map(3)
		port map( Din => AD2, Dout => AD2_out, wr_enable => write_enable, clk => clk, clr => clear);

	AD3_reg: pipe_reg
		generic map(3)
		port map( Din => AD3, Dout => AD3_out, wr_enable => write_enable, clk => clk, clr => clear);

	cond_reg: pipe_reg
		generic map(2)
		port map( Din => cond, Dout => cond_out, wr_enable => write_enable, clk => clk, clr => clear);
	immd_reg: pipe_reg
		generic map(10)
		port map( Din => immd, Dout => immd_out, wr_enable => write_enable, clk => clk, clr => clear);


end architecture;
--##############################################################################################################
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;

entity pipe_RREX is
	generic(control_length: integer :=12);
		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D1, D2 : in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
			AD1, AD2, AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
                        write_enable: in std_logic;
			valid_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
			AD1_out, AD2_out, AD3_out: out std_logic_vector(2 downto 0);
			D1_out, D2_out : out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

end entity;



architecture reg_3_4 of pipe_RREX is
component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;
begin
	pc_reg: pipe_reg
		generic map(16)
		port map( Din => pc, Dout => pc_out, wr_enable => write_enable, clk => clk, clr => clear);
	inst_reg: pipe_reg
		generic map(16)
		port map( Din => inst, Dout => inst_out, wr_enable => write_enable, clk => clk, clr => clear);

	pc_2_reg: pipe_reg
		generic map(16)
		port map( Din => pc_2, Dout => pc_2_out, wr_enable => write_enable, clk => clk, clr => clear);

	valid_reg: pipe_bit
		generic map(1)
		port map( Din => valid, Dout => valid_out, wr_enable => '1', clk => clk, clr => clear);

   AD1_reg: pipe_reg
		generic map(3)
		port map( Din => AD1, Dout => AD1_out, wr_enable => write_enable, clk => clk, clr => clear);

	AD2_reg: pipe_reg
		generic map(3)
		port map( Din => AD2, Dout => AD2_out, wr_enable => write_enable, clk => clk, clr => clear);

	AD3_reg: pipe_reg
		generic map(3)
		port map( Din => AD3, Dout => AD3_out, wr_enable => write_enable, clk => clk, clr => clear);

	cond_reg: pipe_reg
		generic map(2)
		port map( Din => cond, Dout => cond_out, wr_enable => write_enable, clk => clk, clr => clear);

	D1_reg: pipe_reg
		generic map(16)
		port map( Din => D1, Dout => D1_out, wr_enable => write_enable, clk => clk, clr => clear);
	D2_reg: pipe_reg
		generic map(16)
		port map( Din => D2, Dout => D2_out, wr_enable => write_enable, clk => clk, clr => clear);
	immd_reg: pipe_reg
		generic map(10)
		port map( Din => immd, Dout => immd_out, wr_enable => write_enable, clk => clk, clr => clear);

end architecture;

--#########################################################################################################
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;


entity pipe_EXMEM is

		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D1, D3 : in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid, C, Z, wb_control: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
		        AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
                        write_enable: in std_logic;
			valid_out, C_out, Z_out, wb_control_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
		        AD3_out: out std_logic_vector(2 downto 0);
			D1_out, D3_out : out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

end entity;



architecture reg_4_5 of pipe_EXMEM is
component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;
begin

	pc_reg: pipe_reg
		generic map(16)
		port map( Din => pc, Dout => pc_out, wr_enable => write_enable, clk => clk, clr => clear);
	inst_reg: pipe_reg
		generic map(16)
		port map( Din => inst, Dout => inst_out, wr_enable => write_enable, clk => clk, clr => clear);

	pc_2_reg: pipe_reg
		generic map(16)
		port map( Din => pc_2, Dout => pc_2_out, wr_enable => write_enable, clk => clk, clr => clear);

	valid_reg: pipe_bit
		generic map(1)
		port map( Din => valid, Dout => valid_out, wr_enable => '1', clk => clk, clr => clear);

	AD3_reg: pipe_reg
		generic map(3)
		port map( Din => AD3, Dout => AD3_out, wr_enable => write_enable, clk => clk, clr => clear);

	cond_reg: pipe_reg
		generic map(2)
		port map( Din => cond, Dout => cond_out, wr_enable => write_enable, clk => clk, clr => clear);

	D1_reg: pipe_reg
		generic map(16)
		port map( Din => D1, Dout => D1_out, wr_enable => write_enable, clk => clk, clr => clear);
	D3_reg: pipe_reg
		generic map(16)
		port map( Din => D3, Dout => D3_out, wr_enable => write_enable, clk => clk, clr => clear);
	immd_reg: pipe_reg
		generic map(10)
		port map( Din => immd, Dout => immd_out, wr_enable => write_enable, clk => clk, clr => clear);
	C_reg: pipe_bit
		generic map(1)
		port map( Din => C, Dout => C_out, wr_enable => write_enable, clk => clk, clr => clear);
	Z_reg: pipe_bit
		generic map(1)
		port map( Din => Z, Dout => Z_out, wr_enable => write_enable, clk => clk, clr => clear);
	wb_cont: pipe_bit
		generic map(1)
		port map( Din => wb_control, Dout => wb_control_out, wr_enable => write_enable, clk => clk, clr => clear);

end architecture;

--#############################################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;


entity pipe_MEMWB is

		port(
			pc, pc_2, inst : in std_logic_vector(15 downto 0);
			D3: in std_logic_vector(15 downto 0);
			immd: in std_logic_vector(9 downto 0); --- this is immediate data LSB(8-0) merged with selector bit MSB(9)
			valid, C, Z, wb_control: in std_logic;
			clk: in std_logic;
			cond: in std_logic_vector(1 downto 0);
		        AD3: in std_logic_vector(2 downto 0);
			clear: in std_logic;
                        write_enable: in std_logic;
			valid_out, C_out, Z_out, wb_control_out: out std_logic;
			cond_out: out std_logic_vector(1 downto 0);
		        AD3_out: out std_logic_vector(2 downto 0);
			D3_out: out std_logic_vector(15 downto 0);
			immd_out: out std_logic_vector(9 downto 0);
			pc_out, pc_2_out, inst_out : out std_logic_vector(15 downto 0)
			);

end entity;



architecture reg_5_6 of pipe_MEMWB is
component pipe_reg is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic_vector(data_width-1 downto 0);
		Dout: out std_logic_vector(data_width-1 downto 0));
end component;

component pipe_bit is
	generic ( data_width : integer);
	port(
		clk, wr_enable, clr: in std_logic;
		Din: in std_logic;
		Dout: out std_logic);
end component;
begin

	pc_reg: pipe_reg
		generic map(16)
		port map( Din => pc, Dout => pc_out, wr_enable => write_enable, clk => clk, clr => clear);
	inst_reg: pipe_reg
		generic map(16)
		port map( Din => inst, Dout => inst_out, wr_enable => write_enable, clk => clk, clr => clear);

	pc_2_reg: pipe_reg
		generic map(16)
		port map( Din => pc_2, Dout => pc_2_out, wr_enable => write_enable, clk => clk, clr => clear);

	valid_reg: pipe_bit
		generic map(1)
		port map( Din => valid, Dout => valid_out, wr_enable => '1', clk => clk, clr => clear);

	AD3_reg: pipe_reg
		generic map(3)
		port map( Din => AD3, Dout => AD3_out, wr_enable => write_enable, clk => clk, clr => clear);

	cond_reg: pipe_reg
		generic map(2)
		port map( Din => cond, Dout => cond_out, wr_enable => write_enable, clk => clk, clr => clear);

	D3_reg: pipe_reg
		generic map(16)
		port map( Din => D3, Dout => D3_out, wr_enable => write_enable, clk => clk, clr => clear);
	immd_reg: pipe_reg
		generic map(10)
		port map( Din => immd, Dout => immd_out, wr_enable => write_enable, clk => clk, clr => clear);
	C_reg: pipe_bit
		generic map(1)
		port map( Din => C, Dout => C_out, wr_enable => write_enable, clk => clk, clr => clear);
	Z_reg: pipe_bit
		generic map(1)
		port map( Din => Z, Dout => Z_out, wr_enable => write_enable, clk => clk, clr => clear);
	wb_cont: pipe_bit
		generic map(1)
		port map( Din => wb_control, Dout => wb_control_out, wr_enable => write_enable, clk => clk, clr => clear);

end architecture;
