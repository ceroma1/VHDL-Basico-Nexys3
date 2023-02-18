library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxFin is
    Port ( dato_a : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_b : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_c : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_d : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_fout : out  STD_LOGIC_VECTOR (6 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end MuxFin;

architecture Behavioral of MuxFin is
begin
process (sel,dato_a,dato_b,dato_c,dato_d)
begin
	case sel is
	when"001" =>dato_fout<=dato_a;
	when"010" =>dato_fout<=dato_b;
	when"011" =>dato_fout<=dato_c;
	when"100" =>dato_fout<=dato_d;
	when others =>dato_fout<="1111111";
	end case;
end process;
end Behavioral;

