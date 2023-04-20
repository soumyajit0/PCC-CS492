----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:38:21 04/20/2023 
-- Design Name: 
-- Module Name:    demux_rtl - Behavioral 
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

entity demux_rtl is
    Port ( D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_rtl;

architecture Behavioral of demux_rtl is

begin

	process(D,S)
		begin
		Y <= "00000000";
		case S is
			when "000" =>
				Y(0) <= D;
			when "001" =>
				Y(1) <= D;
			when "010" =>
				Y(2) <= D;
			when "011" =>
				Y(3) <= D;
			when "100" =>
				Y(4) <= D;
			when "101" =>
				Y(5) <= D;
			when "110" =>
				Y(6) <= D;
			when others =>
				Y(7) <= D;
		end case;
	end process;

end Behavioral;

