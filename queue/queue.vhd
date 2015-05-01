library ieee;
    use ieee.std_logic_1164.all;
    use IEEE.numeric_std.ALL; 

entity queue is
    generic (
        DATA_WIDTH :integer := 8;
        ADDR_WIDTH :integer := 8
    );
    port (
        clk      :in  std_logic; -- Clock input
        rst      :in  std_logic; -- Active high reset
        data_in  :in  std_logic_vector (DATA_WIDTH-1 downto 0); -- Data input
        rd_en    :in  std_logic; -- Read enable
        wr_en	  :in  std_logic; -- Write Enable
        data_out :out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output
        empty    :out std_logic;  -- FIFO empty
        full     :out std_logic;  -- FIFO full
	     w_err	 :out std_logic;  -- Write error because of FIFO full
	     r_err	 :out std_logic   -- Write error because of FIFO empty
    );
end entity;

architecture rtl of queue is

    signal wr_ptr, rd_ptr, count    :integer;
    signal tmp_full, tmp_empty :std_logic := '0';  
    type memory_type is array (0 to ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);  
    signal memory : memory_type :=(others => (others => '0')); --memory for queue. 
    
begin

    full <= tmp_full;		
    empty <= tmp_empty;    

-----------------Code Start---------------------------
    tmp_full  <= '1' when (count = ADDR_WIDTH) else '0';	-- stack full
    tmp_empty <= '1' when (count = 0) else '0';			-- stack empty
    
------------------------------ WRITE POINTER -------------
    WRITE_POINTER:
    process (clk, rst, wr_en, wr_ptr) begin
        if (clk'event and clk= '1') then
		      if (rst = '0') then
                wr_ptr <= 0;		-- initialize write pointer
            else
		          if (wr_ptr = 8) then
                    wr_ptr <= 0;		-- circular queue requirement
                elsif(wr_en = '1' and wr_ptr < 8) then
                    wr_ptr <= wr_ptr + 1;	-- increament wr pointer
                end if;
            end if;
			end if;
		  
    end process;

------------------------------ READ POINTER -------------
    READ_POINTER:
    process (clk, rst, rd_ptr, rd_en) begin
        if (clk'event and clk= '1') then
				if (rst  = '0') then
					rd_ptr <= 0;		-- initialize read pointer
				else
					if (rd_ptr = 8) then
                   rd_ptr <= 0;		-- circular queue requirement
					elsif (rd_en = '1' and rd_ptr < 8) then
                   rd_ptr <= rd_ptr + 1;	-- increament read pointer
				   end if;
            end if;
        end if;
    end process;

------------------------------ WRITE DATA -------------
    WRITE_DATA:
    process (clk, rst, tmp_full) begin
		 if (clk'event and clk= '1') then
		     w_err <= '0';
           if (rst = '0') then
	            for i in 0 to ADDR_WIDTH-1 loop
                   memory(i) <= (others=>'0');	-- RESET MEMORY
	            end loop;
           else
               if (wr_en = '1' and tmp_full = '0') then
                   memory(wr_ptr) <= data_in;	-- WRITE IF NOT FULL
	            elsif (wr_en = '1' and tmp_full = '1') then
		             w_err <= '1';			-- WRITE ERROR IF FULL
               end if;
           end if;
		 end if;
    end process;

------------------------------ READ DATA -------------
    READ_DATA:
    process (clk, rst) begin
        	
        if (clk'event and clk= '1') then
		      r_err <= '0';
		      if (rst = '0') then
                data_out <= (others=>'0');		-- NO OUTPUT	
            else
                if (rd_en = '1' and tmp_empty = '0') then
                    data_out <= memory(rd_ptr);	-- READ IF NOT EMPTY
				    elsif (rd_en = '1' and tmp_empty = '1') then
					     r_err <= '1';			-- READ ERROR IF EMPTY
                end if; 
				end if;
        end if;
    end process;
------------------------------ STATUS COUNTER -------------
    COUNTER:
    process (clk, rst, rd_en, wr_en, count) begin
        if (clk'event and clk= '1') then
		      if (rst = '0') then
                count <= 0;
            else
	             -- Read but no write.
                if (rd_en = '1' and not (wr_en = '1') and (count /= 0)) then
                    count <= count - 1;		-- DECREAMENT COUNT IF READ
                -- Write but no read.
                elsif (wr_en = '1' and not (rd_en = '1') and (count /= 8)) then
                    count <= count + 1;		-- INCREAMENT COUNT IF WRITE
                end if;
				end if;
        end if;
    end process;

end architecture;
