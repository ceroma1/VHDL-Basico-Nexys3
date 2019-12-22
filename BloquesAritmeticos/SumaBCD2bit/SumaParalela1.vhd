library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumaParalela1 is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Fsuma : out  STD_LOGIC_VECTOR (3 downto 0));
end SumaParalela1;

architecture Behavioral of SumaParalela1 is

component SumaMedia is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

component SumaMedia1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           suma : out  STD_LOGIC);
end component;

signal sg1,sg2,sg3 :std_logic;

begin

u0:Sumamedia port map(a=>DatoA(0),b=>DatoB(0),cin=>'0',suma=>Fsuma(0),cout=>sg1);
u1:Sumamedia port map(a=>DatoA(1),b=>DatoB(1),cin=>sg1,suma=>Fsuma(1),cout=>sg2);
u2:Sumamedia port map(a=>DatoA(2),b=>DatoB(2),cin=>sg2,suma=>Fsuma(2),cout=>sg3);
u3:Sumamedia1 port map(a=>DatoA(3),b=>DatoB(3),cin=>sg3,suma=>Fsuma(3));

end Behavioral;

