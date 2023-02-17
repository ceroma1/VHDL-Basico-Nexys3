LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tes1 IS
END Tes1;
 
ARCHITECTURE behavior OF Tes1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Superior
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         segmento : OUT  std_logic_vector(6 downto 0);
         anodo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal segmento : std_logic_vector(6 downto 0);
   signal anodo : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Superior PORT MAP (
          clk => clk,
          reset => reset,
          segmento => segmento,
          anodo => anodo
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
sig_reset :process 
begin
reset<='1';
wait for 6 ns;
reset<='0';
wait;
end process;

END;
