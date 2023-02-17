library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity supExpende is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Int_10 : in  STD_LOGIC;
           Int_20 : in  STD_LOGIC;
           Int_50 : in  STD_LOGIC;
           vende : out  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end supExpende;

architecture Behavioral of supExpende is

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

component Estados is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  int_10 : in  STD_LOGIC;
			  int_20 : in  STD_LOGIC;
           int_50 : in  STD_LOGIC;
			  in_fin2s: in STD_LOGIC;
			  CE_Tempo: out STD_LOGIC;
			  monedas : out STD_LOGIC_VECTOR(7 DOWNTO 0);
			  vende : out  STD_LOGIC);
end component;

component SuperiorBinarioDecimal is
    Port ( Ent : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Temp_vende is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           fin2s : out  STD_LOGIC);
end component;

signal s_fin2s,S_CE,s_Int10,s_Int20,s_Int50 :STD_LOGIC;
signal s_monedas : STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

u0:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>Int_10,Boton_Out=>s_Int10);
u1:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>Int_20,Boton_Out=>s_Int20);
u2:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>Int_50,Boton_Out=>s_Int50);
u3:Estados Port map(clk=>clk,reset=>reset,int_10=>s_int10,int_20=>s_int20,int_50=>s_int50,in_fin2s=>s_fin2s,CE_Tempo=>s_CE,monedas=>s_monedas,vende=>vende);
u4:SuperiorBinarioDecimal Port map(Ent=>s_monedas,clk=>clk,reset=>reset,seg=>seg,an=>an);
u5:Temp_vende Port map(ce=>S_CE,clk=>clk,reset=>reset,fin2s=>s_fin2s);
end Behavioral;

