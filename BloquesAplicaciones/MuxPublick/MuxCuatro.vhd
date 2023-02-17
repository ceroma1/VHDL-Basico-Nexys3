library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxCuatro is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           fout : out  STD_LOGIC_VECTOR (6 downto 0));
end MuxCuatro;

architecture Behavioral of MuxCuatro is
begin
process (sel)
begin
	case sel is
	when "001" =>fout<="0010010";--s
	when "010" =>fout<="0010001";--y
	when "011" =>fout<="0001100";--p
	when "100" =>fout<="0111111";---
	when "101" =>fout<="0110000";--3
	when others =>fout<="1111111";-- off
	end case;
end process;
end Behavioral;

