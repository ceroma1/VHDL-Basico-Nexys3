LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ModuloDisplay
    PORT(
         DatoIn : IN  std_logic_vector(3 downto 0);
         anodos : OUT  std_logic_vector(3 downto 0);
         segmento : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatoIn : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodos : std_logic_vector(3 downto 0);
   signal segmento : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ModuloDisplay PORT MAP (
          DatoIn => DatoIn,
          anodos => anodos,
          segmento => segmento
        );

S_DatoIn0:PROCESS
BEGIN
DatoIn(0)<= '0';
WAIT FOR 1ns;
DatoIn(0)<= '1';
wait for 1ns;
end process;

S_DatoIn1:PROCESS
BEGIN
DatoIn(1)<= '0';
WAIT FOR 2ns;
DatoIn(1)<= '1';
wait for 2ns;
end process;

S_DatoIn2:PROCESS
BEGIN
DatoIn(2)<= '0';
WAIT FOR 4ns;
DatoIn(2)<= '1';
wait for 4ns;
end process;

S_DatoIn3:PROCESS
BEGIN
DatoIn(3)<= '0';
WAIT FOR 8ns;
DatoIn(3)<= '1';
wait for 8ns;
end process;

END;
