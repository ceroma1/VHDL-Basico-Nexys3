library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Superior is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end Superior;
 
architecture Behavioral of Superior is

component divide is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component cuenta is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component CombinaSalida is
    Port ( Inq : in  STD_LOGIC_VECTOR (2 downto 0);
           Foutq : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component ModuloDisplay is
    Port ( DatoIn : in  STD_LOGIC_VECTOR (3 downto 0);
			  anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0));
end component;
 
signal sg1: std_logic;
signal sg2,sg3: std_logic_vector(2 downto 0);

begin
u0:divide port map(clk=>clk,reset=>reset,Foutdivide=>sg1);
u1:cuenta port map(clk=>sg1,reset=>reset,salidacuenta=>sg2);
u2:combinasalida port map(inq=>sg2,Foutq=>sg3);
u3:modulodisplay port map(datoin(3)=>'0',datoin(2 downto 0)=>sg3,anodos=>anodos,segmento=>segmento);
end Behavioral;

