LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT complemento
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         selec : IN  std_logic;
         comple : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal selec : std_logic := '0';

 	--Outputs
   signal comple : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: complemento PORT MAP (
          a => a,
          selec => selec,
          comple => comple
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

S_selec:PROCESS
BEGIN
selec<= '0';
WAIT FOR 16ns;
selec<= '1';
wait for 16ns;
end process;

END;
