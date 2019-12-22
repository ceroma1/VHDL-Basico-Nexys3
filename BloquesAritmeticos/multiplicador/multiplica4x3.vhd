library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 

entity multiplica4x3 is
    Port ( DatA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatB : in  STD_LOGIC_VECTOR (3 downto 0);
           Multi : out  STD_LOGIC_VECTOR (7 downto 0));
end multiplica4x3;

architecture Behavioral of multiplica4x3 is

component SumaParalela is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Suma : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

signal sg1,sg2,sg3,sg4:  STD_LOGIC_VECTOR (3 downto 0);
signal sgm,sgm1:  STD_LOGIC_VECTOR (4 downto 0);

begin
   
generate_etiqueta:
for i in 0 to 3 generate
sg1(i)<=DatA(i) and DatB(0);
end generate;

generate_etiqueta1:
for i in 0 to 3 generate
sg2(i)<=DatA(i) and DatB(1);
end generate;

generate_etiqueta2:
for i in 0 to 3 generate
sg3(i)<=DatA(i) and DatB(2);
end generate;

generate_etiqueta3:
for i in 0 to 3 generate
sg4(i)<=DatA(i) and DatB(3);
end generate;

u0: SumaParalela port map(DatoA(3)=>'0',DatoA(2 downto 0)=>sg1(3 downto 1),DatoB=>(sg2),Suma=>sgm);
u1: SumaParalela port map(DatoA=>sgm(4 downto 1),DatoB=>(sg3),Suma=>sgm1);
u2: SumaParalela port map(DatoA=>sgm1(4 downto 1),DatoB=>(sg4),Suma=>multi(7 downto 3));

Multi(0)<=sg1(0);
Multi(1)<=sgm(0);
Multi(2)<=sgm1(0);
end Behavioral;








