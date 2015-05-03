----------------------------------------
-- Register Renamer : IITB-RISC-Superscalar
-- Author : Titto Thomas
-- Date : 2/5/2015
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Renamer is
  port (
	clock : in std_logic;
	reset : in std_logic;				-- Reset the status
	dest_address : in std_logic_vector(2 downto 0);		-- Destination address from the instruction
	tag_out : out std_logic_vector(2 downto 0);		-- Tag that goes to ARF
	tag_out_en : out std_logic;				-- Write the tag to ARF
	tag_rob_in : in std_logic_vector(2 downto 0);		-- Tag from the ROB when it finishes
	rob_finish : in std_logic;				-- ROB is done with a particular tag
	no_tag_left : out std_logic;				-- No free tags left

    );
end Renamer;

architecture Register_renamer of Renamer is
begin

RR : process (clock, reset, dest_address, tag_rob_in, rob_finish)

variable tag_status : std_logic_vector(7 downto 0);

begin
	if clock'event and clock = '1' then
		if reset = '1' then
			tag_status := x"00";
			tag_out <= "000";
			tag_out_en <= '0';
			no_tag_left <= '0';
		else
			if rob_finish = '1' then
				tag_status(to_integer(unsigned(tag_rob_in))) := '0';
			end if;
		
			for i in 0 to 7 loop
				if tag_status(i) = '0' then
					tag_out <= std_logic_vector(to_unsigned(i,3));
					tag_out_en <= '1';
					tag_status(i) := '1';
					exit;
				elsif tag_status(i) = '1' and i = 7 then
					tag_out_en <= '0';
				end if;
			end loop;
			if tag_status = x"FF" then
				no_tag_left <= '1';
			else
				no_tag_left <= '0';
			end if;
		end if;
	end if;
end process RR;


end architecture Register_renamer;
