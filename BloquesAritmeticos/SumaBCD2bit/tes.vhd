LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumaBCD2bit
    PORT(
         UnidadesA : IN  std_logic_vector(3 downto 0);
         DecenasA : IN  std_logic_vector(3 downto 0);
         UnidadesB : IN  std_logic_vector(3 downto 0);
         DecenasB : IN  std_logic_vector(3 downto 0);
         Carry : OUT  std_logic;
         SumaU : OUT  std_logic_vector(3 downto 0);
         SumaD : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal UnidadesA : std_logic_vector(3 downto 0) := (others => '0');
   signal DecenasA : std_logic_vector(3 downto 0) := (others => '0');
   signal UnidadesB : std_logic_vector(3 downto 0) := (others => '0');
   signal DecenasB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Carry : std_logic;
   signal SumaU : std_logic_vector(3 downto 0);
   signal SumaD : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumaBCD2bit PORT MAP (
          UnidadesA => UnidadesA,
          DecenasA => DecenasA,
          UnidadesB => UnidadesB,
          DecenasB => DecenasB,
          Carry => Carry,
          SumaU => SumaU,
          SumaD => SumaD
        );

S_UnidadesA:PROCESS
BEGIN
UnidadesA<="1001";
WAIT FOR 40ns;
UnidadesA<="0111";
wait for 40ns;
end process;

S_DecenasA:PROCESS
BEGIN
DecenasA<="1001";
WAIT FOR 40ns;
DecenasA<="0010";
wait for 40ns;
end process;

S_UnidadesB:PROCESS
BEGIN
UnidadesB<="1001";
WAIT FOR 40ns;
UnidadesB<="0001";
wait for 40ns;
end process;

S_DecenasB:PROCESS
BEGIN
DecenasB<="1001";
WAIT FOR 40ns;
DecenasB<="0111";
wait for 40ns;
end process;


END;
