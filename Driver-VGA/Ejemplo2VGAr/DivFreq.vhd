library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DivFreq is
	Port ( clk : in  STD_LOGIC;
          reset : in  STD_LOGIC;
          FoutDivide : out  STD_LOGIC);
end DivFreq;

architecture Behavioral of DivFreq is
signal cuenta: natural range 0 to 1; --frecuencia 50Mhz
constant fincuenta: natural := 1;
signal unseg: std_logic;
--signal aux: std_logic;

begin

Process(reset,clk)
	begin
		if (reset='1') then
			cuenta<=0;
			unseg<='0';
		elsif (clk' event and clk='1') then
			if (cuenta=fincuenta) then
				cuenta<=0;
				unseg<='1';
			else
				cuenta<=cuenta+1;
				unseg<='0';
			end if;
		end if;
	end process;
	
	--flip flop
--	Process(reset,clk)
--	begin
--		if (reset='1') then
--			aux<='0';
--		elsif (clk' event and clk='1') then
--			if (unseg='1') then
--				aux<=not aux;
--			end if;
--		end if;
--	end process;
--	
	FoutDivide<=unseg;


end Behavioral;
