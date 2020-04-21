library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (15 downto 0));
end arreglo_reg;

architecture Behavioral of arreglo_reg is

signal mensa: STD_LOGIC_VECTOR(83 downto 0); 
constant men_mostrar:STD_LOGIC_VECTOR(83 downto 0):=X"123404052640340734890";
--:=X"" Es el mensaje que quiero mostrar basado en los 15 caracteres que puedo tener como maximo.
begin
	process(clear,clk)
	begin
		if(clear='1')then
			mensa <=men_mostrar;
		elsif(clk' event and clk ='1')then
			mensa(83 downto 4) <= mensa(79downto 0);
			mensa(3 downto 0) <= mensa(83 downto 80);
		end if;
	end process;
	salida<=mensa(83 downto 68);
end Behavioral;