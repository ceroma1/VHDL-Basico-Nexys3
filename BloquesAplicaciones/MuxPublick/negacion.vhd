library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (2 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end negacion;

architecture Behavioral of negacion is

begin
process (btn)
begin
	case btn is
		when "001" =>anodo<="0111";
		when "010" =>anodo<="1011";
		when "011" =>anodo<="1101";
		when "100" =>anodo<="1110";
		when others =>anodo<="1111";
	end case;
end process;end Behavioral;
