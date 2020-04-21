library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Anillo is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
           DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end Anillo;

architecture Behavioral of Anillo is
signal dato: STD_LOGIC_VECTOR (7 downto 0):="00000001";
begin
	process(clk,clear)
	begin
		if(clear='1')then
			dato<="00000001";
		elsif(clk' event and clk='1')then
			if (ce='1')then
				dato(0)<=dato(7);
				dato(7 downto 1)<=dato(6 downto 0);
			end if;
		end if;
	end process;
	DatoOut<=dato;
end Behavioral;

	--Derecha
	--if(clear='1')then
	--		dato<="10000000";
	--	elsif(clk' event and clk='1')then
	--		dato(7)<=dato(0);
	--		dato(6 downto 0)<=dato(7 downto 1);
	--	end if;

