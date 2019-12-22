library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;

entity codigeneric is
	 generic(n:integer :=3);
    Port ( entrada : in  STD_LOGIC_VECTOR (2**n-1 downto 0);
           valido: out STD_LOGIC;			
           salida : out  STD_LOGIC_VECTOR (n-1 downto 0));
end codigeneric;
  
architecture Behavioral of codigeneric is
             
begin
	process(entrada)
	begin
		salida <= (others => '0');  
		valido <= '0';
		for i in 0 to 2**n-1 loop
			if(entrada(i)='1') then
				salida <= conv_std_logic_vector(i,n);
				valido <='1';
			end if;
		end loop;
	end process;
end Behavioral; 

