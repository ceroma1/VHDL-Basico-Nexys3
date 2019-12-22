LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes1 IS
END tes1;
 
ARCHITECTURE behavior OF tes1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumadoRestador
    PORT(
         DatA : IN  std_logic_vector(3 downto 0);
         DatB : IN  std_logic_vector(3 downto 0);
         Respuesta : OUT  std_logic_vector(5 downto 0);
         Selec : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DatA : std_logic_vector(3 downto 0) := (others => '0');
   signal DatB : std_logic_vector(3 downto 0) := (others => '0');
   signal Selec : std_logic := '0';

 	--Outputs
   signal Respuesta : std_logic_vector(5 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumadoRestador PORT MAP (
          DatA => DatA,
          DatB => DatB,
          Respuesta => Respuesta,
          Selec => Selec
        );

S_b0:PROCESS
BEGIN
Datb(0)<= '0';
WAIT FOR 1ns;
Datb(0)<= '1';
wait for 1ns;
end process;  

S_b1:PROCESS
BEGIN
Datb(1)<= '0';
WAIT FOR 2ns;
Datb(1)<= '1';
wait for 2ns;
end process;

S_b2:PROCESS
BEGIN
Datb(2)<= '0';
WAIT FOR 4ns;
Datb(2)<= '1';
wait for 4ns;
end process;

S_b3:PROCESS
BEGIN
Datb(3)<= '0';
WAIT FOR 8ns;
Datb(3)<= '1';
wait for 8ns;
end process;

S_a0:PROCESS
BEGIN
Data(0)<= '0';
WAIT FOR 16ns;
Data(0)<= '1';
wait for 16ns;
end process;

S_a1:PROCESS
BEGIN
Data(1)<= '0';
WAIT FOR 32ns;
Data(1)<= '1';
wait for 32ns;
end process;

S_a2:PROCESS
BEGIN
Data(2)<= '0';
WAIT FOR 64ns;
Data(2)<= '1';
wait for 64ns;
end process;

S_a3:PROCESS
BEGIN
Data(3)<= '0';
WAIT FOR 128ns;
Data(3)<= '1';
wait for 128ns;
end process;

S_selec:PROCESS
BEGIN
selec<= '0';
WAIT FOR 256ns;
selec<= '1';
wait for 256ns;
end process; 

END;
