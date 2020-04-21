library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegDesp is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  R_L : in  STD_LOGIC;
           DatoIn : in  STD_LOGIC;
           DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end RegDesp;
  
architecture Behavioral of RegDesp is
signal S_dato:STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
begin
process(clk,clear)
begin
	if(clear='1')then
		S_dato<=(others=>'0');
	elsif(clk' event and clk ='1') then
		if(R_L = '0') then
			--Derecha
			S_dato(7)<=DatoIn;
			S_dato(6 downto 0)<=S_dato(7 downto 1);
		else
			--Izquierda
			S_dato(0)<=DatoIn;
			S_dato(7 downto 1)<=S_dato(6 downto 0);
		end if; 
	end if; 
end process;
	DatoOut<=S_dato;
end Behavioral;

