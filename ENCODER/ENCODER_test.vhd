--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:45:25 05/22/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/ENCODER/ENCODER_test.vhd
-- Project Name:  ENCODER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ENCODER_rtl
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
 
ENTITY ENCODER_test IS
END ENCODER_test;
 
ARCHITECTURE behavior OF ENCODER_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ENCODER_rtl
    PORT(
         Y : IN  std_logic_vector(7 downto 0);
         E : IN  std_logic;
         A : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal E : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ENCODER_rtl PORT MAP (
          Y => Y,
          E => E,
          A => A
        );

   -- Stimulus process
   stim_proc: process
   begin
		E <= '0';
		wait for 1 ps;
		E <= '1';
      Y <= "00000010";
		wait for 1 ps;
		E <= '1';
		Y <= "00001000";
		wait for 1 ps;
		E <= '1';
		Y <= "00000100";
		wait for 1 ps;
   end process;

END;
