library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_signed.ALL;


entity presenta is
    Port ( DatoEnt : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           DatoSal : out  STD_LOGIC_VECTOR (5 downto 0));
end presenta;

architecture Behavioral of presenta is

begin
process(DatoEnt,sel)
	begin
		if(sel='0')then
		DatoSal<='0'&DatoEnt;
		else
			if(DatoEnt(4)='1')then
				DatoSal<="00"&DatoEnt(3 downto 0);
			else
				DatoSal<="11"&DatoEnt(3 downto 0);
			end if;
		end if;
end process;
end Behavioral;

