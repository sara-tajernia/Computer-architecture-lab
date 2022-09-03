--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:32:56 04/06/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session 3/AZ3_1/SD_1101_mealy_tb.vhd
-- Project Name:  AZ3_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SD_1101_mealy
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
 
ENTITY SD_1101_mealy_tb IS
END SD_1101_mealy_tb;
 
ARCHITECTURE behavior OF SD_1101_mealy_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SD_1101_mealy
    PORT(
         input : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SD_1101_mealy PORT MAP (
          input => input,
          clk => clk,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
   input<='0','1' after 50 ns,'1' after 100 ns,'0' after 150 ns,'1' after 200 ns,'1' after 250 ns,'0' after 300 ns;
END;
