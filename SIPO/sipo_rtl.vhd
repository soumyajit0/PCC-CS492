----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:08 04/20/2023 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity SIPO is
    Port ( i : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end SIPO;

architecture Behavioral of SIPO is

component d_rtl is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           NQ : out  STD_LOGIC);
end component;

signal temp:STD_LOGIC_VECTOR (3 downto 0);

begin

	D1: d_rtl port map(D => i, CLK => clk, RST => clr, Q => temp(0));
	D2: d_rtl port map(D => temp(0), CLK => clk, RST => clr, Q => temp(1));
	D3: d_rtl port map(D => temp(1), CLK => clk, RST => clr, Q => temp(2));
	D4: d_rtl port map(D => temp(2), CLK => clk, RST => clr, Q => temp(3));
	
	q <= temp;

end Behavioral;
