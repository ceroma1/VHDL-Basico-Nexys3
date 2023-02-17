library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Superior is
    Port ( clk : in  STD_LOGIC;
           intPulso : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           EntDato : in  STD_LOGIC_VECTOR (3 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end Superior;

architecture Behavioral of Superior is

component debounce IS
    PORT ( clk     : IN  STD_LOGIC;  
			  button  : IN  STD_LOGIC;  
			  result  : OUT STD_LOGIC); 
END component;

component ModuloBotones is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Modulodisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component arreglo_reg is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  dato : in STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component contador is
    Port ( clear : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component divfre is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk190 : out  STD_LOGIC);
end component;

component mux4a1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC_VECTOR (3 downto 0);
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           salida : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg1,sg2:std_logic;
signal sg3:std_logic_vector(1 downto 0);
signal sg4:std_logic_vector(3 downto 0);
signal sg5:std_logic_vector(15 downto 0);

begin

uo:debounce port map (button=>intPulso,clk=>clk,result=>sg1);
u1:arreglo_reg port map (clear=>clear,clk=>sg1,dato=>EntDato,salida=>sg5);
u2: divfre port map(clear=>clear,clk=>clk,clk190=>sg2);
u3: contador port map(clear=>clear,clk=>sg2,salida=>sg3);
u4: ModuloBotones port map(sel=>sg3,anodos=>anodos);
u5: mux4a1 port map(a=>sg5(3 downto 0),b=>sg5(7 downto 4),c=>sg5(11 downto 8),d=>sg5(15 downto 12),sel=>sg3,salida=>sg4);
u6:Modulodisplay port map(a=>sg4,seg=>seg);


end Behavioral;

