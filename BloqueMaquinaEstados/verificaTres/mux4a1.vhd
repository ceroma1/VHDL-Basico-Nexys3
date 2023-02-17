library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
			  c : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           fout : out  STD_LOGIC_VECTOR (3 downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is

begin  
process (sel,a,b,c)
begin
	case sel is
		when "00" =>fout<=a;
		when "01" =>fout<=b;
		when "10" =>fout<=c;
		when others =>fout<="1111";
	end case;
end process;

end Behavioral;

