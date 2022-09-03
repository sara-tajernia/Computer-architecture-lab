----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:54:31 03/15/2021 
-- Design Name: 
-- Module Name:    comprator_4bit - Behavioral 
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

entity comprator_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           GT1 : in  STD_LOGIC;
           EQ : in  STD_LOGIC;
           LT : in  STD_LOGIC;
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end comprator_4bit;

architecture Behavioral of comprator_4bit is
signal GT111 :STD_LOGIC_VECTOR (2 DOWNTO 0);
signal EQ1 :STD_LOGIC_VECTOR (2 DOWNTO 0);
signal LT1 :STD_LOGIC_VECTOR (2 DOWNTO 0);
		component bit_comp is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           GT1 : in  STD_LOGIC;
           EQ : in  STD_LOGIC;
           LT : in  STD_LOGIC;
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end  component bit_comp;
begin
	comp1:bit_comp port map (A=>A(0),B=>B(0),GT1=>GT1,EQ=>EQ,LT=>LT,A_GT_b=>GT111(0),A_EQ_B=>EQ1(0),A_LT_B=>LT1(0));
	comp2:bit_comp port map (A=>A(1),B=>B(1),GT1=>GT111(0),EQ=>EQ1(0),LT=>LT1(0),A_GT_B=>GT111(1),A_EQ_B=>EQ1(1),A_LT_B=>LT1(1));
	comp3:bit_comp port map (A=>A(2),B=>B(2),GT1=>GT111(1),EQ=>EQ1(1),LT=>LT1(1),A_GT_B=>GT111(2),A_EQ_B=>EQ1(2),A_LT_B=>LT1(2));
	comp4:bit_comp port map (A=>A(3),B=>B(3),GT1=>GT111(2),EQ=>EQ1(2),LT=>LT1(2),A_GT_B=>A_GT_B,A_EQ_B=>A_EQ_B,A_LT_B=>A_LT_B);
end Behavioral;

