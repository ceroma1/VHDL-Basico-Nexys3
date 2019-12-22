library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumaBCD2bit is
    Port ( UnidadesA : in  STD_LOGIC_VECTOR (3 downto 0);
           DecenasA : in  STD_LOGIC_VECTOR (3 downto 0);
           UnidadesB : in  STD_LOGIC_VECTOR (3 downto 0);
           DecenasB : in  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC;
           SumaU : out  STD_LOGIC_VECTOR (3 downto 0);
           SumaD : out  STD_LOGIC_VECTOR (3 downto 0));
end SumaBCD2bit;

architecture Behavioral of SumaBCD2bit is

component SumBCD1Bit is
    Port ( NumA : in  STD_LOGIC_VECTOR (3 downto 0);
           NumB : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC;
           Fsuma : out  STD_LOGIC_VECTOR (3 downto 0);
           Fcarry : out  STD_LOGIC);
end component;

signal sg1: STD_LOGIC;

begin

u0:SumBCD1Bit port map(NumA=>UnidadesA,NumB=>UnidadesB,Cin=>'0',Fsuma=>SumaU,Fcarry=>sg1);
u1:SumBCD1Bit port map(NumA=>DecenasA,NumB=>decenasB,Cin=>sg1,Fsuma=>SumaD,Fcarry=>carry);
 
end Behavioral;

