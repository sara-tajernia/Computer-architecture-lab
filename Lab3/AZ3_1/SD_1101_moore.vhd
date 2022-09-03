----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:27:11 04/06/2021 
-- Design Name: 
-- Module Name:    SD_1101_moore - Behavioral 
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

entity SD_1101_moore is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end SD_1101_moore;

architecture Behavioral of SD_1101_moore is
	type state_t is (init , s0 , s1,s2,s3);
	signal state : state_t := init;
	signal next_state : state_t := init;
begin
	CMB : process(state , input)
	begin
	case state is
			when init=>
					if(input = '1') then
							next_state <= s0;
					else
							next_state <= init ;
					end if;
			when s0=>
				if(input = '1') then
							next_state <= s1;
					else
							next_state <= init ;
					end if;

			when s1=>
						if(input = '1') then
							next_state <= s1;
						else
							next_state <= s2 ;
					end if;
					
			when s2=>
				if(input = '1') then
							next_state <= s3;
					else
							next_state <= init ;
					end if;
			when s3=>
				if(input = '1') then
							next_state <= s1;
					else
							next_state <= init ;
					end if;
									
			
	end case;
	end process;
	REG : process(clk)
	begin
		if(clk'event and clk = '1') then
					state <= next_state;
	end if;
						
		end process;
	output<='1' when state=s3 else 
				'0';	
end Behavioral;

