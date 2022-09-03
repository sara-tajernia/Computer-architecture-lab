--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:06:57 03/16/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 2/lab2/Decoder_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder2x4
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
 
ENTITY Decoder_tb IS
END Decoder_tb;
 
ARCHITECTURE behavior OF Decoder_tb IS 
    COMPONENT Decoder2x4
    PORT(
         input : IN  std_logic_vector(1 downto 0);
         enable : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal input : std_logic_vector(1 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder2x4 PORT MAP (
          input => input,
          enable => enable,
          output => output
        );

   enable<='0','1' after 100 ns ;
	input<="10","00" after 100 ns ,"01" after 200 ns ,"10" after 300 ns,"11" after 400 ns;

END;
