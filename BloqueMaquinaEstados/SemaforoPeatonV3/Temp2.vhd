library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Temp2 is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           fin10sg : out  STD_LOGIC);
end Temp2;

architecture Behavioral of Temp2 is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 10s/10ns=1000000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(1000000000)/log(2)= 29,89 se aproxima a 30

signal cuenta : natural range 0 to 2**30-1:=0; --2**20-1; --2**30-1:=0;  
constant fincuenta : natural := 1000000000;    --1000000; --1000000000;    
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin
	Process (clk,reset)
  
begin
   if reset = '1' then
        cuenta <= 0;
        unseg <= '0';
	elsif clk'event and clk = '1' then
		if ce = '0'then
          unseg <= '0';
			 cuenta <= 0;--ojo adicional
	elsif cuenta = fincuenta-1 then 
			cuenta <= 0;
			unseg <= '1';
		else
			cuenta <= cuenta + 1;
			unseg <= '0';
		end if;
	end if;
end process;
fin10sg <=unseg;
end Behavioral;