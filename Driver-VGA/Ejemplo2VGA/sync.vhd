library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY SYNC IS
	PORT(
		CLK  : IN STD_LOGIC;                   --reloj para vga
		HSYNC: OUT STD_LOGIC;                  --senal de sincronia horizontal
		VSYNC: OUT STD_LOGIC;                  --senal de sincronia vertical
		R:     OUT STD_LOGIC_VECTOR(2 downto 0); -- colores
		G:     OUT STD_LOGIC_VECTOR(2 downto 0);
		B:     OUT STD_LOGIC_VECTOR(1 downto 0);
		
		KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0) --pulsadores
		);
END SYNC;

ARCHITECTURE MAIN OF SYNC IS
-----800x600 @72 Hz,  pixel clock 50 MHz
 --SIGNAL RGB: STD_LOGIC_VECTOR(3 downto 0);
 SIGNAL HPOS: INTEGER RANGE 0 TO 1040:=0;
 SIGNAL VPOS: INTEGER RANGE 0 TO 666:=0;
 
 SIGNAL SQ_X: INTEGER RANGE 0 TO 1040:=500;
 SIGNAL SQ_Y: INTEGER RANGE 0 TO 666:=300;
 SIGNAL DRAW:STD_LOGIC:='0';
 ----------------------------------procedimiento square-----------------------------------------------------------------------------------------
PROCEDURE SQ(SIGNAL Xcur,Ycur,Xpos,Ypos:IN INTEGER;
				 --SIGNAL RGB:  OUT STD_LOGIC_VECTOR(3 downto 0);
				 SIGNAL DRAW: OUT STD_LOGIC) IS
 BEGIN
 IF(Xcur>Xpos AND Xcur<(Xpos+100) AND Ycur>Ypos AND Ycur<(Ypos+100))THEN
	--RGB<="1111";
	DRAW<='1';
	ELSE
	DRAW<='0';
 END IF;
END SQ;
---------------------------------------------------------------------------------
BEGIN
-----------------------------------------------------------------------------------------------------------------
  SQ(HPOS,VPOS,SQ_X,SQ_Y,DRAW);
-----------------------------------------------------------------------------------------------------------------
 PROCESS(CLK)
   BEGIN
   IF (clk'event and clk ='1') THEN
		IF (HPOS<1040) THEN 
		 HPOS<=HPOS+1;
		ELSE
			 HPOS<=0;
			 IF(VPOS<666)THEN
				 VPOS<=VPOS+1;
			 ELSE
				 VPOS<=0;     
			 END IF;
		END IF;
      -- sincronia horizontal
		IF(HPOS>56 AND HPOS<176)THEN----HSYNC
	      HSYNC<='0';
	   ELSE
	      HSYNC<='1';
	   END IF;	 
		-- sincronia vertical
		IF(VPOS>37 AND VPOS<43)THEN-----vsync
	      VSYNC<='0';
	   ELSE
	      VSYNC<='1';
	   END IF;
		-- rgb por fuera del dysplay	
		
		IF((HPOS>0 AND HPOS<240) OR (VPOS>0 AND VPOS<66))THEN
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
	   END IF;		
		
	   -- vamos a dibujar el cuadro cuando draw=1
		IF(DRAW='1')THEN
			R<=(others=>'1');
			G<=(others=>'0');
			B<=(others=>'1');
		ELSE	
		   R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
      END IF;		
		--mover el cuadro solo si estamos en (0,0)
		IF(VPOS=0 AND HPOS=0) THEN
			IF(KEYS(0)='1')THEN
				 SQ_X<=SQ_X+5;
			END IF;
			
			IF(KEYS(1)='1')THEN
				 SQ_X<=SQ_X-5;
			END IF;
			
			IF(KEYS(2)='1')THEN
				SQ_Y<=SQ_Y-5;
			END IF;
			
			IF(KEYS(3)='1')THEN
				SQ_Y<=SQ_Y+5;
			END IF;  
		END IF;				
   END IF;
 END PROCESS;
END MAIN;