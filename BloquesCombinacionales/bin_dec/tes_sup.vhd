LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes_sup IS
END tes_sup;
 
ARCHITECTURE behavior OF tes_sup IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT superior
    PORT(
         entrada : IN  std_logic_vector(3 downto 0);
         signo : OUT  std_logic;
         segmentos : OUT  std_logic_vector(6 downto 0);
         anodos : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal signo : std_logic;
   signal segmentos : std_logic_vector(6 downto 0);
   signal anodos : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: superior PORT MAP (
          entrada => entrada,
          signo => signo,
          segmentos => segmentos,
          anodos => anodos
        );

S_entrada0:PROCESS
BEGIN
entrada(0)<= '0';
WAIT FOR 1ns;
entrada(0)<= '1';
wait for 1ns;
end process;

S_entrada1:PROCESS
BEGIN
entrada(1)<= '0';
WAIT FOR 2ns;
entrada(1)<= '1';
wait for 2ns;
end process;

S_entrada2:PROCESS
BEGIN
entrada(2)<= '0';
WAIT FOR 4ns;
entrada(2)<= '1';
wait for 4ns;
end process;

S_entrada3:PROCESS
BEGIN
entrada(3)<= '0';
WAIT FOR 8ns;
entrada(3)<= '1';
wait for 8ns;
end process; 

END;
