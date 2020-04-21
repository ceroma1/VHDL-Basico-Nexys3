library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end Modulodisplay;

architecture Behavioral of Modulodisplay is

begin

process(a)
	begin
		case a is  --Esta es la tabla de caracteres a mostrar solo uso 9 de 15 posibles.
			when "0000" =>seg<="1111111";--off
			when "0001" =>seg<="0001001";--H
			when "0010" =>seg<="1000000";--O
			when "0011" =>seg<="1000111";--L
			when "0100" =>seg<="0001000";--A
			when "0101" =>seg<="0000111";--T
			when "0110" =>seg<="0100001";--D
			when "0111" =>seg<="1000110";--C
			when "1000" =>seg<="0010010";--S
			when "1001" =>seg<="0000110";--E
			when others =>seg<="ZZZZZZZ";
		end case;
	end process;
end Behavioral;

