library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           selec : in  STD_LOGIC;
           comple : out  STD_LOGIC_VECTOR (3 downto 0));
end complemento;

architecture Behavioral of complemento is

begin

process(a,selec)
		begin
			if(selec='1') then
				comple<=not a ;
			else
				comple<=a;
			end if;
	end process;

	
end Behavioral;
