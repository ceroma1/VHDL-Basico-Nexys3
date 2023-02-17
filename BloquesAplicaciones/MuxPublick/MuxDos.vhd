library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxDos is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           fout : out  STD_LOGIC_VECTOR (6 downto 0));
end MuxDos;

architecture Behavioral of MuxDos is
begin
process (sel)
begin
	case sel is
	when "001" =>fout<="0001000";--a
	when "010" =>fout<="1000111";--l
	when "011" =>fout<="0000111";--t
	when "100" =>fout<="0111111";---
	when "101" =>fout<="0111111";---
	when others =>fout<="1111111";-- off
	end case;
end process;
end Behavioral;

