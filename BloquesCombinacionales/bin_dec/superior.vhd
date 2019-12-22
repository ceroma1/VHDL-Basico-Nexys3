library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity superior is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0);
			  signo : out STD_LOGIC;
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0);
           anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end superior;

architecture Behavioral of superior is

component bin_dec is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
        signo: out STD_LOGIC;	 
           f : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component display is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
			  x7: out STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sg: STD_LOGIC_VECTOR(3 downto 0);

begin

u0:bin_dec port map(a(3 downto 0)=>entrada(3 downto 0),signo=>signo,f(3 downto 0)=>sg(3 downto 0));
u1:display port map(a(3 downto 0)=>sg(3 downto 0),x7(3 downto 0)=>anodos(3 downto 0),seg(6 downto 0)=>segmentos(6 downto 0));
 
end Behavioral;

