LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CuentaDisplay
    PORT(
         ce : IN  std_logic;
         clk : IN  std_logic;
         fdisplay : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ce : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal fdisplay : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CuentaDisplay PORT MAP (
          ce => ce,
          clk => clk,
          fdisplay => fdisplay
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
signal_ce: process
begin		
ce<='0';      -- hold reset state for 100 ns.
wait for 17 ns;	
ce<='1';      -- hold reset state for 100 ns.
wait for 87 ns;	
ce<='0';      -- hold reset state for 100 ns.
wait;
end process;

END;
