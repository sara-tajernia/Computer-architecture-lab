----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:22:55 03/15/2021 
-- Design Name: 
-- Module Name:    MUX4x1 - Behavioral 
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

entity MUX4x1 is
    Port ( input : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           select1 : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
           output : out  STD_LOGIC);
end MUX4x1;

architecture Behavioral of MUX4x1 is

begin
 with select1 select
  output<=input(0) when "00",
			 input(1) when "01",
			 input(2) when "10",
			 input(3) when others;


end Behavioral;

