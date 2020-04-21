library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity divfre is
    Port ( clk : in  STD_LOGIC;
           clk3 : out  STD_LOGIC;
           clk190 : out  STD_LOGIC);
end divfre;

architecture Behavioral of divfre is

signal temp:std_logic_vector(25 downto 0):="00000000000000000000000000";

begin
	process(clk)
	begin
		if(clk' event and clk ='1')then
			temp<=temp+1;
		end if;
	end process;
clk3<=temp(25);--100Mhz/2^26=1.490hz  periodo=0.67s
clk190<=temp(15);--100Mhz/2^19=190.73hz periodo=5.24ms
end Behavioral;

