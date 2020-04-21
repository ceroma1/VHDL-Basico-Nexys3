library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (2 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end negacion;

architecture Behavioral of negacion is
signal sg1 :std_logic_vector(1 downto 0);

begin
process (btn)
begin
	case btn is
		when "000" =>anodo<="1111";
		when "001" =>anodo<="1110";
		when "010" =>anodo<="1101";
		when "011" =>anodo<="1011";
		when others =>anodo<="0111";
	end case;
end process;end Behavioral;
