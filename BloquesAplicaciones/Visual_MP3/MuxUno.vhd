library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxUno is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Fout : out  STD_LOGIC_VECTOR (6 downto 0));
end MuxUno;

architecture Behavioral of MuxUno is
begin
process (sel)
begin
	case sel is
	when "001" =>fout<="0001100";--p
	when "010" =>fout<="0001100";--p
	when "011" =>fout<="0010010";--s
	when "100" =>fout<="0000110";--E
	when "101" =>fout<="0111111";---
	when others =>fout<="1111111";-- off
	end case;
end process;
end Behavioral;

