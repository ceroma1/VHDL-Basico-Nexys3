library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Display is
    Port ( Dato : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end Display;

architecture Behavioral of Display is

begin
process(Dato)
	begin
		case Dato is
			when "0000" =>segmento<="1000000";
			when "0001" =>segmento<="1111001";
			when "0010" =>segmento<="0100100";
			when "0011" =>segmento<="0110000";
			when "0100" =>segmento<="0011001";
			when "0101" =>segmento<="0010010";
			when "0110" =>segmento<="0000010";
			when "0111" =>segmento<="1111000";
			when "1000" =>segmento<="0000000";
			when "1001" =>segmento<="0011000";
			when "1010" =>segmento<="0001000";
			when "1011" =>segmento<="0000011";
			when "1100" =>segmento<="1000110";
			when "1101" =>segmento<="0100001";
			when "1110" =>segmento<="0000110";
			when "1111" =>segmento<="0001110";
			when others =>segmento<="ZZZZZZZ";
		end case;
	end process;
end Behavioral;

