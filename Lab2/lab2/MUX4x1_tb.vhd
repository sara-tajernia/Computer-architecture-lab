--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:46:15 03/15/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 2/lab2/MUX4x1_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX4x1
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
ENTITY MUX4x1_tb IS
END MUX4x1_tb;
ARCHITECTURE behavior OF MUX4x1_tb IS 
  -- Component Declaration for the Unit Under Test (UU
    COMPONENT MUX4x1
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         select1 : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal select1 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX4x1 PORT MAP (
          input => input,
          select1 => select1,
          output => output
        );
	input<="1010" ,"0101" after 400 ns;
	select1<="00","01" after 100 ns,"10" after 200 ns,"11" after 300 ns,"00" after 400 ns,"01" after 500 ns
	,"10" after 600 ns ,"11" after 700 ns;
END;
