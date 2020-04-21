LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tes IS
END Tes;
 
ARCHITECTURE behavior OF Tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupMuxDisplay
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         EntrA : IN  std_logic_vector(3 downto 0);
         EntrB : IN  std_logic_vector(3 downto 0);
         segmentos : OUT  std_logic_vector(6 downto 0);
         anodos : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal EntrA : std_logic_vector(3 downto 0) := (others => '0');
   signal EntrB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal segmentos : std_logic_vector(6 downto 0);
   signal anodos : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupMuxDisplay PORT MAP (
          clk => clk,
          reset => reset,
          EntrA => EntrA,
          EntrB => EntrB,
          segmentos => segmentos,
          anodos => anodos
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
EntrA <="0111";
EntrB <="1001";

sg_reset:process
begin
reset<='1';
wait for 6 ns;
reset<='0';
wait ;
end process;

END;
