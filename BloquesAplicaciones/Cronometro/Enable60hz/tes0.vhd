LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Enable60hz
    PORT(
         ce : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         Fout60hz : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ce : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Fout60hz : std_logic;

   -- Clock period definitions
   constant clk_period : time := 0.1 ns;--ojo uso 10ns para facilitar simulacion
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Enable60hz PORT MAP (
          ce => ce,
          clk => clk,
          reset => reset,
          Fout60hz => Fout60hz
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
 signal_rest: process
begin		
reset<='0';
wait for 98 ns;	
reset<='1';
wait for 2 ns;	
reset<='0';
wait;
end process;

END;
