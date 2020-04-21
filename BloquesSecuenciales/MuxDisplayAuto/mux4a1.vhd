library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           fout : out  STD_LOGIC_VECTOR (3 downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is

begin
process (sel,a,b)
begin
	case sel is
		when '0' =>fout<=a;
		when '1' =>fout<=b;
		when others =>fout<="ZZZZ";
	end case;
end process;

end Behavioral;

