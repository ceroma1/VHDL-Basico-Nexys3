--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SuperiorContadorControl.vhf
-- /___/   /\     Timestamp : 12/01/2020 11:49:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/ise/Secuencial_Nexys3/BloquesSecuenciales/contadorControl/SuperiorContadorControl.vhf -w /home/ise/Secuencial_Nexys3/BloquesSecuenciales/contadorControl/SuperiorContadorControl.sch
--Design Name: SuperiorContadorControl
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

entity SuperiorContadorControl is
   port ( clk   : in    std_logic; 
          reset : in    std_logic; 
          selec : in    std_logic; 
          an    : out   std_logic_vector (3 downto 0); 
          seg   : out   std_logic_vector (6 downto 0));
end SuperiorContadorControl;

architecture BEHAVIORAL of SuperiorContadorControl is
   signal XLXN_6 : std_logic;
   signal XLXN_7 : std_logic_vector (3 downto 0);
   component ContadorControl
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             sel   : in    std_logic; 
             led   : out   std_logic_vector (3 downto 0));
   end component;
   
   component ModuloDisplay
      port ( A        : in    std_logic_vector (3 downto 0); 
             segmento : out   std_logic_vector (6 downto 0); 
             Anodos   : out   std_logic_vector (3 downto 0));
   end component;
   
   component divide
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             Foutdivide : out   std_logic);
   end component;
   
begin
   XLXI_1 : ContadorControl
      port map (clk=>XLXN_6,
                reset=>reset,
                sel=>selec,
                led(3 downto 0)=>XLXN_7(3 downto 0));
   
   XLXI_2 : ModuloDisplay
      port map (A(3 downto 0)=>XLXN_7(3 downto 0),
                Anodos(3 downto 0)=>an(3 downto 0),
                segmento(6 downto 0)=>seg(6 downto 0));
   
   XLXI_3 : divide
      port map (clk=>clk,
                reset=>reset,
                Foutdivide=>XLXN_6);
   
end BEHAVIORAL;


