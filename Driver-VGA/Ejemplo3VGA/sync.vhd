
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.my.all;

-- 800 pixeles visibles, 56 para fron porch ,64 para back porch
-- 120 para pulso de sincronia = 1040 pixeles horizontal
-- 600 pixeles visibles, para front porch 37 pixel,23 pixeles back porch,6 pixeles
-- para pulso de sincronia =666 pixeles
-- tasa de refresco 72 hz
-- se tiene 49.870.080  pixeles por segundo =50MhZ


ENTITY SYNC IS
	PORT(
		CLK  : IN STD_LOGIC;
		HSYNC: OUT STD_LOGIC;
		VSYNC: OUT STD_LOGIC;
		R:     OUT STD_LOGIC_VECTOR(2 downto 0);
		G:     OUT STD_LOGIC_VECTOR(2 downto 0);
		B:     OUT STD_LOGIC_VECTOR(1 downto 0);
		
		KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S: IN STD_LOGIC_VECTOR(1 downto 0)
		);
END SYNC;

ARCHITECTURE MAIN OF SYNC IS
-----800x600 @72 Hz,  pixel clock 50 MHz
--SIGNAL RGB: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL SQ_X1,SQ_Y1: INTEGER RANGE 0 TO 1040:=500;
SIGNAL SQ_X2,SQ_Y2: INTEGER RANGE 0 TO 666:=300;
SIGNAL DRAW1,DRAW2:STD_LOGIC:='0';

 SIGNAL HPOS: INTEGER RANGE 0 TO 1040:=0;
 SIGNAL VPOS: INTEGER RANGE 0 TO 666:=0;
 
 -----
PROCEDURE SQ(SIGNAL Xcur,Ycur,Xpos,Ypos:IN INTEGER;SIGNAL DRAW: OUT STD_LOGIC) IS
BEGIN
 IF(Xcur>Xpos AND Xcur<(Xpos+100) AND Ycur>Ypos AND Ycur<(Ypos+100))THEN
	--RGB<="1111";
	DRAW<='1';
	ELSE
	DRAW<='0';
 END IF;
 
END SQ;

--
 
 
BEGIN
 
 SQ(HPOS,VPOS,SQ_X1,SQ_Y1,DRAW1);
 SQ(HPOS,VPOS,SQ_X2,SQ_Y2,DRAW2);

 
 PROCESS(CLK)
 BEGIN
	IF (clk'event and clk ='1') THEN
	  
		IF(DRAW1='1')THEN
		 IF(S(0)='1')THEN
			R<=(others=>'1');
			G<=(others=>'0');
			B<=(others=>'0');
			ELSE
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');
			END IF;
      END IF;
		IF(DRAW2='1')THEN
		 IF(S(1)='1')THEN
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'1');
			ELSE
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');
		 END IF;
      END IF;
		IF (DRAW1='0' AND DRAW2='0')THEN
		  R<=(others=>'0');
	     G<=(others=>'0');
	     B<=(others=>'0');
		END IF;
		IF(HPOS<1040)THEN
		HPOS<=HPOS+1;
		ELSE
		HPOS<=0;
		 IF(VPOS<666)THEN
			 VPOS<=VPOS+1;
			 ELSE
			 VPOS<=0; 
			     IF(S(0)='1')THEN
					   IF(KEYS(0)='1')THEN
						 SQ_X1<=SQ_X1+5;
						END IF;
                   IF(KEYS(1)='1')THEN
						 SQ_X1<=SQ_X1-5;
						END IF;
						 IF(KEYS(2)='1')THEN
						 SQ_Y1<=SQ_Y1-5;
						END IF;
						IF(KEYS(3)='1')THEN
						 SQ_Y1<=SQ_Y1+5;
						END IF;  
					END IF;
			     IF(S(1)='1')THEN
					   IF(KEYS(0)='1')THEN
						 SQ_X2<=SQ_X2+5;
						END IF;
                   IF(KEYS(1)='1')THEN
						 SQ_X2<=SQ_X2-5;
						END IF;
						 IF(KEYS(2)='1')THEN
						 SQ_Y2<=SQ_Y2-5;
						END IF;
						IF(KEYS(3)='1')THEN
						 SQ_Y2<=SQ_Y2+5;
						END IF; 
					END IF;  
		     END IF;
		END IF;
		
		
		
		----- generacion de senales importantes
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
	   IF(HPOS>56 AND HPOS<176)THEN----HSYNC
	      HSYNC<='0';
	   ELSE
	      HSYNC<='1';
	   END IF;	 
       
		IF(VPOS>37 AND VPOS<43)THEN----------vsync
	      VSYNC<='0';
	   ELSE
	      VSYNC<='1';
	   END IF;
       --desde el inicio de FP hasta el final de BP la senal RGB debe estar en 0
       --hp+sinc+bp
		IF((HPOS>0 AND HPOS<240) OR (VPOS>0 AND VPOS<66))THEN
			R<=(others=>'0');
			G<=(others=>'0');
			B<=(others=>'0');
	   END IF;
		 
   END IF;
 END PROCESS;
END MAIN;

