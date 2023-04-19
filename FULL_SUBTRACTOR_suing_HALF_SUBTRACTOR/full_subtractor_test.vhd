--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:59 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/FULL_SUBTRACTOR_suing_HALF_SUBTRACTOR/full_subtractor_test.vhd
-- Project Name:  FULL_SUBTRACTOR_suing_HALF_SUBTRACTOR
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
         a : IN  std_logic;
         b : IN  std_logic;
         bin : IN  std_logic;
         d : OUT  std_logic;
         bo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal bin : std_logic := '0';

 	--Outputs
   signal d : std_logic;
   signal bo : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_subtractor_rtl PORT MAP (
          a => a,
          b => b,
          bin => bin,
          d => d,
          bo => bo
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a <= '0';
		b <= '0';
		bin <= '0';
		wait for 1 ps;
		a <= '0';
		b <= '0';
		bin <= '1';
		wait for 1 ps;
		a <= '0';
		b <= '1';
		bin <= '0';
		wait for 1 ps;
		a <= '0';
		b <= '1';
		bin <= '1';
		wait for 1 ps;
		a <= '1';
		b <= '0';
		bin <= '0';
		wait for 1 ps;
		a <= '1';
		b <= '0';
		bin <= '1';
		wait for 1 ps;
		a <= '1';
		b <= '1';
		bin <= '0';
		wait for 1 ps;
		a <= '1';
		b <= '1';
		bin <= '1';
		wait for 1 ps;
   end process;

END;
