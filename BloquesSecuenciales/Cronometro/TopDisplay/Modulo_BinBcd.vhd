library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Modulo_BinBcd is
    Port ( DatoIN : in  STD_LOGIC_VECTOR (5 downto 0);
           DatoOut : out STD_LOGIC_VECTOR (7 downto 0));
end Modulo_BinBcd;

architecture Behavioral of Modulo_BinBcd is

begin 
  process(DatoIN)
	variable z:STD_LOGIC_VECTOR(12 downto 0);
  begin
	for i in 0 to 12 loop
	  z(i):='0';
	end loop;
	z(8 downto 3):=DatoIN;
	for i in 0 to 2 loop
	  if z(9 downto 6) > 4 then
		z(9 downto 6):=z(9 downto 6)+3;
	  end if;
	z(12 downto 1):=z(11 downto 0);
	end loop;
  DatoOut<='0'&z(12 downto 6);
 end process;
end Behavioral;

