--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:51:57 04/20/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/DEMUX/demus_rtl.vhd
-- Project Name:  DEMUX
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux_rtl
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
 
ENTITY demus_rtl IS
END demus_rtl;
 
ARCHITECTURE behavior OF demus_rtl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux_rtl
    PORT(
         D : IN  std_logic;
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux_rtl PORT MAP (
          D => D,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      D <= '1';
		S <= "000";
		wait for 1 ps;
		D <= '1';
		S <= "001";
		wait for 1 ps;
		D <= '1';
		S <= "010";
		wait for 1 ps;
		D <= '1';
		S <= "011";
		wait for 1 ps;
		D <= '1';
		S <= "100";
		wait for 1 ps;
		D <= '1';
		S <= "101";
		wait for 1 ps;
		D <= '1';
		S <= "110";
		wait for 1 ps;
		D <= '1';
		S <= "111";
		wait for 1 ps;
   end process;

END;
