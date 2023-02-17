library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupSemaforo is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           amarillo : out  STD_LOGIC;
           verde : out  STD_LOGIC);
end SupSemaforo;

architecture Behavioral of SupSemaforo is

component Maq_Estado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           In_fin2sg : in  STD_LOGIC;
           In_fin10sg : in  STD_LOGIC;
           f_luzCE : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component Temp1 is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           fin2sg : out  STD_LOGIC);
end component;

component Temp2 is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           fin10sg : out  STD_LOGIC);
end component;

component Parpadeo is
    Port ( clk : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout : out  STD_LOGIC);
end component;

component cntAmarillo is
    Port ( maqAmarillo : in  STD_LOGIC;
           blinkAmarillo : in  STD_LOGIC;
           Ce_Amarillo : in  STD_LOGIC;
           LuzAmarillo : out  STD_LOGIC);
end component;

signal sg1,Sgamarillo,sg_blink,sg_fin2sg,sg_fin10sg,sg_CEtemp1,sg_CEtemp2: STD_LOGIC;
--

begin

u0:Parpadeo Port map(clk=>clk,ce=>sg1,reset=>reset,Fout=>sg_blink);
u1:cntAmarillo Port map(maqAmarillo=>Sgamarillo,blinkAmarillo=>sg_blink,Ce_Amarillo=>sg1,LuzAmarillo=>Amarillo);
u2:Maq_Estado Port map(clk=>clk,reset=>reset,Boton=>boton,In_fin2sg=>sg_fin2sg,In_fin10sg =>sg_fin10sg,f_luzCE(5)=>rojo,f_luzCE(4)=>Sgamarillo,f_luzCE(3)=>verde,f_luzCE(2)=>sg_CEtemp1,f_luzCE(1)=>sg_CEtemp2,f_luzCE(0)=>sg1);
u3:Temp1 Port map(ce=>sg_CEtemp1,clk=>clk,reset=>reset,fin2sg=>sg_fin2sg);
u4:Temp2 Port map(ce=>sg_CEtemp2,clk=>clk,reset=>reset,fin10sg=>sg_fin10sg);
end Behavioral;

