--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:05 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/HALF_ADDER/half_adder_test.vhd
-- Project Name:  HALF_ADDER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder_rtl
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
 
ENTITY half_adder_test IS
END half_adder_test;
 
ARCHITECTURE behavior OF half_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder_rtl PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Carry => Carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
     A <= '0';
	  B <= '0';
	  wait for 1 ps;
	  A <= '0';
	  B <= '1';
	  wait for 1 ps;
	  A <= '1';
	  B <= '0';
	  wait for 1 ps;
	  A <= '1';
	  B <= '1';
	  wait for 1 ps;
   end process;

END;
