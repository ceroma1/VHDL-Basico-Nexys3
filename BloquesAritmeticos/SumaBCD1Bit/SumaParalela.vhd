library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumaParalela is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Suma : out  STD_LOGIC_VECTOR (4 downto 0));
end SumaParalela;

architecture Behavioral of SumaParalela is

component SumaMedia is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal sg1,sg2,sg3 :std_logic;

begin

u0:Sumamedia port map(a=>DatoA(0),b=>DatoB(0),cin=>cin,suma=>suma(0),cout=>sg1);
u1:Sumamedia port map(a=>DatoA(1),b=>DatoB(1),cin=>sg1,suma=>suma(1),cout=>sg2);
u2:Sumamedia port map(a=>DatoA(2),b=>DatoB(2),cin=>sg2,suma=>suma(2),cout=>sg3);
u3:Sumamedia port map(a=>DatoA(3),b=>DatoB(3),cin=>sg3,suma=>suma(3),cout=>suma(4));

end Behavioral;

