
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
        clk      	 :in  std_logic; 														-- Clock input
        rst      	 :in  std_logic; 														-- Active high reset
        tag_A1     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A1 input
        tag_B1     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B1 input
		  tag_A2     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A2 input
        tag_B2     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B2 input
        data_RRFA1 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A1
        data_RRFB1 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B1
		  data_RRFA2 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A2
        data_RRFB2 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B2
        tag_ROB  	 :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG from ROB input
        data_RRF 	 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- corrusponding data 
        tag_in1    :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en1	 :in  std_logic; 														-- enable to assign new tag
		  tag_in2    :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en2	 :in  std_logic; 														-- enable to assign new tag
		  tag_data_in: in std_logic_vector (TAG_WIDTH+DATA_WIDTH-1 downto 0);-- new tag to be assigned
		  tag_data_en: in std_logic; 							
		   validA1 : out std_logic;
		   validB1 : out std_logic;
		   validA2 : out std_logic;
		   validB2 : out std_logic		
								-- enable to assign new data
    );
end entity;

architecture rtl of RRF is

type memory_type is array (0 to ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH downto 0);-- MSB=valid
signal memory : memory_type :=(others => (others => '0')); 										--memory for queue. 

begin

	process (clk, rst) 
	   variable tag_temp : std_logic_vector (2 downto 0);
	begin
	
      if (rst = '0') then
         for i in 0 to ADDR_WIDTH-1 loop
            memory(i)<= (others=>'0');
	      end loop;
   
		elsif (clk'event and clk= '1') then  
			
			for i in 0 to ADDR_WIDTH-1 loop   
				tag_temp := std_logic_vector(to_unsigned(i,3));
				
				------------------------- Writing new data --------------------------
				if(tag_data_en = '1') then
					if ( tag_temp = tag_data_in(DATA_WIDTH+TAG_WIDTH-1 downto DATA_WIDTH)) then
						memory(i) <= '1' & tag_data_in(DATA_WIDTH-1 downto 0);
					end if;
					
				------------------------- making new tag available ------------------
				elsif (tag_en1 = '1' and tag_temp = tag_in1) then
					memory(i) <= '0' & X"0000";
				elsif (tag_en2 = '1' and tag_temp = tag_in2) then
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
				if ( tag_temp = tag_A1) then
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFA1 <= memory(i)(DATA_WIDTH-1 downto 0);
						validA1 <= memory(i)(DATA_WIDTH);
					else  
						data_RRFA1 <= X"0000";
						validA1 <= '0';
					end if;
				end if;
				
				if ( tag_temp = tag_A2) then
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFA2 <= memory(i)(DATA_WIDTH-1 downto 0);
						validA2 <= memory(i)(DATA_WIDTH);
					else  
						data_RRFA2 <= X"0000";
						validA2 <='0';
					end if;
				end if;
				
				------------------------- TAG_B to DATA_RRFB -----------------------
				if ( tag_temp = tag_B1) then	    
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFB1 <= memory(i)(DATA_WIDTH-1 downto 0);
						validB1 <= memory(i)(DATA_WIDTH);
					else  
						data_RRFB1 <= X"0000";
						validB1 <='0';
					end if;
				end if;
				
				if ( tag_temp = tag_B2) then	    
					if (memory(i)(DATA_WIDTH) = '1') then	    
						data_RRFB2 <= memory(i)(DATA_WIDTH-1 downto 0);
						validB2 <= memory(i)(DATA_WIDTH);
					else  
						data_RRFB2 <= X"0000";
						validB2 <= '0';
					end if;
				end if;
				----------------------------------------------------------------------
			
			end loop;
      end if;
   end process;

end architecture;
