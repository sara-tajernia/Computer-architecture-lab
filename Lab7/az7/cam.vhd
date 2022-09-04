 
  library ieee;
      use ieee.std_logic_1164.all;
		use ieee.math_real.all;
		use ieee.Numeric_Std.all;
		use ieee.std_logic_unsigned.all;
  
  entity CAM is
      generic (
          W :integer := 16;   -- data width or data size
			 C :integer := 3   -- addr width
      );
      port (
          clk     :in    std_logic;                                -- Clock Input
          data 	:in std_logic_vector (W-1 downto 0); -- data in
          match   :out    std_logic := '0' 
      );
  end entity;
  architecture rtl of CAM is
     ----------------Internal variables----------------  
		constant D :integer := 2**C;    -- ram depth or ram size   size bolck * num block
  
      type CAM is array (integer range <>)of std_logic_vector (W-1 downto 0);
      signal mem : CAM (D-1 downto 0);
		signal match_tmp : std_logic ;
  begin
  
     ----------------Code Starts Here------------------
	  
	 
	process (clk) 
	begin
	 if (rising_edge(clk)) then
		for i in 0 to D-1 loop
		if(mem(i) = data) then
			match_tmp <= '1';
			match <= '1';
		else 
			match_tmp <= '0';
			match <= '0';
			
		end if;
		end loop;
		
		if(match_tmp = '0')then
		for i in 0 to D-1 loop
			if(mem(i) = "UUUUUUUUUUUUUUUU") then
				mem(i) <= data;
				match <= '0';
				match_tmp <= '0';
			end if;
		end loop;
		end if;
		
		end if;
		end process;
  end architecture;