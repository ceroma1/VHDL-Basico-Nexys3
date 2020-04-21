LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tes IS
END Tes;
 
ARCHITECTURE behavior OF Tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SupMuxDisplay
    PORT(
         sel : IN  std_logic;
         EntA : IN  std_logic_vector(3 downto 0);
         EntB : IN  std_logic_vector(3 downto 0);
         segmento : OUT  std_logic_vector(6 downto 0);
         Anodos : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic := '0';
   signal EntA : std_logic_vector(3 downto 0) := (others => '0');
   signal EntB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal segmento : std_logic_vector(6 downto 0);
   signal Anodos : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SupMuxDisplay PORT MAP (
          sel => sel,
          EntA => EntA,
          EntB => EntB,
          segmento => segmento,
          Anodos => Anodos
        );



sg_sel:process
begin
sel<='0';
wait for 10 ns;
sel<='1';
wait for 10 ns;
end process;

EntA<="0010";
Entb<="1001";

END;
