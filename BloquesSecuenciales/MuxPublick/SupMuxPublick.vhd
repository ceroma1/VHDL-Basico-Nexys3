library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupMuxPublick is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sel_dato : in  STD_LOGIC_VECTOR (2 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SupMuxPublick;

architecture Behavioral of SupMuxPublick is

component divide is
    Port ( clk : in  STD_LOGIC;
           Foutdivide : out  STD_LOGIC);
end component;

component cuenta is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salidacuenta : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component  negacion is
    Port ( btn : in  STD_LOGIC_VECTOR (2 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component MuxUno is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Fout : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component MuxDos is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Fout : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component Muxtres is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Fout : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component MuxCuatro is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Fout : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component MuxFin is
    Port ( dato_a : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_b : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_c : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_d : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_fout : out  STD_LOGIC_VECTOR (6 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end component;

signal s_fdivide:STD_LOGIC;
signal s_fcuenta:STD_LOGIC_VECTOR (2 downto 0);
signal s_mux1,s_mux2,s_mux3,s_mux4:STD_LOGIC_VECTOR (6 downto 0);

begin
U0:divide Port MAP(clk=>CLK,Foutdivide=>s_fdivide);
u1:cuenta Port map(clk=>s_fdivide,clear=>reset,salidacuenta=>s_fcuenta);
u2:negacion Port map(btn=>s_fcuenta,anodo=>an);
u3:MuxUno Port map(sel=>sel_dato,Fout=>s_mux1);
u4:MuxDos Port map(sel=>sel_dato,Fout=>s_mux2);
u5:MuxTres Port map(sel=>sel_dato,Fout=>s_mux3);
u6:Muxcuatro Port map(sel=>sel_dato,Fout=>s_mux4);
u7:MuxFin Port map(dato_a =>s_mux1,dato_b=>s_mux2,dato_c=>s_mux3,dato_d=>s_mux4,dato_fout=>seg,sel=>s_fcuenta);
end Behavioral;

