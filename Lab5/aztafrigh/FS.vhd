----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:47:52 05/04/2021 
-- Design Name: 
-- Module Name:    FS - Behavioral 
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

entity FSub is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : in  STD_LOGIC;
           sub : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end FSub;

architecture Behavioral of FSub is
component HS is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           sub : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal temp_sub:std_logic;
signal temp_borrow:std_logic;
signal temp_borrow1:std_logic;

begin
HS_1 : HS port map (x=>x,y=>y,sub=>temp_sub,borrow=>temp_borrow);
HS_2 : HS port map (x=>temp_sub,y=>z,sub=>sub,borrow=>temp_borrow1);
borrow<=temp_borrow1 or temp_borrow;




end Behavioral;


