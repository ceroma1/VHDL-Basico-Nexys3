LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopAdditionSpeed
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopAdditionSpeed PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s
        );

sg_a0:process
begin
a(0)<='0';
wait for 1 ns;
a(0) <= '1';
wait for 1 ns;
end process;

sg_a1:process
begin
a(1)<='0';
wait for 2 ns;
a(1) <= '1';
wait for 2 ns;
end process;

sg_a2:process
begin
a(2)<='0';
wait for 4 ns;
a(2) <= '1';
wait for 4 ns;
end process;

sg_a3:process
begin
a(3)<='0';
wait for 8 ns;
a(3) <= '1';
wait for 8 ns;
end process; 

sg_b0:process
begin
b(0)<='0';
wait for 16 ns;
b(0) <= '1';
wait for 16 ns;
end process;   

sg_b1:process
begin
b(1)<='0';
wait for 32 ns;
b(1) <= '1';
wait for 32 ns;
end process;   

sg_b2:process
begin
b(2)<='0';
wait for 64 ns;
b(2) <= '1';
wait for 64 ns;
end process;   

sg_b3:process
begin
b(3)<='0';
wait for 128 ns;
b(3) <= '1';
wait for 128 ns;
end process;   

END;
