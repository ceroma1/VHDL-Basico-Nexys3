LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplica4x3
    PORT(
         DatA : IN  std_logic_vector(3 downto 0);
         DatB : IN  std_logic_vector(3 downto 0);
         Multi : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatA : std_logic_vector(3 downto 0) := (others => '0');
   signal DatB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Multi : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplica4x3 PORT MAP (
          DatA => DatA,
          DatB => DatB,
          Multi => Multi
        );

S_DatA0:PROCESS
BEGIN
DatA(0)<= '0';
WAIT FOR 1ns;
DatA(0)<= '1';
wait for 1ns;
end process;  

S_DatA1:PROCESS
BEGIN
DatA(1)<= '0';
WAIT FOR 2ns;
DatA(1)<= '1';
wait for 2ns;
end process;

S_DatA2:PROCESS
BEGIN
DatA(2)<= '0';
WAIT FOR 4ns;
DatA(2)<= '1';
wait for 4ns;
end process;

S_DatA3:PROCESS
BEGIN
DatA(3)<= '0';
WAIT FOR 8ns;
DatA(3)<= '1';
wait for 8ns;
end process;

S_DatB0:PROCESS
BEGIN
DatB(0)<= '0';
WAIT FOR 16ns;
DatB(0)<= '1';
wait for 16ns;
end process;

S_DatB1:PROCESS
BEGIN
DatB(1)<= '0';
WAIT FOR 32ns;
DatB(1)<= '1';
wait for 32ns;
end process;

S_DatB2:PROCESS
BEGIN
DatB(2)<= '0';
WAIT FOR 64ns;
DatB(2)<= '1';
wait for 64ns;
end process;

S_DatB3:PROCESS
BEGIN
DatB(3)<= '0';
WAIT FOR 128ns;
DatB(3)<= '1';
wait for 128ns;
end process;

END;
