--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:12:23 04/20/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/SR/sr_test.vhd
-- Project Name:  SR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_rtl
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
 
ENTITY sr_test IS
END sr_test;
 
ARCHITECTURE behavior OF sr_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_rtl
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic;
         NQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal NQ : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_rtl PORT MAP (
          S => S,
          R => R,
          CLK => CLK,
          RST => RST,
          Q => Q,
          NQ => NQ
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period;
		CLK <= '1';
		wait for CLK_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RST <= '1';
		wait for CLK_period;
		S <= '0';
		R <= '0';
		RST <= '0';
		wait for CLK_period;
		S <= '0';
		R <= '1';
		RST <= '0';
		wait for CLK_period;
		S <= '1';
		R <= '0';
		RST <= '0';
		wait for CLK_period;
		S <= '1';
		R <= '1';
		RST <= '0';
		wait for CLK_period;
   end process;

END;
