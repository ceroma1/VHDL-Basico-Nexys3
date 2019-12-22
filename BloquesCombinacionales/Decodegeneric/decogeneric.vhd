library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;   

entity decogeneric is
	 generic(n:integer :=3);
    Port ( entrada : in  STD_LOGIC_VECTOR (n-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (2**n-1 downto 0));
end decogeneric;

architecture Behavioral of decogeneric is
              
begin
	process(entrada)  
	variable i : integer;
	begin
		 i := conv_integer(entrada);
		 for a in 0 to 2**n-1 loop
			if(a=i) then
				salida(a)<='1';
			else
				salida(a)<='0';
			end if;
		 end loop;
		 end process;
end Behavioral;
 
