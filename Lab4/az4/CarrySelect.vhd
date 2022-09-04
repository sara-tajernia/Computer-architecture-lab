library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity carry_select_adder is
Port ( 	X : in STD_LOGIC_VECTOR (3 downto 0);
	Y : in STD_LOGIC_VECTOR (3 downto 0);
	CARRY_IN : in STD_LOGIC;
	SUM : out STD_LOGIC_VECTOR (3 downto 0);
	CARRY_OUT : out STD_LOGIC);
end carry_select_adder;
 
architecture Behavioral of carry_select_adder is
 
component FA
Port ( 	A : in STD_LOGIC;
	B : in STD_LOGIC;
	Cin : in STD_LOGIC;
	S : out STD_LOGIC;
	Cout : out STD_LOGIC);
end component;
 
component mux2_1
port(
	A,B : in STD_LOGIC;
	Sel: in STD_LOGIC;
	Z: out STD_LOGIC
);
end component;
 
signal A,B,C0,C1: STD_LOGIC_VECTOR( 3 DOWNTO 0);
begin
 
FA1: FA PORT MAP(A => X(0),B => Y(0),Cin => '0' , S => A(0),Cout => C0(0));
FA2: FA PORT MAP(A => X(1),B => Y(1),Cin => C0(0) , S => A(1),Cout => C0(1));
FA3: FA PORT MAP(A => X(2),B => Y(2),Cin => C0(1) , S => A(2),Cout => C0(2));
FA4: FA PORT MAP(A => X(3),B => Y(3),Cin => C0(2) , S => A(3),Cout => C0(3));
 
FA5: FA PORT MAP(A => X(0),B => Y(0),Cin => '1' , S => B(0),Cout => C1(0));
FA6: FA PORT MAP(A => X(1),B => Y(1),Cin => C1(0) , S => B(1),Cout => C1(1));
FA7: FA PORT MAP(A => X(2),B => Y(2),Cin => C1(1) , S => B(2),Cout => C1(2));
FA8: FA PORT MAP(A => X(3),B => Y(3),Cin => C1(2) , S => B(3),Cout => C1(3));
 
MUX1: mux2_1 PORT MAP(A => A(0),B => B(0),Sel => CARRY_IN,Z => SUM(0));
MUX2: mux2_1 PORT MAP(A => A(1),B => B(1),Sel => CARRY_IN,Z => SUM(1));
MUX3: mux2_1 PORT MAP(A => A(2),B => B(2),Sel => CARRY_IN,Z => SUM(2));
MUX4: mux2_1 PORT MAP(A => A(3),B => B(3),Sel => CARRY_IN,Z => SUM(3));
MUX5: mux2_1 PORT MAP(A => C0(3),B =>C1(3),Sel => CARRY_IN,Z => CARRY_OUT);
 
end Behavioral;

