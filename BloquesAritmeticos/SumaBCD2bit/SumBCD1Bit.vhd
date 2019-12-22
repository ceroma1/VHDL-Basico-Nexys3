library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumBCD1Bit is
    Port ( NumA : in  STD_LOGIC_VECTOR (3 downto 0);
           NumB : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC;
           Fsuma : out  STD_LOGIC_VECTOR (3 downto 0);
           Fcarry : out  STD_LOGIC);
end SumBCD1Bit;

architecture Behavioral of SumBCD1Bit is

component SumaParalela is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Suma : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component SumaParalela1 is
    Port ( DatoA : in  STD_LOGIC_VECTOR (3 downto 0);
           DatoB : in  STD_LOGIC_VECTOR (3 downto 0);
           Fsuma : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component control is
    Port ( inta : in  STD_LOGIC;
           intb : in  STD_LOGIC;
           intc : in  STD_LOGIC;
           intd : in  STD_LOGIC;
           fsal : out  STD_LOGIC);
end component;

signal sg1: STD_LOGIC_VECTOR (4 downto 0);
signal sg2: STD_LOGIC;

begin

u0: SumaParalela port map(DatoA=>NumA,DatoB=>NumB,cin=>Cin,Suma=>sg1);
u1: control port map(inta=>sg1(4),intb=>sg1(3),intc=>sg1(2),intd=>sg1(1),fsal=>sg2);
u2: SumaParalela1 port map(datoA=>sg1(3 downto 0),datob(0)=>'0',datob(3)=>'0',datob(1)=>sg2,datob(2)=>sg2,Fsuma(3 downto 0)=>Fsuma);
fcarry<=sg2;

end Behavioral;

