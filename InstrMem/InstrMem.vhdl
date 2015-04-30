----------------------------------------
-- Instruction Memory Module : IITB-RISC-Superscalar
-- Author : Titto Thomas, Anakha VB
-- Date : 30/4/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity InstrMem is
  port (
	clock		: in  std_logic;                      		-- clock
	write		: in  std_logic;				-- write to the memory
	read		: in  std_logic;				-- read from the memory
	address		: in  std_logic_vector(15 downto 0);		-- address of the memory being read
	data_in		: in  std_logic_vector(15 downto 0);  		-- data input
	data_out_1	: out  std_logic_vector(15 downto 0); 		-- data output 1
	data_out_2	: out  std_logic_vector(15 downto 0)  		-- data output 2
    );
end InstrMem;

architecture RAM of InstrMem is

type mem_type is array (65535 downto 0) of std_logic_vector(15 downto 0);	-- the size of the memory in use
signal mem	: mem_type;

begin

data_out_1 <= mem(to_integer(unsigned(address))) when (read = '1') else (others => 'Z'); -- give the memory content as the output
data_out_2 <= mem(to_integer(unsigned(address)+1)) when (read = '1') else (others => 'Z');

------------------- writing the data to the register ------------------------------------
Memory_Write : process(clock)
begin
   if (rising_edge(clock)) then
      if (write = '1') then
          mem (to_integer(unsigned(address))) <= data_in ;	-- write the input data on the corresponding location
      end if;
   end if;
end process Memory_Write;
-----------------------------------------------------------------------------------------

end architecture RAM;
