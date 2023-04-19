--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:42:55 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/BIT4_ADDER_SUBTRACTOR/bit4_adder_subtractor_test.vhd
-- Project Name:  BIT4_ADDER_SUBTRACTOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit4_adder_subtractor
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
 
ENTITY bit4_adder_subtractor_test IS
END bit4_adder_subtractor_test;
 
ARCHITECTURE behavior OF bit4_adder_subtractor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit4_adder_subtractor
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         m : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal m : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit4_adder_subtractor PORT MAP (
          a => a,
          b => b,
          m => m,
          s => s,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "1111";
		b <= "1111";
		m <= '0';
		wait for 1 ps;
		a <= "1111";
		b <= "0011";
		m <= '1';
		wait for 1 ps;
   end process;

END;
