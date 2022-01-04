library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_DR is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           NQ1 : out  STD_LOGIC);
end ff_DR;

architecture Behavioral of ff_DR is
signal tmp_q: std_logic;
begin
	process(clk,reset)
	begin
		if(reset='1') then
			tmp_q<='0';
		elsif(clk'event and clk='1') then
			tmp_q<=d;
		end if; 
	end process;
q1<=tmp_q;
nq1<= not tmp_q;
end Behavioral;

