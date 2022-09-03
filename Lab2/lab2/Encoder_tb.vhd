--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:09:53 03/16/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 2/lab2/Encoder_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EncoderD4x2
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
 
ENTITY Encoder_tb IS
END Encoder_tb;
 
ARCHITECTURE behavior OF Encoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EncoderD4x2
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(1 downto 0);
         v : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(1 downto 0);
   signal v : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EncoderD4x2 PORT MAP (
          input => input,
          output => output,
          v => v
        );
	input<="0000",
	"0001" after 100ns,
	"0010" after 200ns,
	"0011" after 300ns,
	"0100" after 400ns,
	"0101" after 500ns,
	"0110" after 600ns,
	"0111" after 700ns,
	"1000" after 800ns,
	"1001" after 900ns,
	"1010" after 1000ns,
	"1011" after 1100ns,
	"1100" after 1200ns,
	"1101" after 1300ns,
	"1110" after 1400ns,
	"1111" after 1500ns;
   -- Clock process definitions
  

END;
