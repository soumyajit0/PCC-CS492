----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:44 04/19/2023 
-- Design Name: 
-- Module Name:    half_subtractor_rtl - Behavioral 
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

entity half_subtractor_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bo : out  STD_LOGIC);
end half_subtractor_rtl;

architecture Behavioral of half_subtractor_rtl is

component xor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

begin

	X1 : xor_rtl port map(a => A, b => B, c => D);
	Bo <= B and (not A);

end Behavioral;

