library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity bin_dec is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
        signo: out STD_LOGIC;	 
           f : out  STD_LOGIC_VECTOR (3 downto 0));
end bin_dec;
  
architecture Behavioral of bin_dec is
  
begin
	process(a)
		variable Va: integer;
		begin
			if(a(3)='1') then
va:=((conv_integer(a(0))*1)+(conv_integer(a(1))*2)+(conv_integer(a(2))*4)-(conv_integer(a(3))*8))*(-1);
f<=conv_std_logic_vector(Va,4);
signo<='1';
			else
				f<=a;
				signo<='0';
end if;
end process;



end Behavioral;

