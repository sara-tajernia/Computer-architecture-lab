library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder_tb is
end entity;

architecture tb of half_adder_tb is
component HA is
port( a,b : IN std_logic;
s,c : OUT std_logic);
end component;

signal a,b,s,c: std_logic;

begin

uut: HA port map(
a => a, b => b,
s => s,
c => c);

stim: process
begin

a <= '0';
b <= '0';
wait for 20 ns;

a <= '0';
b <= '1';
wait for 20 ns;

a <= '1';
b <= '0';
wait for 20 ns;

a <= '1';
b <= '1';
wait for 20 ns;

wait;

end process;

end tb;
