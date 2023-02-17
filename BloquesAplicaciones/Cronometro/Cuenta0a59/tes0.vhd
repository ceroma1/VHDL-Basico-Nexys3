LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cuenta0a59
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ce : IN  std_logic;
         f0a59 : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ce : std_logic := '0';

 	--Outputs
   signal f0a59 : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cuenta0a59 PORT MAP (
          clk => clk,
          reset => reset,
          ce => ce,
          f0a59 => f0a59
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
reset<='0';     -- hold reset state for 100 ns.
wait for 3 ns;	
reset<='1';     -- hold reset state for 100 ns.
wait for 2 ns;	
reset<='0';     -- hold reset state for 100 ns.
wait;	      
end process;

signal_ce: process
begin		
ce<='0';     -- hold reset state for 100 ns.
wait for 4 ns;	
ce<='1';     -- hold reset state for 100 ns.
wait for 640 ns;	
ce<='0';     -- hold reset state for 100 ns.
wait;	      
end process;

END;
