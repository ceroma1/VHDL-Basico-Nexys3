library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupVisualMP3 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           int_paus : in  STD_LOGIC;
           int_play : in  STD_LOGIC;
           int_stop : in  STD_LOGIC;
           int_izq : in  STD_LOGIC;
           int_der : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SupVisualMP3;

architecture Behavioral of SupVisualMP3 is

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

component Estados_MuxPublick is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Int_paus : in  STD_LOGIC;
           Int_play : in  STD_LOGIC;
           Int_stop : in  STD_LOGIC;
           Int_izq : in  STD_LOGIC;
           Int_der : in  STD_LOGIC;
			  int_tiempo : in  STD_LOGIC;
			  CE_tiempo : out  STD_LOGIC;
           Fout_maq : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component Temp1 is
    Port ( ce : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           fin2sg : out  STD_LOGIC);
end component;

component SupMuxPublick is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sel_dato : in  STD_LOGIC_VECTOR (2 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg_paus,sg_play,sg_stop,sg_izq,sg_der,sg_tiempo,sg_cetiempo : STD_LOGIC;
signal sg_fmaq: STD_LOGIC_VECTOR (2 downto 0);

begin
u0:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>int_paus,Boton_Out=>sg_paus);
u1:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>int_play,Boton_Out=>sg_play);
u2:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>int_stop,Boton_Out=>sg_stop);
u3:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>int_izq,Boton_Out=>sg_izq);
u4:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>int_der,Boton_Out=>sg_der);
u5:Estados_MuxPublick Port map(clk=>clk,reset=>reset,Int_paus=>sg_paus,Int_play=>sg_play,Int_stop=>sg_stop,Int_izq=>sg_izq,Int_der=>sg_der,int_tiempo=>sg_tiempo,CE_tiempo=>sg_cetiempo,Fout_maq=>sg_fmaq);
u6:Temp1 Port map(ce=>sg_cetiempo,clk=>clk,reset=>reset,fin2sg=>sg_tiempo);
u7:SupMuxPublick Port map(clk=>clk,reset=>reset,sel_dato=>sg_fmaq,seg=>seg,an=>an);

end Behavioral;

