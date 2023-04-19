----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:37 04/19/2023 
-- Design Name: 
-- Module Name:    full_adder_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder_rtl;

architecture Behavioral of full_adder_rtl is

component half_adder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3:STD_LOGIC:='0';

begin

	H1 : half_adder_rtl port map(A => a, B => b, Sum => temp1, Carry => temp2);
	H2 : half_adder_rtl port map(A => temp1, B => cin, Sum => sum, Carry => temp3);
	carry <= temp2 or temp3;
	
end Behavioral;

