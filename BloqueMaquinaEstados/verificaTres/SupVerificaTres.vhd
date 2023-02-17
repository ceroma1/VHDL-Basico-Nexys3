library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupVerificaTres is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Btn : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end SupVerificaTres;

architecture Behavioral of SupVerificaTres is

component SupReboteTemporizado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  Boton_Out : OUT  STD_LOGIC);
end component;

component cuenta2 is
 Port ( clk : in  STD_LOGIC;
        clear : in  STD_LOGIC;
		  ce : in  STD_LOGIC;
        salidacuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component SuperiorBinarioDecimal is
    Port ( Ent : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg1: std_logic;
signal sg2: STD_LOGIC_VECTOR (7 downto 0);

begin

uo:SupReboteTemporizado Port map(clk=>clk,reset=>reset,Boton=>Btn,Boton_Out=>sg1);
u1:cuenta2 Port map(clk=>clk,clear=>reset,ce=>sg1,salidacuenta=>sg2);
u2:SuperiorBinarioDecimal Port map(Ent=>sg2,clk=>clk,reset=>reset,seg=>seg,an=>an);
end Behavioral;

