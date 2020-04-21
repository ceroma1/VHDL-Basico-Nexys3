LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro
    PORT(
         clk : IN  std_logic;
         carga : IN  std_logic;
         clear : IN  std_logic;
         DatoIn : IN  std_logic_vector(7 downto 0);
         DatoOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal carga : std_logic := '0';
   signal clear : std_logic := '0';
   signal DatoIn : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DatoOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro PORT MAP (
          clk => clk,
          carga => carga,
          clear => clear,
          DatoIn => DatoIn,
          DatoOut => DatoOut
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

DatoIn<="00000001";

sig_clear:process
begin
clear<='1';
wait for 6 ns;
clear<='0';
wait;
end process;

sig_carga: process
begin
carga<='0';
wait for 53 ns;
carga<='1';
wait for 3 ns;
carga<='0';
wait;
end process;

END;
