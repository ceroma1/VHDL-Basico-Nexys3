LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arreglo_reg
    PORT(
         clear : IN  std_logic;
         clk : IN  std_logic;
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clear : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arreglo_reg PORT MAP (
          clear => clear,
          clk => clk,
          salida => salida
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
