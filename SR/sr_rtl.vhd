----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:33 04/20/2023 
-- Design Name: 
-- Module Name:    sr_rtl - Behavioral 
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

entity sr_rtl is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           NQ : out  STD_LOGIC);
end sr_rtl;

architecture Behavioral of sr_rtl is
signal temp:STD_LOGIC:='0';

begin

	process(S,R,CLK,RST)
	begin
		if (RST = '1') then
			temp <= '0';
		elsif (rising_edge(CLK)) then
			if (S = '0' and R = '0') then
				temp <= temp;
			elsif (S = '0' and R = '1') then
				temp <= '0';
			elsif (S = '1' and R = '0') then
				temp <= '1';
			else
				temp <= 'X';
			end if;
		end if;
	end process;

Q <= temp;
NQ <= not temp;

end Behavioral;

