library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Baudios is
    Port (clk : in STD_LOGIC;
           reset : in STD_LOGIC;
      fbaudio : out STD_LOGIC);
end Baudios;

architecture Behavioral of Baudios is

--Frecuencia de reloj: 100MHZ => periodo=10ns
--Velocidad de transmision serial:115200bps,8 bits de datos por palabra,sin bit de paridad y un bit de parada.
--1/115200=8.680us
--para muestreo cada medio bit 8.680us/16=542.534ns
--542.534ns/10ns=54.25 aproximo a 55
--log(55)/log(2)=5.78 aproximo a 6

signal cuenta : natural range 0 to 2**6-1;
constant fincuenta : natural := 55;
signal unseg : std_logic:='0';
signal aux : std_logic:='1';

begin 

	Process (clk,reset)
  
begin
    if reset = '0' then
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
fbaudio <=unseg;
end Behavioral;
