library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity operaciones is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
			 sel: in  STD_LOGIC_VECTOR (1 downto 0);
           s : out  STD_LOGIC_VECTOR (7 downto 0));
end operaciones;

architecture Behavioral of operaciones is
    
begin
process(a,b,sel)
	variable Va,Vb,Vsu: integer;
	
	begin
		va:=conv_integer(a);
		vb:=conv_integer(b);
		vsu:=0;
	    
	if(sel="01")then
	vsu:=va+vb;
	elsif(sel="10")then
	vsu:=va-vb;
	elsif(sel="11")then
	vsu:=va*vb;
	else
	vsu:=0;
	end if;
	s<=conv_std_logic_vector(Vsu,8);
	end process;
	  
end Behavioral;

