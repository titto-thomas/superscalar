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
   InA1    : in std_logic_vector(2 downto 0); 		--address for selecting A 
   InB1    : in std_logic_vector(2 downto 0); 		--address for selecting B 
   outA1  : out std_logic_vector(19 downto 0); 		--read the data , 1st operand
   outB1  : out std_logic_vector(19 downto 0);		--read the data , 2nd operand
   

   InA2    : in std_logic_vector(2 downto 0); 		--address for selecting A 
   InB2    : in std_logic_vector(2 downto 0); 		--address for selecting B 
   outA2  : out std_logic_vector(19 downto 0); 		--read the data , 1st operand
   outB2  : out std_logic_vector(19 downto 0);		--read the data , 2nd operand
   

   data_out_RRF  : in std_logic_vector(15 downto 0); 	--result from RRF-to update the RRF at the retire stage
   tag_field_RRF  : in std_logic_vector(2 downto 0); 	--serve as the write address identification
   WritEn_ROB : in std_logic; 				---enable for writing controlled by ROB
 
   -----tag update section----
   tag_in1 : in std_logic_vector(2 downto 0);
   tag_in2 : in std_logic_vector(2 downto 0);
   

   dest_addr1 : in std_logic_vector(2 downto 0);
   dest_addr2 : in std_logic_vector(2 downto 0);
   tag_en1 : in std_logic; 				---tag_en1 or tag_en2 ----
   tag_en2 : in std_logic 				----tag_enable 2 
   -----busy update section---
   


);

  end regfile;
 
----------------------end entity----------------------------

-----------------------description of architecture----------
architecture behave of regfile is 
type regarray is array (6 downto 0) of std_logic_vector(15 downto 0);
signal reg: regarray;
type tagarray is array (6 downto 0) of std_logic_vector(2 downto 0);
signal tag1, tag2 : tagarray;
type busyarray is array (6 downto 0) of std_logic;
signal busy1, busy2 : busyarray;
signal outA1(16), outB1(16), outA2(16), outB2(16) : std_logic;
signal outA1(19 downto 17), outB1(19 downto 17), outA2(19 downto 17), outB2(19 downto 17) : std_logic_vector(2 downto 0);

signal tag_en : std_logic;
begin

tag_en <= tag_en1  or tag_en2;
---separate process for write and read----------------------
---write process involves writing into the reg file from RRF 

write: process(clock, reset)
	
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
			 busy1 <= (others=> '0');
			 tag1 <= (others=> "000");
			 busy2 <= (others=> '0');
			 tag2 <= (others=> "000");
			 
		else 
			if WritEn_ROB = '1' then ---should do a tag search ---
				for i in 0 to 6 loop 
				 if (tag_field_RRF = tag1(i)) then 
				busy1(i) <= '0';
				reg(i) <= data_out_RRF;
				elsif (tag_field_RRF = tag2(i)) then
				busy2(i) <= '0';
				reg(i) <= data_out_RRF;
				end if;	
	         		end loop;
			end if;
---------------------tag and busy bit updation from renamer logic---------------------			
			if (tag_en1 ='1') then 
				case dest_addr1 is 
				   when "000" =>
				       tag1(0) <= tag_in1; --from renamer logic
				       busy1(0) <= '1';
				    when "001" =>
					tag1(1) <= tag_in1;
					busy1(1) <= '1';
				    when "010" =>
					tag1(2) <= tag_in1;
					busy1(2) <= '1';
				    when "011" =>
					tag1(3) <= tag_in1;
					busy1(3) <= '1';
				    when "100" =>
					tag1(4) <= tag_in1;
					busy1(4) <= '1';
				    when "101" =>
					tag1(5) <= tag_in1;
					busy1(5) <= '1';
				    when "110" =>
					tag1(6) <= tag_in1;
					busy1(6) <= '1';
				    when others =>
						null;
				end case;
			end if;
----------------------------for the 2nd dispatch slot-----------------------------
			if (tag_en2 ='1') then 
				case dest_addr2 is 
				   when "000" =>
				       tag2(0) <= tag_in2; --from renamer logic
				       busy2(0) <= '1';
				    when "001" =>
					tag2(1) <= tag_in2;
					busy2(1) <= '1';
				    when "010" =>
					tag2(2) <= tag_in2;
					busy2(2) <= '1';
				    when "011" =>
					tag2(3) <= tag_in2;
					busy2(3) <= '1';
				    when "100" =>
					tag2(4) <= tag_in2;
					busy2(4) <= '1';
				    when "101" =>
					tag2(5) <= tag_in2;
					busy2(5) <= '1';
				    when "110" =>
					tag2(6) <= tag_in2;
					busy2(6) <= '1';
				    when others =>
						null;
				end case;
			end if;
		end if;
                        
	end if;
		
end process write;
---------------------------------------------------------------
 ---------------------process for read-------------------------

readA1: process(InA1, reset) 
	begin
	if (reset='1') then
         outA1(19 downto 0) <= X"00000";
	else
	case InA1 is 
		when "000" =>
			outA1(15 downto 0) <= reg(0);
			outA1(16) <= busy1(0);
			outA1(19 downto 17) <= tag1(0);
		when "001" =>
			outA1(15 downto 0) <= reg(1);
			outA1(16) <= busy1(1);
			outA1(19 downto 17) <= tag1(1);		
		when "010" =>
			outA1(15 downto 0) <= reg(2);
			outA1(16) <= busy1(2);
			outA1(19 downto 17) <= tag1(2);
		when "011" =>
			outA1(15 downto 0) <= reg(3);
			outA1(16) <= busy1(3);
			outA1(19 downto 17) <= tag1(3);
		when "100" =>
			outA1(15 downto 0) <= reg(4);
			outA1(16) <= busy1(4);
			outA1(19 downto 17) <= tag1(4);
		when "101" =>
			outA1(15 downto 0) <= reg(5);
			outA1(16) <= busy1(5);
			outA1(19 downto 17) <= tag1(5);
		when "110" =>
			outA1(15 downto 0) <= reg(6);
			outA1(16) <= busy1(6);
			outA1(19 downto 17) <= tag1(6);
		when others => 
			outA1(19 downto 0) <= X"00000";
	end case;
   end if;
end process readA1;
readB1 : process(InB1, reset) 
	begin
	if (reset='1') then 
	 outB1(19 downto 0) <= X"00000";
	else
	case InB1 is 
		when "000" =>
			outB1(15 downto 0) <= reg(0);
			outB1(16) <= busy1(0);
			outB1(19 downto 17) <= tag1(0);
		when "001" =>
			outB1(15 downto 0) <= reg(1);
			outB1(16) <= busy1(1);
			outB1(19 downto 17) <= tag1(1);		
		when "010" =>
			outB1(15 downto 0) <= reg(2);
			outB1(16) <= busy1(2);
			outB1(19 downto 17) <= tag1(2);
		when "011" =>
			outB1(15 downto 0) <= reg(3);
			outB1(16) <= busy1(3);
			outB1(19 downto 17) <= tag1(3);
		when "100" =>
			outB1(15 downto 0) <= reg(4);
			outB1(16) <= busy1(4);
			outB1(19 downto 17) <= tag1(4);
		when "101" =>
			outB1(15 downto 0) <= reg(5);
			outB1(16) <= busy1(5);
			outB1(19 downto 17) <= tag1(5);
		when "110" =>
			outB1(15 downto 0) <= reg(6);
			outB1(16) <= busy1(6);
			outB1(19 downto 17) <= tag1(6);
		when others => 
			outB1(19 downto 0) <= X"00000";
	end case;
	end if;
	end process readB1;
-------------------------------for 2nd slot--------------------
readA2 : process(InA2, reset)
	begin
	if (reset='1') then 
	 outA2(19 downto 0) <= X"00000";
	else
	case InA2 is 
		when "000" =>
			outA2(15 downto 0) <= reg(0);
			outA2(16) <= busy2(0);
			outA2(19 downto 17) <= tag2(0);
		when "001" =>
			outA2(15 downto 0) <= reg(1);
			outA2(16) <= busy2(1);
			outA2(19 downto 17) <= tag2(1);		
		when "010" =>
			outA2(15 downto 0) <= reg(2);
			outA2(16) <= busy2(2);
			outA2(19 downto 17) <= tag2(2);
		when "011" =>
			outA2(15 downto 0) <= reg(3);
			outA2(16) <= busy2(3);
			outA2(19 downto 17) <= tag2(3);
		when "100" =>
			outA2(15 downto 0) <= reg(4);
			outA2(16) <= busy2(4);
			outA2(19 downto 17) <= tag2(4);
		when "101" =>
			outA2(15 downto 0) <= reg(5);
			outA2(16) <= busy2(5);
			outA2(19 downto 17) <= tag2(5);
		when "110" =>
			outA2(15 downto 0) <= reg(6);
			outA2(16) <= busy2(6);
			outA2(19 downto 17) <= tag2(6);
		when others => 
			outA2(19 downto 0) <= X"00000";
	end case;
	end if;
	end process readA2;
	
readB2: process(InB2, reset)
	begin
	if (reset='1') then 
	 outB2(19 downto 0) <= X"00000";
	else
	case InB2 is 
		when "000" =>
			outB2(15 downto 0) <= reg(0);
			outB2(16) <= busy2(0);
			outB2(19 downto 17) <= tag2(0);
		when "001" =>
			outB2(15 downto 0) <= reg(1);
			outB2(16) <= busy2(1);
			outB2(19 downto 17) <= tag2(1);		
		when "010" =>
			outB2(15 downto 0) <= reg(2);
			outB2(16) <= busy2(2);
			outB2(19 downto 17) <= tag2(2);
		when "011" =>
			outB2(15 downto 0) <= reg(3);
			outB2(16) <= busy2(3);
			outB2(19 downto 17) <= tag2(3);
		when "100" =>
			outB2(15 downto 0) <= reg(4);
			outB2(16) <= busy2(4);
			outB2(19 downto 17) <= tag2(4);
		when "101" =>
			outB2(15 downto 0) <= reg(5);
			outB2(16) <= busy2(5);
			outB2(19 downto 17) <= tag2(5);
		when "110" =>
			outB2(15 downto 0) <= reg(6);
			outB2(16) <= busy2(6);
			outB2(19 downto 17) <= tag2(6);
		when others => 
			outB2(19 downto 0) <= X"00000";
	end case;
	end if;
end process readB2;
---------------------------------------------------

end behave;
