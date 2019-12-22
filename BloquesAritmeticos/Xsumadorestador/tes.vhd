LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumaresta
    PORT(
         opera : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(3 downto 0);
         des : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal opera : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(3 downto 0);
   signal des : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumaresta PORT MAP (
          opera => opera,
          a => a,
          b => b,
          salida => salida,
          des => des
        );

S_A0:PROCESS
BEGIN
a(0)<= '0';
WAIT FOR 1ns;
a(0)<= '1';
wait for 1ns;
end process;

S_A1:PROCESS
BEGIN
a(1)<= '0';
WAIT FOR 2ns;
a(1)<= '1';
wait for 2ns;
end process;

S_A2:PROCESS
BEGIN
a(2)<= '0';
WAIT FOR 4ns;
a(2)<= '1';
wait for 4ns;
end process;

S_A3:PROCESS
BEGIN
a(3)<= '0';
WAIT FOR 8ns;
a(3)<= '1';
wait for 8ns;
end process;

S_b0:PROCESS
BEGIN
b(0)<= '0';
WAIT FOR 16ns;
b(0)<= '1';
wait for 16ns;
end process;

S_b1:PROCESS
BEGIN
b(1)<= '0';
WAIT FOR 32ns;
b(1)<= '1';
wait for 32ns;
end process;

S_b2:PROCESS
BEGIN
b(2)<= '0';
WAIT FOR 64ns;
b(2)<= '1';
wait for 64ns;
end process;

S_b3:PROCESS
BEGIN
b(3)<= '0';
WAIT FOR 128ns;
b(3)<= '1';
wait for 128ns;
end process;

S_opera:PROCESS
BEGIN
opera<= '0';
WAIT FOR 256ns;
opera<= '1';
wait for 256ns;
end process;
  
END;
