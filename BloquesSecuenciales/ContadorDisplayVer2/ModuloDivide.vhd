library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ModuloDivide is
    Port ( clk : in  STD_LOGIC;
           Fout : out  STD_LOGIC);
end ModuloDivide;

architecture Behavioral of ModuloDivide is
-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la nexys  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/20ns ejemplo fincuenta= 0.5seg/10ns=50000000
-- cuenta = log(cuenta)/log(2) ejemplo cuenta= log(50000000)/log(2)= 25.575 se aproxima a 26

-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la basys 50MHZ => periodo 1/50MHZ =20ns
-- fincuenta = tiempo del alto/20ns ejemplo fincuenta= 0.5seg/20ns=25000000
--  cuenta = log(cuenta)/log(2) ejemplo cuenta= log(25000000)/log(2)= 24.575 se aproxima a 25

signal cuenta : natural range 0 to 2**26-1;
constant fincuenta : natural := 50000000;
signal unseg : std_logic:='0';
signal aux : std_logic:='0';

begin 

	Process (clk)
  
begin
	if clk'event and clk = '1' then
		if cuenta = fincuenta-1 then -- aqui se pone la constante en vez de 49999999
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
Fout<= aux;
end Behavioral;

