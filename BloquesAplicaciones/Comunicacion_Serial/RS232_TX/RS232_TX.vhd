library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Este mdulo lo forma dos submdulos llamados Baudios y mod_rx, el mdulo baudios es el encargado del
--muestreo (tick) para la deteccin de los bits en la recepcin. 

entity RS232_TX is
    Port (clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Start : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           EOT : out STD_LOGIC;
           TX : out STD_LOGIC);
end RS232_TX;

architecture Behavioral of RS232_TX is
component mod_tx is
    Port (clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
            tick: in STD_LOGIC;
           Start : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           EOT : out STD_LOGIC;
           TX : out STD_LOGIC);
end component;

component Baudios_tx is
    Port (clk : in STD_LOGIC;
           reset : in STD_LOGIC;
      fbaudio : out STD_LOGIC);
end component;

signal sg : std_logic;

begin

uo:Baudios_tx port map(clk=>clk,reset=>reset,fbaudio=>sg);
u1:mod_tx Port map(clk=>clk,Reset=>reset,tick=>sg,Start=>Start,Data=>Data,EOT=>EOT,TX=>TX);

end Behavioral;
