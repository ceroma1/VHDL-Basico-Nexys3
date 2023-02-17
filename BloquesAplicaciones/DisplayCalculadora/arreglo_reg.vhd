library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  dato : in STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (15 downto 0));
end arreglo_reg;

architecture Behavioral of arreglo_reg is

signal mensa: STD_LOGIC_VECTOR(15 downto 0);

begin
	process(clear,clk)
	begin
		if(clear='1')then
			mensa <= (others=>'0');
		elsif(clk' event and clk ='1')then
			mensa <= "000000000000"&dato;
			mensa(15 downto 4) <= mensa(11 downto 0);
		end if;
	end process;
	salida<=mensa;
end Behavioral;

