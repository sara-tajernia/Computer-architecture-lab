--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:54:41 05/04/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/aztafrigh/Ripple_Adder_tb.vhd
-- Project Name:  subtarctor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ripple_Adder
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
 
ENTITY Ripple_Adder_tb IS
END Ripple_Adder_tb;
 
ARCHITECTURE behavior OF Ripple_Adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ripple_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sub : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sub : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ripple_Adder PORT MAP (
          A => A,
          B => B,
          Sub => Sub,
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


 
wait for 10 ns;
A <= "1111";
B <= "1100";

wait for 10 ns;
A <= "0110";
B <= "0111";

wait for 10 ns;
A <= "0110";
B <= "1110";

wait for 10 ns;
A <= "1111";
B <= "1111";

wait;
   end process;

END;
