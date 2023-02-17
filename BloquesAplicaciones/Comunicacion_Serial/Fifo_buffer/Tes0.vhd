LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Fifo_buffer
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         W_data : IN  std_logic_vector(7 downto 0);
         empty : OUT  std_logic;
         full : OUT  std_logic;
         r_data : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal W_data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal empty : std_logic;
   signal full : std_logic;
   signal r_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Fifo_buffer PORT MAP (
          clk => clk,
          reset => reset,
          rd => rd,
          wr => wr,
          W_data => W_data,
          empty => empty,
          full => full,
          r_data => r_data
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   -- Stimulus process
escribe_dato:process
begin
W_data <= "00001111";	
wait for 10 ns;
W_data <= "00110011";	
wait for 10 ns;
W_data <= "01010101";	
wait for 10 ns;
W_data <= "10101010";	
wait for 10 ns;
W_data <= "11011011";	
wait for 10 ns;
W_data <= "01101101";	
wait for 10 ns;
W_data <= "00011100";	
wait for 10 ns;
W_data <= "10100111";	
wait for 10 ns;
W_data <= "10011001";	
wait for 10 ns;
W_data <= "00001000";	
wait for 10 ns;
W_data <= "10000000";	
wait for 10 ns;
W_data <= "01000000";	
wait for 10 ns;
W_data <= "00100000";	
wait for 10 ns;
W_data <= "00010000";	
wait for 10 ns;
W_data <= "00001000";	
wait for 10 ns;
W_data <= "00000011";	
wait for 10 ns;
W_data <= "00000010";	
wait for 10 ns;	
W_data <= "00010000";	
wait for 10 ns;		
--wait;
end process;
 
signal_reset:process
begin
reset <= '0';
wait for 7 ns;
reset <= '1';
wait;
end process;

signal_wryrd:process
begin
wr<='1';
rd<='0';
wait for 170 ns;
wr<='0';
rd<='1';
wait for 170 ns;
end process;

END;


