library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity negacion is
    Port ( btn : in  STD_LOGIC;
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end negacion;

architecture Behavioral of negacion is
signal sg1 :std_logic_vector(1 downto 0);

begin
process (btn)
begin
	case btn is
		when '0' =>anodo<="1110";
		when '1' =>anodo<="1101";
		when others =>anodo<="ZZZZ";
	end case;
end process;end Behavioral;
