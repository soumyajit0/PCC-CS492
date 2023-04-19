----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:34:19 04/19/2023 
-- Design Name: 
-- Module Name:    bit4_adder_rtl - Behavioral 
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

entity bit4_adder_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end bit4_adder_rtl;

architecture Behavioral of bit4_adder_rtl is

component full_adder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3:STD_LOGIC:='0';

begin

	FA1: full_adder_rtl port map(A => a(0), B => b(0), Cin => cin, Sum => s(0), Carry => temp1);
	FA2: full_adder_rtl port map(A => a(1), B => b(1), Cin => temp1, Sum => s(1), Carry => temp2);
	FA3: full_adder_rtl port map(A => a(2), B => b(2), Cin => temp2, Sum => s(2), Carry => temp3);
	FA4: full_adder_rtl port map(A => a(3), B => b(3), Cin => temp3, Sum => s(3), Carry => cout);

end Behavioral;

