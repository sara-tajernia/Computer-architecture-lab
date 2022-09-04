library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FA is
Port ( A, B, Cin : in STD_LOGIC;
       S, Cout : out STD_LOGIC);
end FA;

architecture structural of FA is

component HA is
Port ( A,B : in STD_LOGIC;
       S,C : out STD_LOGIC);
end component;


SIGNAL S0,S1,S2:STD_LOGIC;

begin

U1:HA PORT MAP(A=> A,B=> B,S=>S0,C=>S1);
U2:HA PORT MAP(A=> S0,B=> Cin,S=> S,C=>S2);
Cout <= S2 or S1;

end structural;

