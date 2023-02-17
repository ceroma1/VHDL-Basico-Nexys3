library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (1 downto 0));
end contador;

architecture Behavioral of contador is

signal sig_salida:STD_LOGIC_VECTOR (1 downto 0);

begin
	process(clear,clk)
	begin
		if(clear='1') then
			sig_salida<="00";
		elsif(clk' event and clk='1')then
			sig_salida<=sig_salida+1;
		end if;
	end process;
	salida <= sig_salida;
end Behavioral;

