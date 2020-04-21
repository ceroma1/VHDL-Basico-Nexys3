LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulotop
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         segmento : OUT  std_logic_vector(6 downto 0);
         anodos : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal segmento : std_logic_vector(6 downto 0);
   signal anodos : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulotop PORT MAP (
          clk => clk,
          clear => clear,
          segmento => segmento,
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

sg_clear: process
begin		
clear <= '1';
wait for 6 ns;	
clear <='0';
wait;
end process;
END;
