library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_DRR is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           NQ1 : out  STD_LOGIC);
end flipflop_DRR;

architecture Behavioral of flipflop_DRR is
signal tmp_q: std_logic;
begin
	process(clk,reset)
	begin
		if(clk'event and clk='1') then
			if(reset='1') then
				tmp_q<='0';
			else
				tmp_q<=d;
			end if;
		end if;
	end process;
q1<=tmp_q; 
nq1<= not tmp_q;
end Behavioral;

