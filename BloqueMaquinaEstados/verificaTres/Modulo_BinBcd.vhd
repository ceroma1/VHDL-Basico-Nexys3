library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Modulo_BinBcd is
    Port ( B : in  STD_LOGIC_VECTOR (7 downto 0);
           P : out STD_LOGIC_VECTOR (9 downto 0));
end Modulo_BinBcd;

architecture Behavioral of Modulo_BinBcd is
  
begin
		process(B)
		
	variable z:STD_LOGIC_VECTOR(17 downto 0);

	begin
			for i in 0 to 17 loop
					z(i):='0';
			end loop;
			z(10 downto 3):=b;
			for i in 0 to 4 loop
					if z(11 downto 8) > 4 then
						  z(11 downto 8):=z(11 downto 8)+3;
					end if;
					if z(15 downto 12) > 4 then
						  z(15 downto 12):=z(15 downto 12)+3;
					end if;
					z(17 downto 1):=z(16 downto 0);
			end loop;
			p<=z(17 downto 8);
	end process;
end Behavioral;

