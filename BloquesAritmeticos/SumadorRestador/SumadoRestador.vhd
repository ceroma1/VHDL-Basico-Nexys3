library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--permite la suma de dos numeros binarios (DatA y DatB) ingresados como numeros binarios naturales
--(0 a 15) base 10 y la respuesta sera un numero binario con signo representado en signo magnitud 
--complemento dos (-15 a 30) base 10.

entity SumadoRestador is
    Port ( DatA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatB : in  STD_LOGIC_VECTOR (3 downto 0);
           Respuesta : out  STD_LOGIC_VECTOR (5 downto 0);
           Selec : in  STD_LOGIC);
end SumadoRestador;
  
architecture Behavioral of SumadoRestador is

component SumadorN is
    Port ( cin : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           suma : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component complemento is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           selec : in  STD_LOGIC;
           comple : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component presenta is
    Port ( DatoEnt : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           DatoSal : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

signal sg1: STD_LOGIC_VECTOR (3 downto 0);
signal sg2: STD_LOGIC_VECTOR (4 downto 0);

begin

u0:complemento port map(a=>DatB,selec=>selec,comple=>sg1);
u1:SumadorN port map(a=>DatA,b=>sg1,cin=>selec,suma=>sg2);
u2:presenta port map(DatoEnt=>sg2,sel=>selec,DatoSal=>Respuesta);

end Behavioral;

