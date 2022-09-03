--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:47:56 03/15/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 2/lab2/MUX16x1_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX16x1
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
 
ENTITY MUX16x1_tb IS
END MUX16x1_tb;
 
ARCHITECTURE behavior OF MUX16x1_tb IS 

    COMPONENT MUX16x1
    PORT(
         input : IN  std_logic_vector(15 downto 0);
         select1 : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal input : std_logic_vector(15 downto 0) := (others => '0');
   signal select1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX16x1 PORT MAP (
          input => input,
          select1 => select1,
          output => output
        );
	input<="1010101001110101","0100000111101011" after 1400 ns;
	select1<="0000",
	"0001" after 100 ns,
	"0010" after 200 ns,
	"0011" after 300 ns,
	"0100" after 400 ns,
	"0101" after 500 ns,
	"0110" after 600 ns,
	"0111" after 700 ns,
	"1000" after 800 ns,
	"1001" after 900 ns,
	"1010" after 1000 ns,
	"1011" after 1100 ns,
	"1100" after 1200 ns,
	"1101" after 1250 ns,
	"1110" after 1300 ns,
	"1111" after 1400 ns,
	"0000" after 1500 ns,
	"0001" after 1600 ns,
	"0010" after 1700 ns,
	"0011" after 1800 ns,
	"0100" after 1900 ns,
	"0101" after 2000 ns,
	"0110" after 2100 ns,
	"0111" after 2200 ns,
	"1000" after 2300 ns,
	"1001" after 2400 ns,
	"1010" after 2500 ns,
	"1011" after 2600 ns,
	"1100" after 2700 ns,
	"1101" after 2800 ns,
	"1110" after 2900 ns,
	"1111" after 3000 ns;
   -- Clock process definitions
END;
