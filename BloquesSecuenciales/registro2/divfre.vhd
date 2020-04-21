library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity divfre is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk3 : out  STD_LOGIC);
end divfre;

architecture Behavioral of divfre is

signal temp:std_logic_vector(25 downto 0);

begin
	process(clk,clear)
	begin
		if(clear='1')then
			temp<=(others=>'0');
		elsif(clk' event and clk ='1')then
			temp<=temp+1;
		end if;
	end process;
clk3<=temp(25);--100Mhz/2^26=1.490hz  periodo=0.67s
end Behavioral;

