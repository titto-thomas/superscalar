library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.numeric_std.ALL;  

entity tb_queue is
end entity;

architecture behave of tb_queue is 

component queue is
    generic (
        DATA_WIDTH :integer := 8;
        ADDR_WIDTH :integer := 8
    );
    port (
        clk      :in  std_logic; -- Clock input
        rst      :in  std_logic; -- Active high rst
        data_in  :in  std_logic_vector (DATA_WIDTH-1 downto 0); -- Data input
        rd_en    :in  std_logic; -- Read enable
        wr_en	 :in  std_logic; -- Write Enable
        data_out :out std_logic_vector (DATA_WIDTH-1 downto 0); -- Data Output
        empty    :out std_logic; -- FIFO empty
        full     :out std_logic;  -- FIFO full
	w_err	 :out std_logic;  -- Write error because of FIFO full
	r_err	 :out std_logic   -- Write error because of FIFO empty
    );
end component;

signal clk : std_logic:='0';
signal rst: std_logic;
signal rd_en, wr_en, empty, full, w_err, r_err: std_logic;
signal data_in, data_out : std_logic_vector(7 downto 0);

begin
clk <= not clk after 10 ns;
fifo1: queue generic map(8, 8) 
            port map(clk, rst, data_in, rd_en, wr_en, data_out, empty, full, w_err, r_err);
	
process
begin
------------ RESET ------------
	rst <='0';
	wr_en<='0';
	rd_en<='0';
	wait for 20 ns;
	rst <='1';
------------ WRITE DATA --------
	wr_en <='1';
	data_in <= X"11";
	wait for 20 ns;
	data_in <= X"22";
	wait for 20 ns;
	data_in <= X"33";
	wait for 20 ns;
	data_in<= X"44";
	wait for 20 ns;
	data_in<= X"55";
	wait for 20 ns;
	data_in<=X"66";
	wait for 20 ns;
	data_in <= X"77";
	wait for 20 ns;
	data_in <= X"88";
	wait for 20 ns;
	data_in <= X"99";	-- 9TH DATA
	wait for 20 ns;
	wr_en <='0';
------------ READ DATA ---------
	wait for 20 ns;
	rd_en <='1';
	wait for 200 ns;	-- 10 READS
	rd_en <= '0';
	wait for 20 ns;
	wr_en <= '1';
	data_in <= X"AA";	-- WRITE ON 0TH
	wait for 20 ns;
	wr_en <='0';
	wait for 20 ns;
------------ RESET ------------
	rst <='0';
	wait for 20 ns;
	rst <='1';
-------------------------------
	wait;
	end process;
end behave;

