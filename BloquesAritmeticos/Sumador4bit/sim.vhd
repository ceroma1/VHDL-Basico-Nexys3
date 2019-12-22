LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumaParalela
    PORT(
         DatoA : IN  std_logic_vector(3 downto 0);
         DatoB : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Suma : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatoA : std_logic_vector(3 downto 0) := (others => '0');
   signal DatoB : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Suma : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumaParalela PORT MAP (
          DatoA => DatoA,
          DatoB => DatoB,
          Cin => Cin,
          Suma => Suma
        );

S_A0:PROCESS
BEGIN
DatoA(0)<= '0';
WAIT FOR 1ns;
DatoA(0)<= '1';
wait for 1ns;
end process;

S_A1:PROCESS
BEGIN
DatoA(1)<= '0';
WAIT FOR 2ns;
DatoA(1)<= '1';
wait for 2ns;
end process;

S_A2:PROCESS
BEGIN
DatoA(2)<= '0';
WAIT FOR 4ns;
DatoA(2)<= '1';
wait for 4ns;
end process;

S_A3:PROCESS
BEGIN
DatoA(3)<= '0';
WAIT FOR 8ns;
DatoA(3)<= '1';
wait for 8ns;
end process;

S_b0:PROCESS
BEGIN
DatoB(0)<= '0';
WAIT FOR 16ns;
DatoB(0)<= '1';
wait for 16ns;
end process;

S_b1:PROCESS
BEGIN
DatoB(1)<= '0';
WAIT FOR 32ns;
DatoB(1)<= '1';
wait for 32ns;
end process;

S_b2:PROCESS
BEGIN
DatoB(2)<= '0';
WAIT FOR 64ns;
DatoB(2)<= '1';
wait for 64ns;
end process;

S_b3:PROCESS
BEGIN
DatoB(3)<= '0';
WAIT FOR 128ns;
DatoB(3)<= '1';
wait for 128ns;
end process;

cin<='0';

END;
