--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:41:17 05/04/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/aztafrigh/rippleSub_tb.vhd
-- Project Name:  subtarctor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripple_sub
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
 
ENTITY rippleSub_tb IS
END rippleSub_tb;
 
ARCHITECTURE behavior OF rippleSub_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripple_sub
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic;
         sub : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal sub : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_sub PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          sub => sub,
          Bout => Bout
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
begin
-- hold reset state for 10 ns.
wait for 10 ns;
A <= "0110";
B <= "1100";
Bin<='0';
wait for 10 ns;
A <= "0110";
B <= "1100";
Bin<='1';
 
wait for 10 ns;
A <= "1111";
B <= "1100";
Bin<='1'; 
wait for 10 ns;
A <= "0110";
B <= "0111";
 Bin<='0';
wait for 10 ns;
A <= "0110";
B <= "1110";

wait for 10 ns;
A <= "1111";
B <= "1111";
Bin<='1'; 
wait;
   end process;

END;
