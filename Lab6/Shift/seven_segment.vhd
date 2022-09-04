----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:   
-- Design Name: 
-- Module Name:    seven_segment - Behavioral 
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

entity seven_segment is
port(
	input : in std_logic_vector(3 downto 0); 
	a,b,c,d,e,f,g : out std_logic := '0'
);
end seven_segment;

architecture Behavioral of seven_segment is
begin

process (input)
begin

if(input < "1010") then

	a <= input(3) or input(1) or (input(2)and input(0)) or (not(input(2)) and (not(input(0))));
	b <= not(input(2)) or (not(input(1)) and not(input(0))) or (input(1)and input(0));
	c <= input(2) or not(input(1)) or input(0);
	d <= (not(input(2)) and (not(input(0)))) or (input(1) and not(input(0))) or (input(2) and not(input(1)) and input(0));
	e <= (not(input(2)) and (not(input(0)))) or (input(1) and not(input(0)));
	f <= input(3) or (not(input(1)) and not(input(0))) or (input(2) and not(input(1))) or (input(2) and (not(input(0))));
	g <= input(3) or (input(2) and not(input(1))) or (not(input(2)) and input(1)) or (input(1) and not(input(0)));


end if;
end process;



end Behavioral;

