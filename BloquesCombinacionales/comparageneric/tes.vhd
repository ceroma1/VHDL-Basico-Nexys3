LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT camparageneric
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         salidaigual : OUT  std_logic;
         salidamayor : OUT  std_logic;
         salidamenor : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salidaigual : std_logic;
   signal salidamayor : std_logic;
   signal salidamenor : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: camparageneric PORT MAP (
          a => a,
          b => b,
          salidaigual => salidaigual,
          salidamayor => salidamayor,
          salidamenor => salidamenor
        );


s_entrada: process
begin
a <="0000";
b <="0000";
wait for 1 ns;  
a <="0000";
b <="0001";  
wait for 2 ns;  
a <="0001";
b <="0000";  
wait for 4 ns;
end process;

END;
