library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
    Port ( clk : in  STD_LOGIC;
			  carga : in  STD_LOGIC;	
           clear : in std_logic;
			  DatoIn : in  STD_LOGIC_VECTOR (7 downto 0);
           DatoOut : out  STD_LOGIC_VECTOR (7 downto 0));
end registro;

architecture Behavioral of registro is
  
begin
	    
	process(clear,clk)
		begin
			if(clear='1')then
				DatoOut <= (others=>'0');
		elsif(clk' event and clk ='1')then
			  if(carga ='1') then
				 DatoOut<=DatoIn;
			  end if;
		end if;
end process;
end Behavioral;

