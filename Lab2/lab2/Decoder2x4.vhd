----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:19:28 03/15/2021 
-- Design Name: 
-- Module Name:    Decoder2x4 - Behavioral 
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

entity Decoder2x4 is
    Port ( input : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
           enable : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (3 DOWNTO 0));
end Decoder2x4;

architecture Behavioral of Decoder2x4 is
 signal ands:std_logic_vector (3 downto 0);
begin
	ands(3)<=enable and input(0) and input (1);
	ands(2)<=enable and (not input(0)) and input (1);
	ands(1)<=enable and input(0) and  not (input (1));
	ands(0)<=enable and (not input(0)) and (not input (1));
	output<=ands;

end Behavioral;

