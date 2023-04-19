--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:39:16 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/FULL_ADDER/full_adder_test.vhd
-- Project Name:  FULL_ADDER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_rtl
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
 
ENTITY full_adder_test IS
END full_adder_test;
 
ARCHITECTURE behavior OF full_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Carry => Carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= '0';
		B <= '0';
		Cin <= '0';
		wait for 1 ps;
		A <= '0';
		B <= '0';
		Cin <= '1';
		wait for 1 ps;
		A <= '0';
		B <= '1';
		Cin <= '0';
		wait for 1 ps;
		A <= '0';
		B <= '1';
		Cin <= '1';
		wait for 1 ps;
		A <= '1';
		B <= '0';
		Cin <= '0';
		wait for 1 ps;
		A <= '1';
		B <= '0';
		Cin <= '1';
		wait for 1 ps;
		A <= '1';
		B <= '1';
		Cin <= '0';
		wait for 1 ps;
		A <= '1';
		B <= '1';
		Cin <= '1';
		wait for 1 ps;
   end process;

END;
