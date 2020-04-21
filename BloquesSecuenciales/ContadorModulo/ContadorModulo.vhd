library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity ContadorModulo is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end ContadorModulo;

architecture Behavioral of ContadorModulo is

signal contador: STD_LOGIC_VECTOR (3 downto 0);

begin
	process(clk,reset)
		begin
			if(reset='1')then
				contador<=(others=>'0');
			elsif(clk' event and clk= '1') then
				if contador = "1100" then
					contador <=(others=>'0') ;
				else
					contador <= contador+1;
				end if;
			end if;
	end process;
led<=contador;
end Behavioral;

 