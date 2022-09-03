----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:45:14 04/06/2021 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
	signal output1:std_logic;

begin
	reg:process(reset,clk)
	begin
	if(reset='0') then 
		output1<='0';
	else 	if (clk'event and clk='1') then
			if input='0' then
			-- it must be output1<=output1 but it's avtive low
				output1 <=  output1;
			elsif input='1' then
			-- it must be output1<=not(output1) but it's avtive low
			output1 <=  not(output1);
			end if;
			end if;
	end if;
	
end process;

	output<=output1;
end Behavioral;

