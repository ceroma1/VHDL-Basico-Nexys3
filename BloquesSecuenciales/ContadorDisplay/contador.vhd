library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
    Port ( Borra : in  STD_LOGIC;
           reloj : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Behavioral of contador is

SIGNAL cuenta: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

process(reloj,borra,cuenta)

BEGIN

if borra='1'then

cuenta <= (others=>'0');

elsif(reloj' event AND reloj='1') then
		cuenta <= cuenta+1;
	else
		cuenta <= cuenta;
	end if;

end process;

salida<=cuenta;

end Behavioral;

