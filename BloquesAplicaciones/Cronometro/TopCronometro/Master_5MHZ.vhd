library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Master_5MHZ is
    Port ( clk : in  STD_LOGIC;
			  f5mhz : out  STD_LOGIC);
end Master_5MHZ;
 
architecture Behavioral of Master_5MHZ is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la nexys  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 100ns/10ns=10
-- cuenta = log(fincuenta)/log(2) ejemplo cuenta= log(10)/log(2)= 3.3219 se aproxima a 4

signal cuenta : natural range 0 to 2**4-1;
constant fincuenta : natural := 10;
signal unseg : std_logic:='0';
signal aux : std_logic:='0';

begin 

	Process (clk)
  
begin
	if clk'event and clk = '1' then
		if cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;

--flip flop
Process (clk)
begin
	if clk'event and clk='1' then
		if unseg = '1' then
			aux <= not aux;
		end if;
	end if;
end process;
f5mhz <= aux;
end Behavioral;

