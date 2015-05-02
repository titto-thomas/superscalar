--IITB RISC processor---
--Regfile Module(2to1)---
-- author: Anakha
-----------------------description of entity---------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  entity regfile is 
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

  end regfile;
 
----------------------end entity----------------------------

-----------------------description of architecture----------
architecture behave of regfile is 
type regarray is array (6 downto 0) of std_logic_vector(15 downto 0);
signal reg: regarray;
type tagarray is array (6 downto 0) of std_logic_vector(2 downto 0);
signal tag : tagarray;
type busyarray is array (6 downto 0) of std_logic;
signal busy : busyarray;
signal busyA, busyB : std_logic;
signal tagA, tagB : std_logic_vector(2 downto 0);
signal temp_outA, temp_outB : std_logic_vector(19 downto 0):= X"00000";
begin
outA <= temp_outA;
outB <= temp_outB;
 temp_outA(16)<= busyA;
temp_outB(16) <= busyB;
 temp_outA(19 downto 17)<= tagA;
temp_outB(19 downto 17)<= tagB;

---separate process for write and read----------------------
---write process involves writing into the reg file from RRF 

write: process(clock, writEn_ROB, data_out_RRF, tag_in, busy_renamer)
	
	begin
	if clock'event and clock='1' then 
		if reset ='1' then 
			 reg(0)<= X"0000";
			 reg(1)<= X"0000";
			 reg(2)<= X"0000";
			 reg(3)<= X"0000";
			 reg(4)<= X"0000";
			 reg(5)<= X"0000";
			 reg(6)<= X"0000";
			 busy <= (others=> '0');
			 tag <= (others=> "000");
		else 
			if WritEn_ROB = '1' then ---should do a tag search ---
				for i in 0 to 6 loop 
				 if (tag_field_RRF = tag(i)) then 
				busy(i) <= '0';
				reg(i) <= data_out_RRF;
				end if;	
	         		end loop;
			end if;
---------------------tag and busy bit updation from renamer logic---------------------			
			if (tag_en ='1') then 
				case dest_addr is 
				   when "000" =>
				       tag(0) <= tag_in; --from renamer logic
				       busy(0) <= busy_renamer;
				    when "001" =>
					tag(1) <= tag_in;
					busy(1) <= busy_renamer;
				    when "010" =>
					tag(2) <= tag_in;
					busy(2) <= busy_renamer;
				    when "011" =>
					tag(3) <= tag_in;
					busy(3) <= busy_renamer;
				    when "100" =>
					tag(4) <= tag_in;
					busy(4) <= busy_renamer;
				    when "101" =>
					tag(5) <= tag_in;
					busy(5) <= busy_renamer;
				    when "110" =>
					tag(6) <= tag_in;
					busy(6) <= busy_renamer;
				    when others =>
						null;
				end case;
			end if;
		end if;
                        
	end if;
		
end process write;
---------------------------------------------------------------
 ---------------------process for read-------------------------

read: process(InA,InB)
	begin
	case InA is 
		when "000" =>
			temp_outA(15 downto 0) <= reg(0);
			busyA <= busy(0);
			tagA <= tag(0);
		when "001" =>
			temp_outA(15 downto 0) <= reg(1);
			busyA <= busy(1);
			tagA <= tag(1);		
		when "010" =>
			temp_outA(15 downto 0) <= reg(2);
			busyA <= busy(2);
			tagA <= tag(2);
		when "011" =>
			temp_outA(15 downto 0) <= reg(3);
			busyA <= busy(3);
			tagA <= tag(3);
		when "100" =>
			temp_outA(15 downto 0) <= reg(4);
			busyA <= busy(4);
			tagA <= tag(4);
		when "101" =>
			temp_outA(15 downto 0) <= reg(5);
			busyA <= busy(5);
			tagA <= tag(5);
		when "110" =>
			temp_outA(15 downto 0) <= reg(6);
			busyA <= busy(6);
			tagA <= tag(6);
		when others => 
			null;
	end case;

	case InB is 
		when "000" =>
			temp_outB(15 downto 0) <= reg(0);
			busyB <= busy(0);
			tagB <= tag(0);
		when "001" =>
			temp_outB(15 downto 0) <= reg(1);
			busyB <= busy(1);
			tagB <= tag(1);		
		when "010" =>
			temp_outB(15 downto 0) <= reg(2);
			busyB <= busy(2);
			tagB <= tag(2);
		when "011" =>
			temp_outB(15 downto 0) <= reg(3);
			busyB <= busy(3);
			tagB <= tag(3);
		when "100" =>
			temp_outB(15 downto 0) <= reg(4);
			busyB <= busy(4);
			tagB <= tag(4);
		when "101" =>
			temp_outB(15 downto 0) <= reg(5);
			busyB <= busy(5);
			tagB <= tag(5);
		when "110" =>
			temp_outB(15 downto 0) <= reg(6);
			busyB <= busy(6);
			tagB <= tag(6);
		when others => 
			null;
	end case;
end process read;
---------------------------------------------------

end behave;
