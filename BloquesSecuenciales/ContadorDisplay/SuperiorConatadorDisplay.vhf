--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SuperiorConatadorDisplay.vhf
-- /___/   /\     Timestamp : 02/18/2023 09:40:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/ise/gitVHDL2023/VHDL-Basico-Nexys3/BloquesSecuenciales/ContadorDisplay/SuperiorConatadorDisplay.vhf -w /home/ise/gitVHDL2023/VHDL-Basico-Nexys3/BloquesSecuenciales/ContadorDisplay/SuperiorConatadorDisplay.sch
--Design Name: SuperiorConatadorDisplay
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

entity SuperiorConatadorDisplay is
   port ( clk   : in    std_logic; 
          reset : in    std_logic; 
          an    : out   std_logic_vector (3 downto 0); 
          Seg   : out   std_logic_vector (6 downto 0));
end SuperiorConatadorDisplay;

architecture BEHAVIORAL of SuperiorConatadorDisplay is
   signal XLXN_5 : std_logic_vector (3 downto 0);
   signal XLXN_6 : std_logic;
   component ModuloDisplay
      port ( A        : in    std_logic_vector (3 downto 0); 
             segmento : out   std_logic_vector (6 downto 0); 
             Anodos   : out   std_logic_vector (3 downto 0));
   end component;
   
   component contador
      port ( Borra  : in    std_logic; 
             reloj  : in    std_logic; 
             salida : out   std_logic_vector (3 downto 0));
   end component;
   
   component divide
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             Foutdivide : out   std_logic);
   end component;
   
begin
   XLXI_1 : ModuloDisplay
      port map (A(3 downto 0)=>XLXN_5(3 downto 0),
                Anodos(3 downto 0)=>an(3 downto 0),
                segmento(6 downto 0)=>Seg(6 downto 0));
   
   XLXI_2 : contador
      port map (Borra=>reset,
                reloj=>XLXN_6,
                salida(3 downto 0)=>XLXN_5(3 downto 0));
   
   XLXI_3 : divide
      port map (clk=>clk,
                reset=>reset,
                Foutdivide=>XLXN_6);
   
end BEHAVIORAL;


