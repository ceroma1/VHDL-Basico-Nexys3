library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Superior is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           boton : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           amarillo : out  STD_LOGIC;
           verde : out  STD_LOGIC);
end Superior;

architecture Behavioral of Superior is

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component MaqEstados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
           rojo : out  STD_LOGIC;
           amarillo : out  STD_LOGIC;
           verde : out  STD_LOGIC);
end component;

signal sg :STD_LOGIC;

begin

u0: divide port map(clk=>clk,reset=>reset,Foutdivide=>sg);
u1: MaqEstados Port map(clk=>sg,reset=>reset,Boton=>boton,rojo=>rojo,amarillo=>amarillo,verde=>verde);
end Behavioral;

