library IEEE;
use IEEE.std_logic_1164.all;

entity fa_tb is
end entity;

architecture tb of fa_tb is
component FA is
Port ( 	A, B, Cin : in STD_LOGIC;
	S, Cout : out STD_LOGIC);
end component;

signal A, B, Cin, S, Cout : STD_LOGIC;

begin

uut : FA port map(
A => A, B => B, Cin => Cin, S => S, Cout => Cout);

stim : process 
begin

A <= '0';
B <= '0';
Cin <= '0';
wait for 10 ns;
assert ((S = '0') and (Cout = '0'))
report "test failed for input combination 000" severity error;

A <= '0';
B <= '0';
Cin <= '1';
wait for 10 ns;
assert ((S = '1') and (Cout = '0'))
report "test failed for input combination 001" severity error;

A <= '0';
B <= '1';
Cin <= '0';
wait for 10 ns;
assert ((S = '1') and (Cout = '0'))
report "test failed for input combination 010" severity error;

A <= '0';
B <= '1';
Cin <= '1';
wait for 10 ns;
assert ((S = '0') and (Cout = '1'))
report "test failed for input combination 011" severity error;

A <= '1';
B <= '0';
Cin <= '0';
wait for 10 ns;
assert ((S = '1') and (Cout = '0'))
report "test failed for input combination 100" severity error;

A <= '1';
B <= '0';
Cin <= '1';
wait for 10 ns;
assert ((S = '0') and (Cout = '1'))
report "test failed for input combination 101" severity error;

A <= '1';
B <= '1';
Cin <= '0';
wait for 10 ns;
assert ((S = '0') and (Cout = '1'))
report "test failed for input combination 110" severity error;

A <= '1';
B <= '1';
Cin <= '1';
wait for 10 ns;
assert ((S = '1') and (Cout = '1'))
report "test failed for input combination 111" severity error;
wait;

end process;
end tb;
