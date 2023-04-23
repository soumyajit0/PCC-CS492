----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:55 04/23/2023 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( p : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           s : in  STD_LOGIC;
           qout : out  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is

component d_rtl is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           NQ : out  STD_LOGIC);
end component;

signal temp1, temp2, temp3, temp4, carry1, carry2, carry3:STD_LOGIC:='0';

begin
	temp1 <= (not s) and p(0);
	D1 : d_rtl port map(D => temp1, CLK => clk, RST => rst, Q => carry1);
	
	temp2 <= ((not s) and p(1)) or (carry1 and s);
	D2 : d_rtl port map(D => temp2, CLK => clk, RST => rst, Q => carry2);
	
	temp3 <= ((not s) and p(2)) or (carry2 and s);
	D3 : d_rtl port map(D => temp3, CLK => clk, RST => rst, Q => carry3);
	
	temp4 <= ((not s) and p(3)) or (carry3 and s);
	D4 : d_rtl port map(D => temp4, CLK => clk, RST => rst, Q => qout);

end Behavioral;

