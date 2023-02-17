library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TiempoBase is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Ftiempo : out  STD_LOGIC);
end TiempoBase;
 
architecture Behavioral of TiempoBase is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
--Tiempo base 1ms 
-- fincuenta = tiempo entre flancos de subida tiempoFlanco/10ns ejemplo fincuenta= 1sg/10ns=100000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(100000000)/log(2)= 26,57 se aproxima a 27

signal cuenta : natural range 0 to 2**27-1;--2**17-1; --2**27-1;
constant fincuenta : natural := 100000000; --100000;--100000000;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
	
		if cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
            unseg  <= '0';
		end if;
	end if;
end process;
ftiempo <=unseg;
end Behavioral;
