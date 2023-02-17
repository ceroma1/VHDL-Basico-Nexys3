library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cntAmarillo is
    Port ( maqAmarillo : in  STD_LOGIC;
           blinkAmarillo : in  STD_LOGIC;
           Ce_Amarillo : in  STD_LOGIC;
           LuzAmarillo : out  STD_LOGIC);
end cntAmarillo;

architecture Behavioral of cntAmarillo is

begin
process(Ce_Amarillo,maqAmarillo,blinkAmarillo)
begin
	if Ce_Amarillo='0' then
		LuzAmarillo <= maqAmarillo;
	else
		LuzAmarillo <=blinkAmarillo;
	end if;
end process;
end Behavioral;

