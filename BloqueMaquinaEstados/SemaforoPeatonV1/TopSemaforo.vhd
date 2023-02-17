library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopSemaforo is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
           Rojo : out  STD_LOGIC;
           Amarillo : out  STD_LOGIC;
           Verde : out  STD_LOGIC);
end TopSemaforo;

architecture Behavioral of TopSemaforo is

component TiempoBase is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Ftiempo : out  STD_LOGIC);
end component;

component MaqEstados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           start : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           Amarillo : out  STD_LOGIC;
           Verde : out  STD_LOGIC);
end component;

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

signal sg1,sg2: std_logic;

begin
u0:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>start,Boton_Out=>sg1);
u1: TiempoBase port map(clk=>clk,reset=>reset,Ftiempo=>sg2);
u2: MaqEstados Port map(clk=>clk,reset=>reset,tick=>sg2,start=>sg1,rojo=>rojo,Amarillo=>amarillo,Verde=>verde);
end Behavioral;

