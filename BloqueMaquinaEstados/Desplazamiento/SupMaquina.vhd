library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupMaquina is
    Port ( clk : in  STD_LOGIC;
	        reset : in  STD_LOGIC;
           Btn : in  STD_LOGIC;
           Dato_In : in  STD_LOGIC_VECTOR (7 downto 0);
			  transmitiendo: out STD_LOGIC;
           Fsalida : out  STD_LOGIC_VECTOR (7 downto 0));
end SupMaquina;

architecture Behavioral of SupMaquina is

component TemReb is
    Port ( ce: in STD_LOGIC;
	        clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Finms : out  STD_LOGIC);
end component;

component maqEstado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Btn : in  STD_LOGIC;
           dato_In : in  STD_LOGIC_VECTOR (7 downto 0);
           In_finTiempo : in  STD_LOGIC;
           Ce_Tiempo : out  STD_LOGIC;
			  transmitiendo: out  STD_LOGIC;
           salida_bits : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg1,sg2: std_logic;

begin

u0:TemReb Port map(ce=>sg1,clk=>clk,reset=>reset,Finms=>sg2);
u1:maqEstado Port map(clk=>clk,reset=>reset,Btn=>Btn,dato_In=>Dato_In,In_finTiempo=>sg2,Ce_Tiempo=>sg1,transmitiendo=>transmitiendo,salida_bits=>Fsalida);

end Behavioral;

