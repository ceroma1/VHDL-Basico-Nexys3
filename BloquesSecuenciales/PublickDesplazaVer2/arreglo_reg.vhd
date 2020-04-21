library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (23 downto 0));
end arreglo_reg;

architecture Behavioral of arreglo_reg is

signal mensa: STD_LOGIC_VECTOR(221 downto 0);
constant men_mostrar:STD_LOGIC_VECTOR(221 downto 0):="000000000001000010000011000100000101000110000111001000001001001010001011001100001101001110001111010000010001010010010011010100010101010110010111011000011001011010011011011100011101011110011111100000100001100010100011100100";
begin
	process(clear,clk)
	begin
		if(clear='1')then
			mensa <= men_mostrar;
		elsif(clk' event and clk ='1')then
			mensa(221 downto 6) <= mensa(215 downto 0);
			mensa(5 downto 0) <= mensa(221 downto 216);
		end if;
	end process;
	salida<=mensa(221 downto 198);
end Behavioral;

