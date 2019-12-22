LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY pr1 IS
END pr1;
 
ARCHITECTURE behavior OF pr1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT superior
    PORT(
         Fentrada : IN  std_logic_vector(7 downto 0);
			seg: OUT  std_logic_vector(6 downto 0);
         an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Fentrada : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal seg : std_logic_vector(6 downto 0);
	signal an : std_logic_vector(3 downto 0);
    
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: superior PORT MAP (
          Fentrada => Fentrada,
          seg => seg,
			 an => an
        );

s_Fentrada0: process
begin		
Fentrada(0)<='0';
wait for 1 ns;	
Fentrada(0)<='1';
wait for 1 ns;
end process;
	
s_Fentrada1: process
begin		
Fentrada(1)<='0';
wait for 2 ns;	
Fentrada(1)<='1';
wait for 2 ns;
end process;
	
s_Fentrada2: process
begin		
Fentrada(2)<='0';
wait for 4 ns;	
Fentrada(2)<='1';
wait for 4 ns;
end process;

s_Fentrada3: process
begin		
Fentrada(3)<='0';
wait for 8 ns;	
Fentrada(3)<='1';
wait for 8 ns;
end process;

s_Fentrada4: process
begin		
Fentrada(4)<='0';
wait for 16 ns;	
Fentrada(4)<='1';
wait for 16 ns;
end process;

s_Fentrada5: process
begin		
Fentrada(5)<='0';
wait for 32 ns;	
Fentrada(5)<='1';
wait for 32 ns;
end process;	
	
s_Fentrada6: process
begin		
Fentrada(6)<='0';
wait for 64 ns;	
Fentrada(6)<='1';
wait for 64 ns;
end process;	

s_Fentrada7: process
begin		
Fentrada(7)<='0';
wait for 128 ns;	
Fentrada(7)<='1';
wait for 128 ns;
end process;

END;
