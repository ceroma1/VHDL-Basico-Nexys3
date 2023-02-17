library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SupParaleloSerie is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           bt_inicio : in  STD_LOGIC;
           dato_in : in  STD_LOGIC_vector(7 downto 0);
           out_bit : out  STD_LOGIC;
           ocupado : out  STD_LOGIC);
end SupParaleloSerie;

architecture Behavioral of SupParaleloSerie is

component TempReb is
    Port ( ce : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  fin1ms : out  STD_LOGIC);
end component;

component Maq_estadoReb is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
			  dato : in  STD_LOGIC_VECTOR(7 downto 0);
           In_Fin1ms : in  STD_LOGIC;
           CE_Tempo : out  STD_LOGIC;
			  transmitiendo: out  STD_LOGIC;
           salida_bits : out  STD_LOGIC);
end component;

signal sg1,sg2: std_logic;

begin
u0: TempReb Port map(ce=>sg1,clk=>clk,reset=>reset,fin1ms=>sg2);
u1: Maq_estadoReb Port map(clk=>clk,reset=>reset,Boton=>bt_inicio,dato=>dato_in,In_Fin1ms=>sg2,CE_Tempo=>sg1,transmitiendo=>ocupado,salida_bits=>out_bit);

end Behavioral;

