library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end Modulodisplay;

architecture Behavioral of Modulodisplay is

begin

process(a)
	begin
		case a is
			when "0000" =>seg<="1000000";
			when "0001" =>seg<="1111001";
			when "0010" =>seg<="0100100";
			when "0011" =>seg<="0110000";
			when "0100" =>seg<="0011001";
			when "0101" =>seg<="0010010";
			when "0110" =>seg<="0000010";
			when "0111" =>seg<="1111000";
			when "1000" =>seg<="0000000";
			when "1001" =>seg<="0011000";
			when others =>seg<="0000000";
		end case;
	end process;
end Behavioral;

