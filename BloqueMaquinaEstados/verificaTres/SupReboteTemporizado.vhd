library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end SupReboteTemporizado;

architecture Behavioral of SupReboteTemporizado is

component Temporizador is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           fin300ms : out  STD_LOGIC);
end component;

component Maq_Estado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Boton : in  STD_LOGIC;
           In_Fin300ms : in  STD_LOGIC;
           CE_Tempo : out  STD_LOGIC;
           Boton_Out : out  STD_LOGIC);
end component;

signal sg1,sg2: STD_LOGIC;

begin

u0:Maq_Estado Port map(clk=>clk,reset=>reset,Boton=>Boton,In_Fin300ms=>sg1,CE_Tempo=>sg2,Boton_Out=>Boton_Out);
u1:Temporizador Port map(ce=>sg2,clk=>clk,reset=>reset,fin300ms=>sg1);
end Behavioral;

