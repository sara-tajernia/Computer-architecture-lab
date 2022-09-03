----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:06:33 04/06/2021 
-- Design Name: 
-- Module Name:    ripple - Behavioral 
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

entity ripple is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_vector (3 downto 0));
end ripple;

architecture Behavioral of ripple is
	component TFF is
	Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC);
	end component TFF;
	signal temp_out:std_logic_vector (3 downto 0);
	
begin

	TFF1: TFF port map(input=>'1',clk=>clk,reset=>reset,output=>temp_out(0));
	TFF2: TFF port map(input=>'1',clk=>temp_out(0),reset=>reset,output=>temp_out(1));
	TFF3: TFF port map(input=>'1',clk=>temp_out(1),reset=>reset,output=>temp_out(2));
	TFF4: TFF port map(input=>'1',clk=>temp_out(2),reset=>reset,output=>temp_out(3));
	output<=temp_out;
				


end Behavioral;

