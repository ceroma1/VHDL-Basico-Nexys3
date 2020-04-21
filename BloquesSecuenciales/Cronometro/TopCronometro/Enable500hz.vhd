library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Enable500hz is
    Port ( clk : in  STD_LOGIC;
           Fout500 : out  STD_LOGIC);
end Enable500hz;

architecture Behavioral of Enable500hz is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  5MHZ => periodo 1/5MHZ =200ns
-- fincuenta = tiempo del alto/200ns ejemplo fincuenta= 2ms/200ns=10000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(10000)/log(2)= 13,28 se aproxima a 14

signal cuenta : natural range 0 to 2**14-1:=0;
constant fincuenta : natural := 10000;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

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
Fout500 <= unseg;
end Behavioral;

