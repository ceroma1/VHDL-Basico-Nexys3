library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TemReb is
    Port ( ce: in STD_LOGIC;
			  clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Finms : out  STD_LOGIC);
end TemReb;

architecture Behavioral of TemReb is

signal cuenta : natural range 0 to 2**20-1:=0;  
constant fincuenta : natural := 1000000;    
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
Finms <=unseg;
end Behavioral;

