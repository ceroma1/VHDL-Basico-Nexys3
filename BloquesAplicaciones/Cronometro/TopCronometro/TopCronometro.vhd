library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopCronometro is
    Port ( clk : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end TopCronometro;

architecture Behavioral of TopCronometro is

component Master_5MHZ is
    Port ( clk : in  STD_LOGIC;
			  f5mhz : out  STD_LOGIC);
end component;

component Enable10hz is
    Port ( CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout10hz : out  STD_LOGIC);
end component;

component Enable1hz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           Fout1hz : out  STD_LOGIC);
end component;

component Enable500hz is
    Port ( clk : in  STD_LOGIC;
           Fout500 : out  STD_LOGIC);
end component;

component Enable60hz is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Fout60hz : out  STD_LOGIC);
end component;

component TopDisplay is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           bc : in  STD_LOGIC_VECTOR (5 downto 0);
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component Cuenta0a9 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a9 : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Cuenta0a9M is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a9m : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component cuenta0a59 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           f0a59 : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component CuentaDisplay is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           fdisplay : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

signal sg_clk,sg_Fout10hz,sg_Fout1hz,sg_Fout60hz,sg_Fout500:STD_LOGIC;
signal sg_f0a9,sg_f0a9m:STD_LOGIC_VECTOR(3 DOWNTO 0);
signal sg_f0a59:STD_LOGIC_VECTOR(5 DOWNTO 0);
signal sg_fdisplay:STD_LOGIC_VECTOR(1 DOWNTO 0);

begin

u0:Master_5MHZ Port map(clk=>clk,f5mhz=>sg_clk);
u1:Enable10hz Port map(CE=>ce,clk=>sg_clk,reset=>reset,Fout10hz=>sg_Fout10hz);
u2:Enable1hz Port map(clk=>sg_clk,reset=>reset,ce=>ce,Fout1hz=>sg_Fout1hz);
u3:Enable60hz Port map(ce=>ce,clk=>sg_clk,reset=>reset,Fout60hz=>sg_Fout60hz);
u4:Enable500hz Port map(clk=>sg_clk,Fout500=>sg_Fout500);
u5:Cuenta0a9 Port map(clk=>sg_clk,reset=>reset,ce=>sg_Fout10hz,f0a9=>sg_f0a9);
u6:cuenta0a59 Port map(clk=>sg_clk,reset=>reset,ce=>sg_Fout1hz,f0a59=>sg_f0a59);
u7:Cuenta0a9M Port map(clk=>sg_clk,reset=>reset,ce=>sg_Fout60hz,f0a9m=>sg_f0a9m);
u8:TopDisplay Port map(a=>sg_f0a9,bc=>sg_f0a59,d=>sg_f0a9m,sel=>sg_fdisplay,anodos=>anodos,seg=>seg);
u9:CuentaDisplay Port map(ce=>sg_Fout500,clk=>sg_clk,fdisplay=>sg_fdisplay);



end Behavioral;

