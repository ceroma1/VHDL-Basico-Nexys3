--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SuperiorContador.vhf
-- /___/   /\     Timestamp : 03/10/2019 19:27:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/ise/OSwin7/BoquesSecuenciales/Contador/SuperiorContador.vhf -w /home/ise/OSwin7/BoquesSecuenciales/Contador/SuperiorContador.sch
--Design Name: SuperiorContador
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SuperiorContador is
   port ( CLK   : in    std_logic; 
          reset : in    std_logic; 
          leds  : out   std_logic_vector (3 downto 0));
end SuperiorContador;

architecture BEHAVIORAL of SuperiorContador is
   signal XLXN_4 : std_logic;
   component cuenta
      port ( clk          : in    std_logic; 
             clear        : in    std_logic; 
             salidacuenta : out   std_logic_vector (3 downto 0));
   end component;
   
   component divide
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             Foutdivide : out   std_logic);
   end component;
   
begin
   XLXI_1 : cuenta
      port map (clear=>reset,
                clk=>XLXN_4,
                salidacuenta(3 downto 0)=>leds(3 downto 0));
   
   XLXI_2 : divide
      port map (clk=>CLK,
                reset=>reset,
                Foutdivide=>XLXN_4);
   
end BEHAVIORAL;


