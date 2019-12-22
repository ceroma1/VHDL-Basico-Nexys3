library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bus_dato is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel_dato : in  STD_LOGIC;
           Sel_display : in  STD_LOGIC_VECTOR (1 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end Bus_dato;

architecture Behavioral of Bus_dato is

component Mux_dato is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Fout_dato : out  STD_LOGIC_VECTOR (3 downto 0);
           Sel_dato : in  STD_LOGIC);
end component;

component Mux_anodos is
    Port ( sel_display : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Display is
    Port ( Dato : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sg_dato: STD_LOGIC_VECTOR (3 downto 0);

begin

u0:Mux_dato port map(DatoA=>DatoA,DatoB=>DatoB,Fout_dato=>sg_dato,Sel_dato=>sel_dato);
u1:Display Port map(Dato=>sg_dato,segmento=>segmento);
u2:Mux_anodos Port map(sel_display=>sel_display,anodos=>anodo);

end Behavioral;

