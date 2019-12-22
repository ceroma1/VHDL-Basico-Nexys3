LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decogeneric
    PORT(
         entrada : IN  std_logic_vector(2 downto 0);
         salida : OUT  std_logic_vector(7 downto 0) 
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(2 downto 0) := (others => '0'); 

 	--Outputs
   signal salida : std_logic_vector(7 downto 0); 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decogeneric PORT MAP (
          entrada => entrada,
          salida => salida
        );

S_entrada0:PROCESS
BEGIN
entrada(0)<= '0';
WAIT FOR 1ns;
entrada(0)<= '1';
wait for 1ns;
end process;

S_entrada1:PROCESS
BEGIN
entrada(1)<= '0';
WAIT FOR 2ns;
entrada(1)<= '1';
wait for 2ns;
end process;

S_entrada2:PROCESS
BEGIN
entrada(2)<= '0';
WAIT FOR 4ns;
entrada(2)<= '1';
wait for 4ns;
end process;

END;
