library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end divide;

architecture Behavioral of divide is

-- Para calcular cuenta y fincuenta se parte de:
-- reloj de la nexys  100MHZ => periodo 1/100MHZ =10ns
-- fincuenta = tiempo del alto/10ns ejemplo fincuenta= 500 us/10ns=50000
-- cuenta = log(fincuenta)/log(2) ejemplo cuenta= log(50000)/log(2)= 15.609 se aproxima a 16


--Valores Para u divisor de 1KHZ
--fincuenta:50000
--Cuenta 0 to 2**16-1 bit

--valores para un divisor de 1HZ
--fincuenta: 50000000
--cuenta 0 to 2**26-1 bit
 
signal cuenta : natural range 0 to 2**26-1;
constant fincuenta : natural := 50000000;
signal unseg : std_logic;
signal aux : std_logic;

begin 
	Process (reset,clk)
  
begin
	if reset = '1' then
		cuenta <= 0;
		unseg <= '0';
	elsif clk'event and clk = '1' then
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
Process (reset, clk)
begin
	if reset = '1' then
		aux <= '0';
	elsif clk'event and clk='1' then
		if unseg = '1' then
			aux <= not aux;
		end if;
	end if;
end process;

Foutdivide <= aux;

end Behavioral;


