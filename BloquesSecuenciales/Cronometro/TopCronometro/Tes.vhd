LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tes IS
END Tes;
 
ARCHITECTURE behavior OF Tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopCronometro
    PORT(
         clk : IN  std_logic;
         ce : IN  std_logic;
         reset : IN  std_logic;
         Anodos : OUT  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ce : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Anodos : std_logic_vector(3 downto 0);
   signal seg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopCronometro PORT MAP (
          clk => clk,
          ce => ce,
          reset => reset,
          Anodos => Anodos,
          seg => seg
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

sg_reset: process
begin		
reset <= '1';
wait for 6 ns;	
reset <='0';
wait;
end process;

ce<='0';

END;
