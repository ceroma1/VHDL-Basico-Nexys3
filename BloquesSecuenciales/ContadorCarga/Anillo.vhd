library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity Anillo is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  Load : in  STD_LOGIC;
           DatoIn : in STD_LOGIC_VECTOR (7 downto 0);
			  DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end Anillo;

architecture Behavioral of Anillo is
signal dato: STD_LOGIC_VECTOR (7 downto 0):="00000000";
begin
	process(clk,clear)
	begin
		if(clear='1')then
			dato<="00000000";
		elsif(clk' event and clk='1')then
			if (Load='1')then
				dato<=dato+1;
			else
				dato<=datoIN;
			end if;
		end if;
	end process;
	DatoOut<=dato;
end Behavioral;
