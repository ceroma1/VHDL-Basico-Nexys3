library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CombinaSalida is
    Port ( Inq : in  STD_LOGIC_VECTOR (2 downto 0);
           Foutq : out  STD_LOGIC_VECTOR (2 downto 0));
end CombinaSalida;

architecture Behavioral of CombinaSalida is

begin
	process(Inq)
		begin
		case Inq Is
		when "000"=>Foutq<="111";
		when "001"=>Foutq<="100";
		when "010"=>Foutq<="001";
		when "011"=>Foutq<="100";
		when "100"=>Foutq<="011";
		when "101"=>Foutq<="000";
		when "110"=>Foutq<="100";
		when "111"=>Foutq<="101";
		when others=>foutq<=(others=>'0');
		end case;
	end process;
end Behavioral;

