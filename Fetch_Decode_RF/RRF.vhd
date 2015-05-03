
library ieee;
    use ieee.std_logic_1164.all; 
    use IEEE.numeric_std.ALL; 

entity RRF is
    generic (
		  ADDR_WIDTH :integer := 8;
        DATA_WIDTH :integer := 16;
        TAG_WIDTH  :integer := 3
    );
    port (
        clock      :in  std_logic; -- Clock input
        reset      :in  std_logic; -- Active high reset

        tag_A    :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG_A input
        tag_B    :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG_A input
        data_RRFA:out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output for TAG_A
        data_RRFB:out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output for TAG_B

        tag_ROB  :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- TAG from ROB input
        data_RRF :out std_logic_vector (DATA_WIDTH-1 downto 0); -- corrusponding data 

        tag_in   :in  std_logic_vector (TAG_WIDTH-1 downto 0); -- new tag to be assigned
        tag_en	 :in  std_logic; -- enable to assign new tag
	
	tag_data_in: in std_logic_vector (TAG_WIDTH+DATA_WIDTH-1 downto 0); -- new tag to be assigned
	tag_data_en:in  std_logic -- enable to assign new data
    );
end entity;

architecture rtl of RRF is

type memory_type is array (0 to ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH downto 0);  
	-- MSB showing valid bit
signal memory : memory_type :=(others => (others => '0')); --memory for queue. 

begin

	process (clock, reset) 
	   variable tag_temp : std_logic_vector (2 downto 0);
	begin
      if (reset = '1') then
         for i in 0 to ADDR_WIDTH-1 loop
            memory(i)<= (others=>'0');
	      end loop;
      elsif (clock'event and clock= '1') then  
			for i in 0 to ADDR_WIDTH-1 loop   
			tag_temp := std_logic_vector(to_unsigned(i,3));
 			------------------------- Writing new data --------------------------
				if(tag_data_en = '1') then
					if ( tag_temp = tag_data_in(DATA_WIDTH+TAG_WIDTH-1 downto DATA_WIDTH)) then
						memory(i) <= '1' & tag_data_in(DATA_WIDTH-1 downto 0);
					end if;
				------------------------- making new tag available ------------------
				elsif (tag_en = '1' and tag_temp = tag_in) then
					memory(i) <= '0' & X"0000";
				end if;
				------------------------- TAG_ROB to DATA_RRF -----------------------
				if ( tag_temp = tag_ROB) then	    
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRF <= memory(i)(DATA_WIDTH-1 downto 0);
					else  
						data_RRF <= X"0000";
					end if;
				end if;
				------------------------- TAG_A to DATA_RRFA -----------------------
				if ( tag_temp = tag_A) then
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFA <= memory(i)(DATA_WIDTH-1 downto 0);
					else  
						data_RRFA <= X"0000";
					end if;
				end if;
				------------------------- TAG_B to DATA_RRFB -----------------------
				if ( tag_temp = tag_B) then	    
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFB <= memory(i)(DATA_WIDTH-1 downto 0);
					else  
						data_RRFB <= X"0000";
					end if;
				end if;
				----------------------------------------------------------------------
			end loop;
			
      end if;
   end process;

end architecture;
