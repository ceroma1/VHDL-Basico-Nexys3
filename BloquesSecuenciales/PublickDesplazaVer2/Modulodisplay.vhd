library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end Modulodisplay;

architecture Behavioral of Modulodisplay is

begin

process(a)
	begin
		case a is --Esta es la tabla de caracteres a mostrar 27 caracteres del abecedario y los numeros 0 al 9
			when "000000" =>seg<="0001000";--A
			when "000001" =>seg<="0000011";--B
			when "000010" =>seg<="1000110";--C
			when "000011" =>seg<="0100001";--d
			when "000100" =>seg<="0000110";--E
			when "000101" =>seg<="0001110";--F
			when "000110" =>seg<="0000010";--G
			when "000111" =>seg<="0001001";--H
			when "001000" =>seg<="1001111";--I
			when "001001" =>seg<="1100000";--J
			when "001010" =>seg<="0001111";--K
			when "001011" =>seg<="1000111";--L
			when "001100" =>seg<="1001000";--M
			when "001101" =>seg<="0101011";--N
			when "001110" =>seg<="0101010";--
			when "001111" =>seg<="1000000";--O
			when "010000" =>seg<="0001100";--P
			when "010001" =>seg<="0011000";--Q
			when "010010" =>seg<="0101111";--R
			when "010011" =>seg<="0010010";--S
			when "010100" =>seg<="0000111";--T
			when "010101" =>seg<="1000001";--U
			when "010110" =>seg<="1100011";--V
			when "010111" =>seg<="0010101";--W
			when "011000" =>seg<="0110110";--X
			when "011001" =>seg<="0010001";--y
			when "011010" =>seg<="0101101";--Z
			when "011011" =>seg<="1111001";--1
			when "011100" =>seg<="0100100";--2
			when "011101" =>seg<="0110000";--3
			when "011110" =>seg<="0011001";--4
			when "011111" =>seg<="0010010";--5
			when "100000" =>seg<="0000010";--6
			when "100001" =>seg<="1111000";--7
			when "100010" =>seg<="0000000";--8
			when "100011"=>seg<="0011000";--9
			when "100100"=>seg<="1111111";--OFF
			when others =>seg<="ZZZZZZZ";
		end case;
	end process;
end Behavioral;