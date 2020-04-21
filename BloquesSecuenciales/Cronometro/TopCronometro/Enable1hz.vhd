library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Enable1hz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           Fout1hz : out  STD_LOGIC);
end Enable1hz;

architecture Behavioral of Enable1hz is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  5MHZ => periodo 1/5MHZ =200ns
-- fincuenta = tiempo del alto/200ns ejemplo fincuenta= 1s/200ns=5000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(4500000)/log(2)= 22,25 se aproxima a 23

signal cuenta : natural range 0 to 2**23-1:=0;  
constant fincuenta : natural := 5000000;    
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
Fout1hz <=unseg;
end Behavioral;

