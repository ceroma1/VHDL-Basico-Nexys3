library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity cuenta is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (1 downto 0));
end cuenta;

architecture Behavioral of cuenta is

signal cuenta:STD_LOGIC_VECTOR (1 downto 0);

begin
	process(clk, clear)
		begin
		if clear = '1' then
		cuenta <= "11";
		elsif clk' event and clk ='1' then
			if cuenta = "10" then
				cuenta <=(others=>'0') ;
			else
				cuenta <= cuenta+1;
			end if;
		end if;
	end process;
	salidacuenta<=cuenta;
end Behavioral;  
  
