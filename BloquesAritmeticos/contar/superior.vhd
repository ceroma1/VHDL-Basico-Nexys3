library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity superior is
    Port ( Fentrada : in  STD_LOGIC_VECTOR (7 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end superior;

architecture Behavioral of superior is

component cuenta is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
			  f : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ModuloDisplay is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           segmento : out  STD_LOGIC_VECTOR (6 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sg1:STD_LOGIC_VECTOR(3 downto 0);

begin

u0:cuenta port map(a=>fentrada,f=>sg1);
u1:Modulodisplay port map(a=>sg1,segmento=>seg,Anodos=>an);

end Behavioral;

