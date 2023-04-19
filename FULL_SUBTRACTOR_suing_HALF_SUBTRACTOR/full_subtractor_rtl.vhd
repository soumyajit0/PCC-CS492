----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:44 04/19/2023 
-- Design Name: 
-- Module Name:    full_subtractor_rtl - Behavioral 
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

entity full_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           d : out  STD_LOGIC;
           bo : out  STD_LOGIC);
end full_subtractor_rtl;

architecture Behavioral of full_subtractor_rtl is


component half_subtractor_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bo : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3:STD_LOGIC:='0';

begin

	HS1 : half_subtractor_rtl port map(A => a, B => b, D => temp1, Bo => temp2);
	HS2 : half_subtractor_rtl port map(A => temp1, B => bin, D => d, Bo => temp3);
	bo <= temp2 or temp3;

end Behavioral;

