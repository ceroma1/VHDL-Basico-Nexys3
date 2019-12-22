LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT codigeneric
    PORT(
         entrada : IN  std_logic_vector(7 downto 0);
         valido : OUT  std_logic;
         salida : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal entrada : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal valido : std_logic;
   signal salida : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: codigeneric PORT MAP (
          entrada => entrada,
          valido => valido,
          salida => salida
        );


s_entrada0: process
begin		
entrada(0)<='0';
wait for 1 ns;	
entrada(0)<='1';
wait for 1 ns;
end process;

s_entrada1: process
begin		
entrada(1)<='0';
wait for 2 ns;	
entrada(1)<='1';
wait for 2 ns;
end process;

s_entrada2: process
begin		
entrada(2)<='0';
wait for 4 ns;	
entrada(2)<='1';
wait for 4 ns;
end process;

s_entrada3: process
begin		
entrada(3)<='0';
wait for 8 ns;	
entrada(3)<='1';
wait for 8 ns;
end process;

s_entrada4: process
begin		
entrada(4)<='0';
wait for 16 ns;	
entrada(4)<='1';
wait for 16 ns;
end process;

s_entrada5: process
begin		
entrada(5)<='0';
wait for 32 ns;	
entrada(5)<='1';
wait for 32 ns;
end process;

s_entrada6: process
begin		
entrada(6)<='0';
wait for 64 ns;	
entrada(6)<='1';
wait for 64 ns;
end process;

s_entrada7: process
begin		
entrada(7)<='0';
wait for 128 ns;	
entrada(7)<='1';
wait for 128 ns;
end process;

END;
