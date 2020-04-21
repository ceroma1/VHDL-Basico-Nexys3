library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulotop is
    Port ( clk,clear : in  STD_LOGIC;
			  segmento: out std_logic_vector(6 downto 0);
           anodos : out  STD_LOGIC_VECTOR(3 downto 0));
end modulotop;

architecture Behavioral of modulotop is
  
component ModuloBotones is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (23 downto 0));
end component;
 
component contador is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component divfre is
    Port ( clk : in  STD_LOGIC;
           clk3 : out  STD_LOGIC;
           clk190 : out  STD_LOGIC);
end component;

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           b : in  STD_LOGIC_VECTOR (5 downto 0);
           c : in  STD_LOGIC_VECTOR (5 downto 0);
           d : in  STD_LOGIC_VECTOR (5 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

signal sigclk3,sigclk190:std_logic;
signal sigsalida : STD_LOGIC_VECTOR (23 downto 0);
signal sigmux : STD_LOGIC_VECTOR (5 downto 0);
signal sigsel: STD_LOGIC_VECTOR (1 downto 0);
begin

u0: divfre port map(clk=>clk,clk3=>sigclk3,clk190=>sigclk190);
u1: arreglo_reg port map(clear=>clear,clk=>sigclk3,salida=>sigsalida);
u2: mux4a1 port map(a=>sigsalida(5 downto 0),b=>sigsalida(11 downto 6),c=>sigsalida(17 downto 12),d=>sigsalida(23 downto 18),sel=>sigsel,salida=>sigmux);
u3: Modulodisplay port map(a=>sigmux,seg=>segmento);
u4: contador port map(clear=>clear,clk=>sigclk190,salida=>sigsel);
u5: ModuloBotones port map(sel(2)=>clear,sel(1 downto 0)=>sigsel,anodos=>anodos);
  
end Behavioral;   
 
