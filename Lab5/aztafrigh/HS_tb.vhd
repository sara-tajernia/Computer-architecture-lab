--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:32:50 05/04/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/aztafrigh/HS_tb.vhd
-- Project Name:  subtarctor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HS
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
 
ENTITY HS_tb IS
END HS_tb;
 
ARCHITECTURE behavior OF HS_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HS
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         sub : OUT  std_logic;
         borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';

 	--Outputs
   signal sub : std_logic;
   signal borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HS PORT MAP (
          x => x,
          y => y,
          sub => sub,
          borrow => borrow
        );

   -- Clock process definitions
   

   -- Stimulus process
  
stim: process
begin

x <= '0';
y <= '0';
wait for 20 ns;

x <= '0';
y <= '1';
wait for 20 ns;

x <= '1';
y <= '0';
wait for 20 ns;

x <= '1';
y <= '1';
wait for 20 ns;

wait;
   end process;

END;
