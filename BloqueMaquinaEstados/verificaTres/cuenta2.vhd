library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity cuenta2 is
 Port ( clk : in  STD_LOGIC;
        clear : in  STD_LOGIC;
		  ce : in  STD_LOGIC;
        salidacuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end cuenta2;

architecture Behavioral of cuenta2 is
signal cuenta:STD_LOGIC_VECTOR (7 downto 0);--:="0000";
begin
	process(clk, clear)
		begin
		if clear = '1' then
			cuenta <= (others =>'0');
		elsif clk' event and clk ='1' then
			if ce = '1' then
				cuenta <= (cuenta + 1);
			else
				cuenta <= cuenta;
			end if; 
		end if;
	end process;
salidacuenta<=cuenta;
end Behavioral;

