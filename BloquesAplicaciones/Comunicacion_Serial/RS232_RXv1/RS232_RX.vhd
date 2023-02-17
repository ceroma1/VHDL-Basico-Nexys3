library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS232_RX is
    Port (Clk : in  std_logic;
          Reset     : in  std_logic;
          LineRD_in : in  std_logic;
			 Store_out : out std_logic;
          Data_out : out std_logic_vector(7 downto 0));
end RS232_RX;

architecture Behavioral of RS232_RX is

component Baudios is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          fbaudio : out STD_LOGIC);
end component;

component mod_rx is
    Port ( Clk : in  std_logic;
          Reset : in  std_logic;
          tick : in std_logic;
          LineRD_in : in  std_logic;
			 Valid_out : out std_logic;
          Code_out  : out std_logic;
          Store_out : out std_logic);
end component;

component ShiftRegister is
    Port ( D : in STD_LOGIC;
           Clk: in STD_LOGIC;
           Reset: in STD_LOGIC;
           Enable: in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sg_fbaudio,sg_Code_out,sg_Valid_out : std_logic;

begin

u0: Baudios Port map(clk=>clk,reset=>reset,fbaudio=>sg_fbaudio);
u1: mod_rx port map(Clk =>clk,Reset=>reset,tick=>sg_fbaudio,LineRD_in=>LineRD_in,Valid_out=>sg_Valid_out,Code_out=>sg_Code_out,Store_out=>Store_out);
u2: ShiftRegister port map(clk=>clk,d=>sg_Code_out,Enable=>sg_Valid_out,reset=>reset,q=>data_out);
end Behavioral;
