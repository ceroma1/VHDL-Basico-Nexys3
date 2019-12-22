LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes1 IS
END tes1;
 
ARCHITECTURE behavior OF tes1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumBCD1Bit
    PORT(
         NumA : IN  std_logic_vector(3 downto 0);
         NumB : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
			segmentos:OUT  std_logic_vector(6 downto 0);
			anodos:OUT  std_logic_vector(3 downto 0);
         Fsuma : OUT  std_logic_vector(3 downto 0);
         Fcarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal NumA : std_logic_vector(3 downto 0) := (others => '0');
   signal NumB : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Fsuma : std_logic_vector(3 downto 0);
   signal Fcarry : std_logic;
	signal segmentos: std_logic_vector(6 downto 0);
	signal anodos: std_logic_vector(3 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumBCD1Bit PORT MAP (
          NumA => NumA,
          NumB => NumB,
          Cin => Cin,
			 segmentos => segmentos,
			 anodos =>anodos,
          Fsuma => Fsuma,
          Fcarry => Fcarry
        );

cin<= '0';
		  
S_NumA :PROCESS
BEGIN
NumA<="1001";
WAIT FOR 40ns;
NumA<="0110";
wait for 40ns;
end process;

S_NumB :PROCESS
BEGIN
NumB<="1001";
WAIT FOR 40ns;
NumB<="0001";
wait for 40ns;
end process;

END;
