library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA is
	Port(clk: in std_logic;
		  HSync: out std_logic;
		  VSync: out std_logic;
		  Show: out std_logic;
		  HCount: out std_logic_vector(10 downto 0);
		  VCount: out std_logic_vector(9 downto 0));
end VGA;

architecture Behavioral of VGA is

signal VPos: std_logic_vector(9 downto 0);
signal HPos: std_logic_vector(10 downto 0);
signal VCe: std_logic;

begin

--Contador para pixeles horizontales
HCounter:Process(clk)
begin
	if(clk'event and clk='1')then
		if(HPos="10000010000")then
			HPos<="00000000000";
			VCe<='1';
		else
			HPos<=HPos+1;
			VCe<='0';
		end if;
	end if;
end process;

--Contador para pixeles verticales
VCounter:process(clk,VCe)
begin
	if(clk'event and clk='1' and VCe='1')then
		if(VPos="1010011010")then
			VPos<="0000000000";
		else
			VPos<=VPos+1;
		end if;
	end if;	
end process;

Sync:process(clk,HPos,VPos)
begin
if(clk'event and clk='1')then
	if(HPos>56 and HPos<176)then
		HSync<='0';
	else
		HSync<='1';
	end if;
	
	if(VPos>37 and VPos<43)then
		VSync<='0';
	else 
		VSync<='1';
	end if;
end if;
end process;

show<='1' when(((Hpos<1040)and(HPos>=240))and((VPos<666)and(VPos>=66))) else '0';


HCount<=HPos;
VCount<=VPos;

end Behavioral;

