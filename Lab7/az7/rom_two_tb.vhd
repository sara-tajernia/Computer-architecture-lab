--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:40 04/16/2021
-- Design Name:   
-- Module Name:   S:/uni/4/Az memar/session7/az7/rom_two_tb.vhd
-- Project Name:  az7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_two
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
 
ENTITY rom_two_tb IS
END rom_two_tb;
 
ARCHITECTURE behavior OF rom_two_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_two
    PORT(
         clk : IN  std_logic;
         read_enb : IN  std_logic;
         write_enb : IN  std_logic;
         reset : IN  std_logic;
         read_addres : IN  std_logic_vector(7 downto 0);
         write_addres : IN  std_logic_vector(7 downto 0);
         data_in : IN  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal read_enb : std_logic := '0';
   signal write_enb : std_logic := '0';
   signal reset : std_logic := '0';
   signal read_addres : std_logic_vector(7 downto 0) := (others => '0');
   signal write_addres : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_two PORT MAP (
          clk => clk,
          read_enb => read_enb,
          write_enb => write_enb,
          reset => reset,
          read_addres => read_addres,
          write_addres => write_addres,
          data_in => data_in,
          data_out => data_out
        );
	reset<='0' ,'1' after 100 ns;
	write_enb<='0','1' after 100 ns,'0' after 300 ns;
	data_in<="1010101010101010","1111111111100000" after 300 ns;
	read_addres<="10101010","00000001" after 300 ns;
	write_addres<="10101010","110101010" after 300 ns;
	
	read_enb<='0','1' after 300 ns;
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

  
END;
