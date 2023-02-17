LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tes0 IS
END Tes0;
 
ARCHITECTURE behavior OF Tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Superior
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         segmento : OUT  std_logic_vector(6 downto 0);
         Anodos : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal segmento : std_logic_vector(6 downto 0);
   signal Anodos : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Superior PORT MAP (
          clk => clk,
          reset => reset,
          segmento => segmento,
          Anodos => Anodos
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
 sig_reset:process
 begin
 reset<='1';
 wait for 6 ns;
 reset<='0';
 wait;
 end process;
END;
