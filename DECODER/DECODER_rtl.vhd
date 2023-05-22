----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:20 05/22/2023 
-- Design Name: 
-- Module Name:    DECODER_rtl - Behavioral 
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

entity DECODER_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           E : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end DECODER_rtl;

architecture Behavioral of DECODER_rtl is

begin

	Y(0) <= E and (not A(0)) and (not A(1)) and (not A(2));
	Y(1) <= E and A(0) and (not A(1)) and (not A(2));
	Y(2) <= E and (not A(0)) and A(1) and (not A(2));
	Y(3) <= E and A(0) and A(1) and (not A(2));
	Y(4) <= E and (not A(0)) and (not A(1)) and A(2);
	Y(5) <= E and A(0) and (not A(1)) and A(2);
	Y(6) <= E and (not A(0)) and A(1) and A(2);
	Y(7) <= E and A(0) and A(1) and A(2);

end Behavioral;

