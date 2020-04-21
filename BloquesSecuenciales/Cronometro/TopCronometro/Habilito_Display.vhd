library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Habilito_Display is
    Port ( selec : in STD_LOGIC_VECTOR (1 downto 0);
           anodos : out STD_LOGIC_VECTOR (3 downto 0));
end Habilito_Display;

architecture Behavioral of Habilito_Display is

begin
process(selec)
  begin
	case selec is
	  when "00" =>anodos<="1110";
	  when "01" =>anodos<="1101";
	  when "10" =>anodos<="1011";
	  when "11" =>anodos<="0111";
	when others =>anodos<="1111";
	end case;
end process;
end Behavioral;
