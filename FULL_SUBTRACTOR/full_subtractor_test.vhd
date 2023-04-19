--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:53 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/FULL_SUBTRACTOR/full_subtractor_test.vhd
-- Project Name:  FULL_SUBTRACTOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_subtractor_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_subtractor_test IS
END full_subtractor_test;
 
ARCHITECTURE behavior OF full_subtractor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_subtractor_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Bin : IN  std_logic;
         D : OUT  std_logic;
         Bo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Bin : std_logic := '0';

 	--Outputs
   signal D : std_logic;
   signal Bo : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_subtractor_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          D => D,
          Bo => Bo
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0';
		B <= '0';
		Bin <= '0';
		wait for 1 ps;
		A <= '0';
		B <= '0';
		Bin <= '1';
		wait for 1 ps;
		A <= '0';
		B <= '1';
		Bin <= '0';
		wait for 1 ps;
		A <= '0';
		B <= '1';
		Bin <= '1';
		wait for 1 ps;
		A <= '1';
		B <= '0';
		Bin <= '0';
		wait for 1 ps;
		A <= '1';
		B <= '0';
		Bin <= '1';
		wait for 1 ps;
		A <= '1';
		B <= '1';
		Bin <= '0';
		wait for 1 ps;
		A <= '1';
		B <= '1';
		Bin <= '1';
		wait for 1 ps;
   end process;

END;
