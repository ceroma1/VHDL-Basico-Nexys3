LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Master_5MHZ
    PORT(
         clk : IN  std_logic;
         f5mhz : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   
 	--Outputs
   signal f5mhz : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Master_5MHZ PORT MAP (
          clk => clk,
          f5mhz => f5mhz
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
--signal_reset: process
--begin		
--reset<='0';
--wait for 4 ns;	
--reset<='1';
--wait for 2 ns;	
--reset<='0';      
--wait;
--end process;

END;
