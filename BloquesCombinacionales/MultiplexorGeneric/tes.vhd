LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxgeneric
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic_vector(3 downto 0);
         d : IN  std_logic_vector(3 downto 0);
         selec : IN  std_logic_vector(1 downto 0);
         salida : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic_vector(3 downto 0) := (others => '0');
   signal d : std_logic_vector(3 downto 0) := (others => '0');
   signal selec : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxgeneric PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          selec => selec,
          salida => salida
        );

a <= "1111";
b <= "0000";
c <= "0110";
d <= "1001";

S_selec0:PROCESS
BEGIN
selec(0)<= '0';
WAIT FOR 1ns;
selec(0)<= '1';
wait for 1ns;
end process;

S_selec1:PROCESS
BEGIN
selec(1)<= '0';
WAIT FOR 2ns;
selec(1)<= '1';
wait for 2ns;
end process;

END;
