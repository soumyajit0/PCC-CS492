--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:22:50 04/20/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/UP_DOWN_COUNTER/up_down_counter_test.vhd
-- Project Name:  UP_DOWN_COUNTER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_counter_rtl
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
 
ENTITY up_down_counter_test IS
END up_down_counter_test;
 
ARCHITECTURE behavior OF up_down_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_down_counter_rtl
    PORT(
         D : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_counter_rtl PORT MAP (
          D => D,
          CLR => CLR,
          CLK => CLK,
          Count => Count
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
      CLR <= '1';
		D <= '1';
		wait for CLK_period;
		CLR <= '0';
		wait for 30 ps;
		D <= '0';
		wait for 50 ps;
   end process;

END;
