library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Ripple_Adder is
Port ( 	A : in STD_LOGIC_VECTOR (3 downto 0);
	B : in STD_LOGIC_VECTOR (3 downto 0);	
	Sub : out STD_LOGIC_VECTOR (3 downto 0);
	Bout : out STD_LOGIC);
end Ripple_Adder;
 
architecture Behavioral of Ripple_Adder is
 

component FA
Port (  A : in STD_LOGIC;
	B : in STD_LOGIC;
	Cin : in STD_LOGIC;
	S : out STD_LOGIC;
	Cout : out STD_LOGIC);
end component;

signal c1,c2,c3,c4: STD_LOGIC;
 
begin
 
 -- Port Mapping Full Adder 4 times
FA1: FA port map( A=>A(0), B=>not B(0),Cin=> '1',S=> Sub(0),Cout=> c1);
FA2: FA port map( A=>A(1), B=>not B(1), Cin=>c1, S=> Sub(1),Cout=> c2);
FA3: FA port map( A=>A(2), B=>not B(2), Cin=>c2, S=> Sub(2), Cout=>c3);
FA4: FA port map( A=>A(3), B=>not B(3), Cin=>c3, S=> Sub(3), Cout=>c4);
Bout<=not c4;
 
end Behavioral;
