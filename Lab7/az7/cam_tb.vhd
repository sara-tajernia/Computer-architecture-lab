--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:27:40 09/10/2020
-- Design Name:   
-- Module Name:   E:/Ev/university/semester 4/CA lib/az7/Mem/cam_tb.vhd
-- Project Name:  Mem
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cam
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
 
ENTITY cam_tb IS
END cam_tb;
 
ARCHITECTURE behavior OF cam_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cam
    PORT(
         clk : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0);
         match : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data : std_logic_vector(15 downto 0);

 	--Outputs
   signal match : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cam PORT MAP (
          clk => clk,
          data => data,
          match => match
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

      wait for clk_period*10;

   data <= "1100001101011101";

	
	wait for 20 ns;
	 data <= "1100001101011101";

	
	wait for 20 ns;
	 data <= "1100001101011100";

	
	wait for 20 ns;
	 data <= "1100001101011100";

	
	wait for 20 ns;
      wait;
   end process;

END;
