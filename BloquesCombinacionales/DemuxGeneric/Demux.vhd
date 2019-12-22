library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux is
    generic(n:integer :=4);
		Port ( DatoIn : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Datout0 : out  STD_LOGIC_VECTOR (n-1 downto 0);
           Datout1 : out  STD_LOGIC_VECTOR (n-1 downto 0);
           Datout2 : out  STD_LOGIC_VECTOR (n-1 downto 0);
           Datout3 : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Demux;
 
architecture Behavioral of Demux is
 
begin
	
process(DatoIn,sel)
	begin
		Datout0 <=(others=>'0');
		Datout1 <=(others=>'0');
		Datout2 <=(others=>'0');
		Datout3 <=(others=>'0');
	if(sel="00")then
			Datout0 <= DatoIn;
		elsif(sel="01")then
			Datout1 <= DatoIn;
		elsif(sel="10")then
			Datout2 <= DatoIn;
		else
			Datout3 <= DatoIn;
		end if;
	end process;

end Behavioral;


