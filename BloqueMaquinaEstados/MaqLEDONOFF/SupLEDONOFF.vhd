library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupLEDONOFF is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           boton : in  STD_LOGIC;
           SalidaLED : out  STD_LOGIC);
end SupLEDONOFF;

architecture Behavioral of SupLEDONOFF is

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

component Maq_estado is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Foutq : out  STD_LOGIC;
           Int_ext : in  STD_LOGIC);
end component;

signal sg1:STD_LOGIC;

begin

u0:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>boton,Boton_Out=>sg1);
u1:Maq_estado Port map(Clk=>clk,Reset=>reset,Foutq=>SalidaLED,Int_ext=>sg1);


end Behavioral;

