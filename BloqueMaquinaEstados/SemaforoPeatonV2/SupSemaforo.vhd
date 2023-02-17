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

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

component Maq_Estado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           In_fin2sg : in  STD_LOGIC;
           In_fin10sg : in  STD_LOGIC;
           f_luzCE : out  STD_LOGIC_VECTOR (4 downto 0));
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

signal sg1,sg_fin2sg,sg_fin10sg,sg_CEtemp1,sg_CEtemp2: STD_LOGIC;

begin

u0:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>boton,Boton_Out=>sg1);
u1:Maq_Estado Port map(clk=>clk,reset=>reset,Boton=>sg1,In_fin2sg=>sg_fin2sg,In_fin10sg =>sg_fin10sg,f_luzCE(4)=>rojo,f_luzCE(3)=>amarillo,f_luzCE(2)=>verde,f_luzCE(1)=>sg_CEtemp1,f_luzCE(0)=>sg_CEtemp2);
u2:Temp1 Port map(ce=>sg_CEtemp1,clk=>clk,reset=>reset,fin2sg=>sg_fin2sg);
u3:Temp2 Port map(ce=>sg_CEtemp2,clk=>clk,reset=>reset,fin10sg=>sg_fin10sg);
end Behavioral;

