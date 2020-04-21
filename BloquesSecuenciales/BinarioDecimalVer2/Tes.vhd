LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY Tes IS
END Tes;
 
ARCHITECTURE behavior OF Tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SuperiorBinarioDecimal
    PORT(
         Ent : IN  std_logic_vector(13 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         seg : OUT  std_logic_vector(6 downto 0);
         an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ent : std_logic_vector(13 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal seg : std_logic_vector(6 downto 0);
   signal an : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SuperiorBinarioDecimal PORT MAP (
          Ent => Ent,
          clk => clk,
          reset => reset,
          seg => seg,
          an => an
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--Ent <="10011100001111"; --9999
Ent <="10011100001110"; --9998

   
sg_reset: process
begin		
reset<='1';
wait for 6 ns;	
reset<='0';
wait;
end process;

END;
