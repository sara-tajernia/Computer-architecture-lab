----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:05 04/16/2021 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.STD_LOGIC_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( clk : in  STD_LOGIC;
           read_enb : in  STD_LOGIC;
      
			  reset : in  STD_LOGIC;
           addres : in  STD_LOGIC_vector (7 downto 0);
           
           data_out : out  STD_LOGIC_vector (15 downto 0));
end ROM;

architecture Behavioral of ROM is
type roms is array (0 to 255) of std_logic_vector (15 downto 0);
signal temp_rom :roms;
signal temp_out :std_logic_vector (15 downto 0);
begin
process(read_enb)
begin
 for m in 0 to 255 loop 
	for k in 0 to 15 loop
			temp_rom(m)(k)<='1';
			end loop;
   end loop;
end process;

process(clk,reset)
begin
if(reset='0')	then 
    for i in 0 to 255 loop 
					temp_rom(i)<=std_logic_vector(to_unsigned(i, 16));
					
   end loop;

  else if(clk 'event and clk='1') then 
				if(read_enb='1') then
					temp_out<=temp_rom(conv_integer(addres));
				
				end if;
		end if;
end if;
end process;	
data_out<=temp_out;


end Behavioral;

