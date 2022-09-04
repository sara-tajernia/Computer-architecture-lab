----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:10:43 05/04/2021 
-- Design Name: 
-- Module Name:    ripple_sub - Behavioral 
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
entity ripple_sub is
	  Port ( A : in  STD_LOGIC_vector (3 downto 0);
           B : in  STD_LOGIC_vector (3 downto 0);
			  Bin : in  STD_LOGIC;
           sub : out  STD_LOGIC_vector (3 downto 0);
           Bout : out  STD_LOGIC);

end ripple_sub;

architecture Behavioral of ripple_sub is
component  FSub is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : in  STD_LOGIC;
           sub : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component ;
	signal temp_borrow:std_logic_vector (2 downto 0);
	
begin
Full_subtractor_1: FSub port map (x=>A(0),y=>B(0),z=>Bin,sub=>sub(0),borrow=>temp_borrow(0));
Full_subtractor_2: FSub port map (x=>A(1),y=>B(1),z=>temp_borrow(0),sub=>sub(1),borrow=>temp_borrow(1));
Full_subtractor_3: FSub port map (x=>A(2),y=>B(2),z=>temp_borrow(1),sub=>sub(2),borrow=>temp_borrow(2));
Full_subtractor_4: FSub port map (x=>A(3),y=>B(3),z=>temp_borrow(2),sub=>sub(3),borrow=>Bout);


end Behavioral;

