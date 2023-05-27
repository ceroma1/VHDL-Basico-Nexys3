library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Sync is
	Port(clk: in STD_LOGIC;
		  HSync: out STD_LOGIC;
		  VSync: out STD_LOGIC;
		  R: out STD_LOGIC_VECTOR(2 downto 0);
		  G: out STD_LOGIC_VECTOR(2 downto 0);
		  B: out STD_LOGIC_VECTOR(1 downto 0));
end Sync;

architecture Behavioral of Sync is

--Calculos para una pantalla 800x600 px, 50MHz, refresh rate: 72Hz
signal HPosition: integer range 0 to 1040; --En Horizontal: 800 display+56 front porch+120 Sync pulse+60 back porch
signal VPosition: integer range 0 to 666;  --En Vertical: 600 display+37 front porch+6	sync pulse+23 back porch

begin

Process(clk) --Mostramos una cruz en medio de la pantalla
begin
	if(clk'event and clk='1')then      --Esta seccion podria ser un process aparte con la imagen que se quiera mostrar
		if(HPosition=640 or VPosition=366)then
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'1');
		else
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
		end if;
--CONTADOR PARA LA POSICION EN HORIZONTAL
		if(HPosition<1040)then
			HPosition<=HPosition+1;
		else
			HPosition<=0;
			--CONTADOR PARA LA POSICION EN VERTICAL
			if(VPosition<666)then
				VPosition<=Vposition+1;
			else
				Vposition<=0;
			end if;
		end if;

--ACTIVACION PARA HSYNC
		if(HPosition>56 AND HPosition<176)then --Entre los 120px del sync pulse
			HSync<='0';
		else
			HSync<='1';
		end if;
--ACTIVACION PARA VSYNC
		if(VPosition>37 AND VPosition<43)then --Entre los 6px del sync pulse
			VSync<='0';
		else
			VSync<='1';
		end if;
--Garantizamos que mientras se encuentre fuera de los 800x600px a mostrar sea de color negro

		if(HPosition>0 AND HPosition<240)OR(VPosition>0 AND VPosition<66)then
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
		end if;
	end if;
end process;
end Behavioral;

