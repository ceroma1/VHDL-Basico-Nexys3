library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity camparageneric is
    generic(n:integer :=4);
	 Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0);
           b : in  STD_LOGIC_VECTOR (n-1 downto 0);
           salidaigual : out  STD_LOGIC;
           salidamayor : out  STD_LOGIC;
           salidamenor : out  STD_LOGIC);
end camparageneric;

architecture Behavioral of camparageneric is
           
begin
	process(a,b)
	begin
		salidaigual <='0';
      salidamayor <='0';
      salidamenor <='0';
		if (a = b) then 
			salidaigual <='1';
		elsif(a > b) then
			salidamayor <='1';
		elsif(a < b) then
			salidamenor <='1';
		end if;
	end process;
end Behavioral;

