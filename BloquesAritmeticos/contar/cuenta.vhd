library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cuenta is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
			  f : out  STD_LOGIC_VECTOR (3 downto 0));
end cuenta;
  

architecture Behavioral of cuenta is

begin
				
	process(a)
		
		variable cont: integer;

		begin
		cont:=0;
		 
		for i in 0 to 7 loop
			if a(i)= '1' then
			cont:= cont+1;
			else
			cont:= cont;
			end if;
		end loop;
		f<=conv_std_logic_vector(cont,4);
		end process;
end Behavioral;
     
