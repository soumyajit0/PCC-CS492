----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:22 04/19/2023 
-- Design Name: 
-- Module Name:    alu_rtl - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_rtl is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

begin

	process(S,A,B,Cin)
	variable temp:STD_LOGIC_VECTOR (3 downto 0);
		begin
			case s is
				when "0000" =>
					if (Cin = '0') then
						Y <= A + B;
					else
						Y <= A + B + 1;
					end if;
				when "0001" =>
					if (Cin = '0') then
						Y <= A + (not B);
					else
						Y <= A + (not B) + 1;
					end if;
				when "0010" =>
					if (Cin = '0') then
						Y <= A;
					else
						Y <= A + 1;
					end if;
				when "0011" =>
					if (Cin = '0') then
						Y <= A - 1;
					else
						Y <= A;
					end if;
				when "0100" =>
					Y <= A and B;
				when "0101" =>
					Y <= A or B;
				when "0110" =>
					Y <= A xor B;
				when "0111" =>
					Y <= not A;
				when "1000" =>
					temp(0) := A(1);
					temp(1) := A(2);
					temp(2) := A(3);
					temp(3) := '0';
					Y <= temp;
				when "1001" =>
					temp := A;
					temp(2 downto 0) := A(3 downto 1);
					temp(3) := '0';
					Y <= temp;
				when "1010" =>
					temp(3) := A(2);
					temp(2) := A(1);
					temp(1) := A(0);
					temp(0) := '0';
					Y <= temp;
				when "1011" =>
					temp := A;
					temp(3 downto 1) := A(2 downto 0);
					Y <= temp;
				when others =>
					Y <= "0000";
			end case;
	end process;

end Behavioral;

