LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divfre
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         clk3 : OUT  std_logic;
         clk190 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal clk3 : std_logic;
   signal clk190 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divfre PORT MAP (
          clk => clk,
          clear => clear,
          clk3 => clk3,
          clk190 => clk190
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
S_clear:PROCESS
BEGIN
clear<= '1';
WAIT FOR 6ns;
clear<= '0';
wait;
end process;
 
END;
