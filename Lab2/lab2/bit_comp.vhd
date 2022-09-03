----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:26:30 03/15/2021 
-- Design Name: 
-- Module Name:    bit_comp - Behavioral 
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

entity bit_comp is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           GT1 : in  STD_LOGIC;
           EQ : in  STD_LOGIC;
           LT : in  STD_LOGIC;
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end bit_comp;

architecture Behavioral of bit_comp is
	signal equal: std_logic;
	signal GT111:std_logic;
	signal LT1:std_logic;
	signal great:std_logic;
	signal less:std_logic;
begin
 equal<= A xnor B;
 GT111<= A and (not B) ;
 LT1<= (not A) and B ;
 great<=equal and 	GT1;
 less<= equal and LT;
 A_EQ_B<= EQ and equal ;
 A_GT_B<= gt111 or great;
 A_LT_B<= LT1 or less;
end Behavioral;

