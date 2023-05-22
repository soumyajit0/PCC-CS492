--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:13:24 05/22/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/DECODER/DECODER_test.vhd
-- Project Name:  DECODER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECODER_rtl
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
 
ENTITY DECODER_test IS
END DECODER_test;
 
ARCHITECTURE behavior OF DECODER_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECODER_rtl
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         E : IN  std_logic;
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal E : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECODER_rtl PORT MAP (
          A => A,
          E => E,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      E <= '0';
		A <= "000";
		wait for 1 ps;
		E <= '0';
		A <= "001";
		wait for 1 ps;
		E <= '0';
		A <= "100";
		wait for 1 ps;
		E <= '1';
		A <= "000";
		wait for 1 ps;
		E <= '1';
		A <= "001";
		wait for 1 ps;
		E <= '1';
		A <= "100";
		wait for 1 ps;
   end process;

END;
