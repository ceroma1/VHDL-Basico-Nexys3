library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Move is
	Port(clk: in std_logic;
		  Keys: in std_logic_vector(3 downto 0);--Pulsadores
		  Show: in std_logic;
		  HPos: in std_logic_vector(10 downto 0);
		  VPos: in std_logic_vector(9 downto 0);
		  R: out std_Logic_vector(2 downto 0);
		  G: out std_Logic_vector(2 downto 0);
		  B: out std_Logic_vector(1 downto 0));
end Move;

+architecture Behavioral of Move is

signal SqrX: integer range 0 to 1040:=500;
signal SqrY: integer range 0 to 666:=300;
signal draw: std_logic:='0';

begin

Process(clk,HPos,VPos,Show,draw,SqrX,SqrY)
begin
if(clk'event and clk='1')then
	if((HPos>SqrX and HPos<(SqrX+100)) and (VPos>SqrY and VPos<(SqrY+100)))then
		draw<='1';
	else
		draw<='0';
	end if;
	
	if(show='1')then		
		if(draw='1')then
			R<=(others=>'1');
			G<=(others=>'0');
			B<=(others=>'1');
		else
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
		end if;
	end if;
end if;
end process;

Movement:process(clk,keys,SqrX,SqrY,VPos,HPos)
begin
if(clk'event and clk='1')then
	if(VPos="0000000000" and HPos="00000000000")then
		if(Keys(0)='1')then --Movimiento hacia la derecha
			SqrX<=SqrX+5;
		end if;
		
		if(Keys(1)='1')then --Movimiento hacia la izquierda
			SqrX<=SqrX-5;
		end if;
		
		if(Keys(2)='1')then --Movimiento hacia arriba
			SqrY<=SqrY-5;
		end if;
		
		if(Keys(3)='1')then --Movimiento hacia abajo
			SqrY<=SqrY+5;
		end if;
	else
		Sqrx<=SqrX;
		SqrY<=SqrY;
	end if;
end if;
end process;

end Behavioral;

