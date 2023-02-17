library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity ContadorControl is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0));
end ContadorControl;

architecture Behavioral of ContadorControl is

Begin

process(clk,reset,sel)
variable a : integer range 0 to 7;
variable b : integer range 0 to 15;
variable f : integer range 0 to 1;

begin 

	if(reset='1')then
		a:=0;
		b:=0;
		f:=0;
		led<=conv_std_logic_vector( b,4);
	elsif(clk' event and clk= '1') then
		if sel ='1' then
			b:=a*2;
			led <= conv_std_logic_vector( b,4);
			f:=1;
		else
			if(f=1) then
				a:=a-1;
				b:=(a*2)+1;
				led <= conv_std_logic_vector( b,4);
				f:=0;
			else
				b:=(a*2)+1;
				led <= conv_std_logic_vector( b,4);
			end if;
		end if;
		a:=a+1;
	end if;
end process;
end Behavioral;

