LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Modulo_BinBcd
    PORT(
         DatoIN : IN  std_logic_vector(7 downto 0);
         DatoOut : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
        

   --Inputs
   signal DatoIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DatoOut : std_logic_vector(9 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Modulo_BinBcd PORT MAP (
          DatoIN => DatoIN,
          DatoOut => DatoOut
        );

S_DatoIN0:PROCESS
BEGIN
DatoIN(0)<= '0';
WAIT FOR 1ns;
DatoIN(0)<= '1';
wait for 1ns;
end process;


S_DatoIN1:PROCESS
BEGIN
DatoIN(1)<= '0';
WAIT FOR 2ns;
DatoIN(1)<= '1';
wait for 2ns;
end process;

S_DatoIN2:PROCESS
BEGIN
DatoIN(2)<= '0';
WAIT FOR 4ns;
DatoIN(2)<= '1';
wait for 4ns;
end process;

S_DatoIN3:PROCESS
BEGIN
DatoIN(3)<= '0';
WAIT FOR 8ns;
DatoIN(3)<= '1';
wait for 8ns;
end process;

S_DatoIN4:PROCESS
BEGIN
DatoIN(4)<= '0';
WAIT FOR 16ns;
DatoIN(4)<= '1';
wait for 16ns;
end process;

S_DatoIN5:PROCESS
BEGIN
DatoIN(5)<= '0';
WAIT FOR 32ns;
DatoIN(5)<= '1';
wait for 32ns;
end process;

S_DatoIN6:PROCESS
BEGIN
DatoIN(6)<= '0';
WAIT FOR 64ns;
DatoIN(6)<= '1';
wait for 64ns;
end process;

S_DatoIN7:PROCESS
BEGIN
DatoIN(7)<= '0';
WAIT FOR 128ns;
DatoIN(7)<= '1';
wait for 128ns;
end process;

END;
