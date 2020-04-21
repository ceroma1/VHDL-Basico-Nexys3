library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end arreglo_reg;

architecture Behavioral of arreglo_reg is

signal mensa: STD_LOGIC_VECTOR(63 downto 0);
constant men_mostrar:STD_LOGIC_VECTOR(63 downto 0):=X"0123456789ABCDEF";

begin
	process(clear,clk)
	begin
		if(clear='1')then
			mensa <= men_mostrar;
		elsif(clk' event and clk ='1')then
			mensa(63 downto 4) <= mensa(59 downto 0);
			mensa(3 downto 0) <= mensa(63 downto 60);
		end if;
	end process;
	salida<=mensa(63 downto 56);
end Behavioral;

