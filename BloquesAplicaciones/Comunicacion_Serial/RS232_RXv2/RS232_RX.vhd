library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS232_RX is
    Port (Clk : in  std_logic;
          Reset     : in  std_logic;
          LineRD_in : in  std_logic;
			 rd_uart : in  std_logic;
			 full : out std_logic;
			 rx_empty : out std_logic;
          r_Data : out std_logic_vector(7 downto 0));
end RS232_RX;

architecture Behavioral of RS232_RX is

component Baudios is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          fbaudio : out STD_LOGIC);
end component;

component mod_rx is
    Port(Clk : in  std_logic;
          Reset : in  std_logic;
          tick : in std_logic;
          LineRD_in : in  std_logic;
          rx_done_tick : out std_logic;
          dout : out std_logic_vector(7 downto 0));
end component;

component Fifo_buffer is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rd : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           W_data : in  STD_LOGIC_VECTOR (7 downto 0);
           empty : out  STD_LOGIC;
			  full : out  STD_LOGIC;
           r_data : out  STD_LOGIC_VECTOR (7 downto 0));
end component;


signal sg_fbaudio,sg_Code_out,sg_Valid_out,sg_rx_done_tick : std_logic;
signal sg_Dout : STD_LOGIC_VECTOR (7 downto 0);

begin

u0:Baudios Port map(clk=>clk,reset=>reset,fbaudio=>sg_fbaudio);
u1:mod_rx port map(Clk =>clk,Reset=>reset,tick=>sg_fbaudio,LineRD_in=>LineRD_in,rx_done_tick=>sg_rx_done_tick,Dout=>sg_Dout);
u2:Fifo_buffer Port map(clk=>clk,reset=>reset,rd=>rd_uart,wr=>sg_rx_done_tick,W_data=>sg_Dout,empty=>rx_empty,full=>full,r_data=>r_Data);

end Behavioral;
