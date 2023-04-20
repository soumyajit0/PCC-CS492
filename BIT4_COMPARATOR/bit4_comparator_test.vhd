--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:16:36 04/20/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/BIT4_COMPARATOR/bit4_comparator_test.vhd
-- Project Name:  BIT4_COMPARATOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit4_comparator_rtl
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
 
ENTITY bit4_comparator_test IS
END bit4_comparator_test;
 
ARCHITECTURE behavior OF bit4_comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit4_comparator_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic;
         G : OUT  std_logic;
         L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic;
   signal G : std_logic;
   signal L : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit4_comparator_rtl PORT MAP (
          A => A,
          B => B,
          E => E,
          G => G,
          L => L
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "1111";
		B <= "1111";
		wait for 1 ps;
		A <= "0000";
		B <= "1111";
		wait for 1 ps;
		A <= "1111";
		B <= "0000";
		wait for 1 ps;
   end process;

END;
