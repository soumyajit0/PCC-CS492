----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:01:09 04/20/2023 
-- Design Name: 
-- Module Name:    bit4_comparator_rtl - Behavioral 
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

entity bit4_comparator_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           E : out  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC);
end bit4_comparator_rtl;

architecture Behavioral of bit4_comparator_rtl is

signal e0,e1,e2,e3:STD_LOGIC:='0';
signal g0,g1,g2,g3:STD_LOGIC:='0';
signal l0,l1,l2,l3:STD_LOGIC:='0';

begin

	e3 <= A(3) xnor B(3);
	e2 <= A(2) xnor B(2);
	e1 <= A(1) xnor B(1);
	e0 <= A(0) xnor B(0);
	E <= e3 and e2 and e1 and e0;
	
	g3 <= A(3) and (not B(3));
	g2 <= A(2) and (not B(2)) and e3;
	g1 <= A(1) and (not B(1)) and e3 and e2;
	g0 <= A(0) and (not B(0)) and e3 and e2 and e1;
	G <= g3 or g2 or g1 or g0;
	
	l3 <= (not A(3)) and B(3);
	l2 <= (not A(2)) and B(2) and e3;
	l1 <= (not A(1)) and B(1) and e3 and e2;
	l0 <= (not A(0)) and B(0) and e3 and e2 and e1;
	L <= l3 or l2 or l1 or l0;

end Behavioral;

