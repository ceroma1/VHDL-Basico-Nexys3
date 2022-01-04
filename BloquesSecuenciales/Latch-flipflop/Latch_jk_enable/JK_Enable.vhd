library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_Enable is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           en : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           NQ1 : inout  STD_LOGIC);
end JK_Enable;

architecture Behavioral of JK_Enable is

begin
process (en,j,k)
variable sg_temp: std_logic:='0';
begin
if(en = '1') then
	if(j='0' and k='0') then
		sg_temp:=sg_temp;
	elsif(j='1' and k='1') then
		sg_temp:= not sg_temp;
	elsif(j='0' and k='1') then
		sg_temp:='0';
	else
		sg_temp:='1';
	end if;
else  
		sg_temp:=sg_temp;
end if;
q1<=sg_temp;
nq1<= not sg_temp;
end process;
end Behavioral;




