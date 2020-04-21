library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupMuxDisplay is
    Port ( sel : in  STD_LOGIC;
           EntA : in  STD_LOGIC_VECTOR (3 downto 0);
           EntB : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end SupMuxDisplay;

architecture Behavioral of SupMuxDisplay is

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           fout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component display is
    Port ( digito : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component negacion is
    Port ( btn : in  STD_LOGIC;
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_dato: STD_LOGIC_VECTOR(3 downto 0);

begin
u0:mux4a1 Port map(a=>EntA,b=>EntB,sel=>sel,fout=>sg_dato);
u1:negacion Port map(btn=>sel,anodo=>Anodos);
u2:display Port map(digito=>sg_dato,segmento=>segmento);			  
end Behavioral;

