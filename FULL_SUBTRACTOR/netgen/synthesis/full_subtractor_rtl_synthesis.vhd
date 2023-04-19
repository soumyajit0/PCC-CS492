--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: full_subtractor_rtl_synthesis.vhd
-- /___/   /\     Timestamp: Wed Apr 19 16:07:10 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm full_subtractor_rtl -w -dir netgen/synthesis -ofmt vhdl -sim full_subtractor_rtl.ngc full_subtractor_rtl_synthesis.vhd 
-- Device	: xc3s50-5-pq208
-- Input file	: full_subtractor_rtl.ngc
-- Output file	: /home/ise/13000221080/FULL_SUBTRACTOR/netgen/synthesis/full_subtractor_rtl_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: full_subtractor_rtl
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity full_subtractor_rtl is
  port (
    Bo : out STD_LOGIC; 
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    D : out STD_LOGIC; 
    Bin : in STD_LOGIC := 'X' 
  );
end full_subtractor_rtl;

architecture Structure of full_subtractor_rtl is
  signal A_IBUF_1 : STD_LOGIC; 
  signal B_IBUF_3 : STD_LOGIC; 
  signal Bin_IBUF_5 : STD_LOGIC; 
  signal Bo_OBUF_7 : STD_LOGIC; 
  signal D_OBUF_9 : STD_LOGIC; 
begin
  Bo1 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => Bin_IBUF_5,
      I1 => A_IBUF_1,
      I2 => B_IBUF_3,
      O => Bo_OBUF_7
    );
  X2_c1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_IBUF_1,
      I1 => B_IBUF_3,
      I2 => Bin_IBUF_5,
      O => D_OBUF_9
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_1
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_3
    );
  Bin_IBUF : IBUF
    port map (
      I => Bin,
      O => Bin_IBUF_5
    );
  Bo_OBUF : OBUF
    port map (
      I => Bo_OBUF_7,
      O => Bo
    );
  D_OBUF : OBUF
    port map (
      I => D_OBUF_9,
      O => D
    );

end Structure;

