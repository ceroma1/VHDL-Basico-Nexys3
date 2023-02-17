LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tes0 IS
END tes0;
 
ARCHITECTURE behavior OF tes0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Maq_estado
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Foutq : OUT  std_logic;
         Int_ext : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Int_ext : std_logic := '0';

 	--Outputs
   signal Foutq : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Maq_estado PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Foutq => Foutq,
          Int_ext => Int_ext
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
-- Stimulus process
sig_reset: process
begin		
reset<='1';
wait for 6 ns;	
reset<='0';
wait;
end process;

sig_int_ext:process
begin
int_ext<='0';--00
wait for 79 ns;
int_ext<='1';--11
wait for 10 ns;
int_ext<='0';--0
wait for 10 ns;
int_ext<='1';--1
wait for 10 ns;
int_ext<='0';--0
wait for 10 ns;
int_ext<='1';--1
wait for 10 ns;
int_ext<='0';--0
wait for 10 ns;
int_ext<='1';--1
wait for 10 ns;
int_ext<='0';--0
wait for 10 ns;
int_ext<='1';--1
wait for 10 ns;
int_ext<='0';--0
wait for 10 ns;
int_ext<='1';--0
wait for 10 ns;--OJO wait
end process;

END;

--sig_int_ext:process
--begin
--int_ext<='0';--00
--wait for 79 ns;
--int_ext<='1';--11
--wait for 79 ns;
--int_ext<='0';--0
--wait for 29 ns;
--int_ext<='1';--1
--wait for 29 ns;
--int_ext<='0';--0
--wait for 29 ns;
--int_ext<='1';--1
--wait for 29 ns;
--int_ext<='0';--0
--wait for 29 ns;
--int_ext<='1';--1
--wait for 29 ns;
--int_ext<='0';--0
--wait for 29 ns;
--int_ext<='1';--1
--wait for 29 ns;
--int_ext<='0';--0
--wait for 29 ns;
--int_ext<='1';--0
--wait for 20 ns;--OJO wait
--end process;
