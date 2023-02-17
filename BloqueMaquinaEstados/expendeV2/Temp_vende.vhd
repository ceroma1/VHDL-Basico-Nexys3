library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Temp_vende is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           fin2s : out  STD_LOGIC);
end Temp_vende;

architecture Behavioral of Temp_vende is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj a usar  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 2s/10ns=200000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(200000000)/log(2)= 27,57 se aproxima a 28

signal cuenta : natural range 0 to 2**28-1:=0;  
constant fincuenta : natural := 200000000;    
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
fin2s <=unseg;
end Behavioral;

