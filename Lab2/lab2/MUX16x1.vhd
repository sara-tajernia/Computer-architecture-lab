----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:26:24 03/15/2021 
-- Design Name: 
-- Module Name:    MUX16x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX16x1 is
    Port ( input : in  STD_LOGIC_VECTOR (15 DOWNTO 0);
           select1 : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           output : out  STD_LOGIC);
end MUX16x1;

architecture Behavioral of MUX16x1 is
	signal out_mux :STD_LOGIC_VECTOR (3 DOWNTO 0);
	component MUX4x1 is
    Port ( input : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           select1 : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
           output : out  STD_LOGIC);
end component  MUX4x1;

begin
mux1: MUX4x1 port map (input=>input(3 downto 0),select1=>select1(1 downto 0),output=>out_mux(0));
mux2: MUX4x1 port map (input=>input(7 downto 4),select1=>select1(1 downto 0),output=>out_mux(1));
mux3: MUX4x1 port map (input=>input(11 downto 8),select1=>select1(1 downto 0),output=>out_mux(2));
mux4: MUX4x1 port map (input=>input(15 downto 12),select1=>select1(1 downto 0),output=>out_mux(3));
mux5: MUX4x1 port map (input=>out_mux(3 downto 0),select1=>select1(3 downto 2),output=>output);
end Behavioral;

