----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:11 05/22/2023 
-- Design Name: 
-- Module Name:    ENCODER_rtl - Behavioral 
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

entity ENCODER_rtl is
    Port ( Y : in  STD_LOGIC_VECTOR (7 downto 0);
           E : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (2 downto 0));
end ENCODER_rtl;

architecture Behavioral of ENCODER_rtl is

begin

	process(Y,E) begin
		if (E = '0') then
			A <= "000";
		else
			A(0) <= Y(7) or Y(5) or Y(3) or Y(1);
			A(1) <= Y(7) or Y(6) or Y(3) or Y(2);
			A(2) <= Y(7) or Y(6) or Y(5) or Y(4);
		end if;
	end process;

end Behavioral;

