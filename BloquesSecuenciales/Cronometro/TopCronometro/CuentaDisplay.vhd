library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity CuentaDisplay is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           fdisplay : out  STD_LOGIC_VECTOR (1 downto 0));
end CuentaDisplay;

architecture Behavioral of CuentaDisplay is
signal cuenta:std_logic_vector(1 downto 0):="00";
begin
	process(clk,ce)
		begin
			if clk' event and clk='1' then
				if ce='1' then
					cuenta<=cuenta +1;
				else
					cuenta<=cuenta;
				end if;
			end if;
		end process;
fdisplay<=cuenta;
end Behavioral;

