--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:49:19 04/20/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/D/d_test.vhd
-- Project Name:  D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_rtl
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
 
ENTITY d_test IS
END d_test;
 
ARCHITECTURE behavior OF d_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_rtl
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic;
         NQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal NQ : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_rtl PORT MAP (
          D => D,
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
		D <= '0';
		RST <= '0';
		wait for CLK_period;
		D <= '1';
		RST <= '0';
		wait for CLK_period;
   end process;

END;
