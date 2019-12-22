LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Demux
    PORT(
         DatoIn : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic_vector(1 downto 0);
         Datout0 : OUT  std_logic_vector(3 downto 0);
         Datout1 : OUT  std_logic_vector(3 downto 0);
         Datout2 : OUT  std_logic_vector(3 downto 0);
         Datout3 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatoIn : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Datout0 : std_logic_vector(3 downto 0);
   signal Datout1 : std_logic_vector(3 downto 0);
   signal Datout2 : std_logic_vector(3 downto 0);
   signal Datout3 : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Demux PORT MAP (
          DatoIn => DatoIn,
          Sel => Sel,
          Datout0 => Datout0,
          Datout1 => Datout1,
          Datout2 => Datout2,
          Datout3 => Datout3
        );

S_Sel0:PROCESS
BEGIN
sel(0)<= '0';
WAIT FOR 1ns;
sel(0)<= '1';
wait for 1ns;
end process;

S_Sel:PROCESS
BEGIN
Sel(1)<= '0';
WAIT FOR 2ns;
Sel(1)<= '1';
wait for 2ns;
end process;

DatoIn<="0110";

END;
