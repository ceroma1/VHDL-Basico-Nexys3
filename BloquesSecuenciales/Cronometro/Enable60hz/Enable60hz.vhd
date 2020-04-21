library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Enable60hz is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout60hz : out  STD_LOGIC);
end Enable60hz;

architecture Behavioral of Enable60hz is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  5MHZ => periodo 1/5MHZ =200ns
-- fincuenta = tiempo del alto/200ns ejemplo fincuenta= 60s/200ns=300000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(300000000)/log(2)= 28,16 se aproxima a 29

signal cuenta : integer  range 0 to 2**29-1:=0;
constant fincuenta : integer := 300000000;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk,reset)
  
begin
    if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
		if ce = '1'then
          unseg <= '0';
	elsif cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;
Fout60hz <= unseg;
end Behavioral;

