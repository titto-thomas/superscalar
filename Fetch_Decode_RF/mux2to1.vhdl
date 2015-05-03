--IITB RISC processor---
--Mux Module(2to1)---
-- author: Anakha
library ieee;
use ieee.std_logic_1164.all;
entity mux2to1 is
  generic (
    nbits : integer);

  port (
    input0 : in  std_logic_vector(nbits-1 downto 0);
    input1 : in  std_logic_vector(nbits-1 downto 0);
    output : out std_logic_vector(nbits-1 downto 0);
    sel    : in  std_logic);

end mux2to1;

architecture behave of mux2to1 is

begin  -- mux2to1
	process(input0,input1,sel)
	variable sel_var: std_logic;
	begin
	sel_var:= sel;
  	case sel_var is 
	when '0' =>
		output <= input0;
	when '1' =>
		output <= input1;
	when others =>
		output <= (others => 'Z');
  	end case;
	end process;
end behave;
