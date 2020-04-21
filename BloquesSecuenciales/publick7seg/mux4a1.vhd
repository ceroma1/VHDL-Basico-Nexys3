library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           fout : out  STD_LOGIC_VECTOR (6 downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is

begin
process (sel)
begin
	case sel is
	when "000" =>fout<="1111111";
	when "001" =>fout<="0001000";--A
	when "010" =>fout<="1000111";--L
	when "011" =>fout<="1000000";--O
	when others =>fout<="0001001";--H
	end case;
end process;

end Behavioral;

			