----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:06 04/19/2023 
-- Design Name: 
-- Module Name:    bit4_subtractor - Behavioral 
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

entity bit4_subtractor is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           bout : out  STD_LOGIC);
end bit4_subtractor;

architecture Behavioral of bit4_subtractor is

component full_subtractor_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bo : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3:STD_LOGIC:='0';

begin

	FS1: full_subtractor_rtl port map(A => a(0), B => b(0), Bin => bin, D => d(0), Bo => temp1);
	FS2: full_subtractor_rtl port map(A => a(1), B => b(1), Bin => temp1, D => d(1), Bo => temp2);
	FS3: full_subtractor_rtl port map(A => a(2), B => b(2), Bin => temp2, D => d(2), Bo => temp3);
	FS4: full_subtractor_rtl port map(A => a(3), B => b(3), Bin => temp3, D => d(3), Bo => bout);

end Behavioral;

