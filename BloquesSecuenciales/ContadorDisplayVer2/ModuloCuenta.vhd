library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ModuloCuenta is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fsalida : out  STD_LOGIC_VECTOR (13 downto 0));
end ModuloCuenta;

architecture Behavioral of ModuloCuenta is

SIGNAL cuenta: STD_LOGIC_VECTOR(13 DOWNTO 0);
  
begin
   
process(clk,reset,cuenta)

BEGIN

if reset='1'then

cuenta <= (others=>'0');

elsif(clk' event AND clk='1') then
		if cuenta = "10011100001111" then
			cuenta <=(others=>'0');
		else
			cuenta <= cuenta+1;
		end if;
	end if;
end process;
Fsalida<=cuenta;
end Behavioral;
