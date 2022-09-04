library ieee;
use ieee.std_logic_1164.all;

entity shift_reg_tb is
end entity shift_reg_tb;
architecture test of shift_reg_tb is

component shift_reg is
port(
			parallel_in : 		in std_logic_vector(3 downto 0);
			lr: 					in std_logic_vector(1 downto 0);
			CLK, reset, load :in std_logic;
			reg_out : 			out std_logic_vector(3 downto 0)
);
end component;

signal CLK, reset, load :std_logic;
signal input : std_logic_vector(3 downto 0);
signal LR : std_logic_vector(1 downto 0);
signal output : std_logic_vector(3 downto 0);
constant clock_period : time := 10 ns;

begin
UUT : shift_reg port map ( 
	CLK => CLK, 
	reset => reset, 
	load => load, 
	parallel_in => input, 
	LR => LR, 
	reg_out => output);
	
clock_process :process
   begin
  CLK <= '0';
  wait for clock_period/2;
  CLK <= '1';
  wait for clock_period/2;
   end process;
	
stim_proc: process
   begin 
	input <= "1100";
	load <= '1';
	reset <= '1';
	LR <= "00";
	
	wait for 20 ns;
	
	input <= "1100";
	load <= '1';
	reset <= '0';
	LR <= "00";
	
	wait for 20 ns;
	input <= "1100";
	load <= '1';
	reset <= '0';
	LR <= "01";
	
	wait for 20 ns;
	input <= "1100";
	load <= '1';
	reset <= '0';
	LR <= "10";
	
	wait for 20 ns;
	
	input <= "1100";
	load <= '1';
	reset <= '0';
	LR <= "11";
	
	wait;
	
end process;
END;