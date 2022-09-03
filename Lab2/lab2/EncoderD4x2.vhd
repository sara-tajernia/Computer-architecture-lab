----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:08:12 03/15/2021 
-- Design Name: 
-- Module Name:    EncoderD4x2 - Behavioral 
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

entity EncoderD4x2 is
    Port ( input : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           output : out  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  v: out STD_LOGIC);
end EncoderD4x2;

architecture Behavioral of EncoderD4x2 is
	signal and1 : STD_LOGIC;

begin
  output(1)<=input(3) or input(2);
  and1<= (not input(2)) and input(1);
  output(0)<=and1 or input(3);
  v  <= input(1) or input(0) or input (2) or input (3);
  

end Behavioral;

