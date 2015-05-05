library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.numeric_std.ALL;  

entity tb_RRF is
end entity;

architecture behave of tb_RRF is 

component RRF is
    generic (
			ADDR_WIDTH :integer := 8;
			DATA_WIDTH :integer := 16;
			TAG_WIDTH  :integer := 3
			);
    port (
        clk      	 :in  std_logic; 											-- Clock input
        rst      	 :in  std_logic; 											-- Active high reset
        tag_A1	     :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A1 input
        tag_B1  	 :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B1 input
		tag_A2     	 :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_A2 input
        tag_B2       :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG_B2 input
        data_RRFA1   :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A1
        data_RRFB1   :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B1
		data_RRFA2   :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_A2
        data_RRFB2   :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- Data Output for TAG_B2
        tag_ROB  	 :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- TAG from ROB input
        data_RRF 	 :out std_logic_vector (DATA_WIDTH-1 downto 0); 			-- corresponding data 
        tag_in1      :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en1	     :in  std_logic; 											-- enable to assign new tag
		tag_in2      :in  std_logic_vector (TAG_WIDTH -1 downto 0); 			-- new tag to be assigned
        tag_en2	     :in  std_logic; 											-- enable to assign new tag
		tag_data_in  :in  std_logic_vector (TAG_WIDTH+DATA_WIDTH-1 downto 0);	-- new tag to be assigned
		tag_data_en  :in  std_logic 											-- enable to assign new data
    );
end component;

signal clk : std_logic:='0';
signal rst: std_logic;
signal tag_en1, tag_en2, tag_data_en : std_logic;
signal tag_A1, tag_B1, tag_A2, tag_B2, tag_ROB, tag_in1, tag_in2 : std_logic_vector (2 downto 0);
signal data_RRFA1, data_RRFA2, data_RRFB1, data_RRFB2, data_RRF : std_logic_vector(15 downto 0);
signal tag_data_in : std_logic_vector (18 downto 0);

begin
clk <= not clk after 10 ns;

RRF1: RRF generic map(8, 16, 3) port map(clk, rst, tag_A1, tag_B1, tag_A2, tag_B2, data_RRFA1, data_RRFB1, data_RRFA2, data_RRFB2, 
										 tag_ROB, data_RRF, tag_in1, tag_en1, tag_in2, tag_en2, tag_data_in, tag_data_en);
	
process
begin
------------ RESET ------------
	rst <='0';
	wait for 50 ns;
	rst <='1';
------------ WRITE DATA ----------
	wait for 20 ns;
	tag_data_en <= '1';
	tag_data_in <= "001" & X"A111";
	wait for 20 ns;
	tag_data_in <= "010" & X"A222";
	wait for 20 ns;
	tag_data_in <= "011" & X"B133";
	wait for 20 ns;
	tag_data_in <= "100" & X"B244";
	wait for 20 ns;
	tag_data_in <= "101" & X"CDEF";
	wait for 20 ns;
	tag_data_en <= '0';
	wait for 20 ns;
------------ GET DATA ----------
	tag_A1 <= b"001";
	wait for 20 ns;
	tag_A2 <= b"010";
	wait for 20 ns;
	tag_B1 <= b"011";
	wait for 20 ns;
	tag_B2 <= b"100";
	wait for 20 ns;
	tag_ROB <= b"101";
---------- RELEASE TAG ----------	
	wait for 20 ns;
	tag_en1 <= '1';
	tag_in1 <= "011";
	wait for 20 ns;
	tag_en2 <= '1';
	tag_in2 <= "100";
	wait for 20 ns;
	tag_en1 <= '0';
	tag_en2 <= '0';
---------------------------------
	wait;
	end process;
end behave;

