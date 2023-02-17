LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes_baudios IS
END tes_baudios;
 
ARCHITECTURE behavior OF tes_baudios IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Baudios_tx
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         fbaudio : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal fbaudio : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Baudios_tx PORT MAP (
          clk => clk,
          reset => reset,
          fbaudio => fbaudio
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
signal_reset: process
begin		
reset<='1';     
wait for 4 ns;	
reset<='0';     
wait for 2 ns;	
reset<='1';     
wait;
end process;

END;
