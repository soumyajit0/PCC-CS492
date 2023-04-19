--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:24 04/19/2023
-- Design Name:   
-- Module Name:   /home/ise/PCC-CS492/ALU/alu_test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_rtl
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
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_rtl
    PORT(
         S : IN  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(3 downto 0) := (others => '0');
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_rtl PORT MAP (
          S => S,
          A => A,
          B => B,
          Cin => Cin,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
		S<="0000";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;		
		
		S<="0000";
		A<="1001";
		B<="1100";
		Cin<='1';
		wait for 1 ps;
		
		S<="0001";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;	
		
		S<="0001";
		A<="1001";
		B<="1100";
		Cin<='1';
		wait for 1 ps;
		
		S<="0010";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;	
		
		S<="0010";
		A<="1001";
		B<="1100";
		Cin<='1';
		wait for 1 ps;
		
		S<="0011";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="0011";
		A<="1001";
		B<="1100";
		Cin<='1';
		wait for 1 ps;
		
		S<="0100";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="0101";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="0110";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="0111";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="1000";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
		
		S<="1010";
		A<="1001";
		B<="1100";
		Cin<='0';
		wait for 1 ps;
   end process;

END;
