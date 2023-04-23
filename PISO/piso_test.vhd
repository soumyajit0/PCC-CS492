--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:38:38 04/23/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/PISO/piso_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso_rtl
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
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso_rtl
    PORT(
         p : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         s : IN  std_logic;
         qout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal qout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          p => p,
          clk => clk,
          rst => rst,
          s => s,
          qout => qout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
		wait for 1 ps;
		rst <= '0';
		p <= "1010";
		s <= '0';
		wait for 10 ps;
		s <= '1';
		wait for 10 ps;
   end process;

END;
