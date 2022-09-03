----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:33 04/06/2021 
-- Design Name: 
-- Module Name:    SD_both - Behavioral 
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

entity SD_both is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end SD_both;

architecture Behavioral of SD_both is
	component SD_1101_moore is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component SD_1101_moore;
component SD_0101_mealy is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end  component SD_0101_mealy;
	signal temp:std_logic_vector (1 downto 0);
	
begin
	SD1: SD_1101_moore port map (input=> input,clk=>clk,output=>temp(0));
	SD2: SD_0101_mealy port map (input=> input,clk=>clk,output=>temp(1));
	
	output<=(temp(0)) or (temp(1));

end Behavioral;

