----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:22 04/20/2023 
-- Design Name: 
-- Module Name:    up_down_counter_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_counter_rtl is
    Port ( D : in  STD_LOGIC;
			  CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end up_down_counter_rtl;

architecture Behavioral of up_down_counter_rtl is

signal temp:STD_LOGIC_VECTOR (3 downto 0):="0000";

begin

	process(D,CLK)
	begin
		if (rising_edge(CLK)) then
			if (CLR = '1') then
				temp <= "0000";
			elsif (CLR = '0' and D = '1') then
				temp <= temp + 1; 
			elsif (CLR = '0' and D = '0') then
				temp <= temp - 1;
			end if;
		end if;
	end process;
	
	Count <= temp;

end Behavioral;

