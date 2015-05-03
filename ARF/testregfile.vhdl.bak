--IITB RISC superscalar processor---
--Regfile Module(2to1)---
-- author: Anakha
-----------------------description of entity---------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is 
end entity;

architecture behave of testbench is 
component regfile is 
port (
   clock  : in std_logic;
   reset  : in std_logic;
   InA    : in std_logic_vector(2 downto 0); --address for selecting A 
   InB    : in std_logic_vector(2 downto 0); --address for selecting B 
   outA  : out std_logic_vector(19 downto 0); --read the data , 1st operand
   outB  : out std_logic_vector(19 downto 0);--read the data , 2nd operand
   
   

   data_out_RRF  : in std_logic_vector(15 downto 0); --result from RRF-to update the RRF at the retire stage
   tag_field_RRF  : in std_logic_vector(2 downto 0); --serve as the write address identification
   WritEn_ROB : in std_logic; ---enable for writing controlled by ROB
 
   -----tag update section----
   tag_in : in std_logic_vector(2 downto 0);
   dest_addr : in std_logic_vector(2 downto 0);
   tag_en : in std_logic;
   -----busy update section---
   busy_renamer : in std_logic --given by renamer logic
);
end component;
signal clock: std_logic:='0';
signal reset : std_logic;
signal InA, InB : std_logic_vector(2 downto 0);
signal outA, outB : std_logic_vector(19 downto 0);
signal data_out_RRF : std_logic_vector(15 downto 0);
signal tag_field_RRF : std_logic_vector(2 downto 0);
signal WritEn_ROB : std_logic;
signal tag_in : std_logic_vector(2 downto 0);
signal dest_addr : std_logic_vector(2 downto 0);
signal tag_en : std_logic;
signal busy_renamer : std_logic;
begin

clock<= not clock after 5 ns;

ARF : regfile port map(clock, reset, InA, InB, outA, outB, data_out_RRF, tag_field_RRF, WritEn_ROB, tag_in, dest_addr, tag_en, busy_renamer);

process
begin
reset <='1';
InA <= "000";
InB <= "000";
data_out_RRF <= X"0000";
tag_field_RRF <= "000";
WritEn_RoB <= '0';
tag_in <= "000";
dest_addr <= "000";
tag_en <='0';
busy_renamer <= '0';
wait for 20 ns;
reset<='0';

busy_renamer <= '1';
tag_en <='1';
dest_addr <= "001";
tag_in <= "011";
wait for 20 ns;
busy_renamer <= '1';
tag_en <='1';
dest_addr <= "010";
tag_in <= "111";
wait for 20 ns;
busy_renamer <= '0';
tag_en <='0';
InA<= "001";
InB <= "010";
wait for 20 ns;
InA <="000";
InB <= "000";
WritEn_ROB <= '1';
tag_field_RRF <= "111" ;
data_out_RRF <= X"1234";
wait for 20 ns;
WritEn_ROB <='0';
InA <= "001";
InB <= "010";

wait for 200 ns;









end process;
end behave;

