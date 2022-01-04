library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_d is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           NQ1 : out  STD_LOGIC);
end ff_d;
 
architecture Behavioral of ff_d is
signal tmp_q: std_logic:='0';
begin
	process(clk) 
	begin
		IF(clk'event and clk='0') then
			tmp_q<=d;
		end if;
	end process;
q1<=tmp_q;
nq1<= not tmp_q;
end Behavioral;

