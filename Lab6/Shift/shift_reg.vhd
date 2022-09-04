library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
 port(
 		parallel_in 	  : in std_logic_vector(3 downto 0);
		LR					  : in std_logic_vector(1 downto 0);
		CLK, reset, load : in std_logic;
		reg_out 			  : out std_logic_vector(3 downto 0) );
end shift_reg;

architecture behavioral of shift_reg is
 
begin
 
 process (CLK, reset)
 begin
 if reset = '1' then
 	reg_out <= "0000";
 elsif (CLK'event and CLK='1') then
	if load = '1' then
		case LR is
			when "00" =>
				reg_out <= parallel_in;
			when "01" => -- (both) left shift
				reg_out(3 downto 1) <= parallel_in(2 downto 0);
				reg_out(0) <= '0';
			when "10" => -- arithmetic right shift
				reg_out(2 downto 0) <= parallel_in(3 downto 1);
				reg_out(3) <= parallel_in(3); -- if parallel_in(3) is 0, it's just a logical right shift!!
			when "11" => -- logical right shift
				reg_out(2 downto 0) <= parallel_in(3 downto 1);
				reg_out(3) <= '0';
			when others =>
		end case;
	end if;
 end if;
 end process;
end behavioral;