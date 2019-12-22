LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes IS
END tes;
 
ARCHITECTURE behavior OF tes IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Bus_dato
    PORT(
         DatoA : IN  std_logic_vector(3 downto 0);
         DatoB : IN  std_logic_vector(3 downto 0);
         Sel_dato : IN  std_logic;
         Sel_display : IN  std_logic_vector(1 downto 0);
         segmento : OUT  std_logic_vector(6 downto 0);
         anodo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DatoA : std_logic_vector(3 downto 0) := (others => '0');
   signal DatoB : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel_dato : std_logic := '0';
   signal Sel_display : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal segmento : std_logic_vector(6 downto 0);
   signal anodo : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Bus_dato PORT MAP (
          DatoA => DatoA,
          DatoB => DatoB,
          Sel_dato => Sel_dato,
          Sel_display => Sel_display,
          segmento => segmento,
          anodo => anodo
        );

datoA <= "0000";
datoB <= "1111";

sg_Seldato:process
begin
sel_dato<='1';
WAIT FOR 50 ns;
sel_dato<='0';
wait for 50 ns;
end process;

sg_seldisplay:process
begin
Sel_display<="00";
wait for 10 ns;
Sel_display<="01";
wait for 10 ns;
Sel_display<="10";
wait for 10 ns;
Sel_display<="11";
wait for 10 ns;
end process;
END;
