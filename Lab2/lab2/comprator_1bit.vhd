--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:13:38 03/16/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 2/lab2/comprator_1bit.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit_comp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comprator_1bit IS
END comprator_1bit;
ARCHITECTURE behavior OF comprator_1bit IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT bit_comp
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         GT1 : IN  std_logic;
         EQ : IN  std_logic;
         LT : IN  std_logic;
         A_GT_B : OUT  std_logic;
         A_EQ_B : OUT  std_logic;
         A_LT_B : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal GT1 : std_logic := '0';
   signal EQ : std_logic := '0';
   signal LT : std_logic := '0';

 	--Outputs
   signal A_GT_B : std_logic;
   signal A_EQ_B : std_logic;
   signal A_LT_B : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: bit_comp PORT MAP (
          A => A,
          B => B,
          GT1 => GT1,
          EQ => EQ,
          LT => LT,
          A_GT_B => A_GT_B,
          A_EQ_B => A_EQ_B,
          A_LT_B => A_LT_B
        );

  A<='0' ,'1' after 500 ns;
  B<='0','1' after 300 ns,'0' after 500 ns;
  GT1<='0','1' after 100 ns;
	EQ<='1','0' after 100 ns,'1' after 200 ns;
	LT<='0','1' after 100 ns,'0' after 200 ns;

END;
