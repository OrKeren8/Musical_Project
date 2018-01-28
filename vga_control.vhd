library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.notes.all;
use work.Melodies.all;

entity vga_control is
port(pixel_row,pixel_column : in std_logic_vector(9 downto 0);
	sel		:in std_logic_vector(0 to 2);
	letter   :out std_logic_vector(5 downto 0);
	 Y      :out std_logic_vector(2 downto 0));
end entity;

architecture arch_vga_control of vga_control is

type matrix is array (255 downto 0) of std_logic_vector (6 downto 0);
signal music,keta0,keta1,keta2,keta3,keta4,keta5,keta6,keta7: matrix;
begin
process (pixel_row,pixel_column)
variable z: std_logic_vector (6 downto 0);
variable bit1color :std_logic;

begin


if sel="000" then 
		music<=keta0;
	elsif sel="001" then 
		music<=keta1;
	elsif sel="010" then 
		music<=keta2;
	elsif sel="011" then 
		music<=keta3;
		elsif sel="100" then 
		music<=keta4;
	elsif sel="101" then 
		music<=keta5;
	elsif sel="110" then 
		music<=keta6;
		elsif sel="111" then 
		music<=keta7;
end if;


--print notes on screen control by row and column:

for r in 0 to 4 loop			--r=row, there are 5 rows.
	for c in 0 to 39 loop	--c=column, there are 40 columns.
		if pixel_row >= (64*r) and pixel_row < (64*(r+1)) then 				--check row
			if pixel_column >= (16*c) and pixel_column < (16*(c+1)) then	--check column
				z:= music (r*40+c); 	--print music of current row and column
			else 
				y<="111";
			end if;
		end if;	
	end loop;
end loop;

--end of print notes on screen control

bit1color := not (notesALL(   conv_integer(z)    )(conv_integer(pixel_row(5 downto 0))*16 + conv_integer(pixel_column(3 downto 0))));	
	y <= (bit1color & bit1color & bit1color);

end process;

------------------------------------------More Song-------------------------------------------------------------------------




-----------------------  Tafrit (Save+Open) ---------------------
--
------1.open
--letter<= conv_std_logic_vector(49,6) 
--			when pixel_row>=64 and pixel_row<=79 and
--				 pixel_column>=32 and pixel_column<=47 else
--         conv_std_logic_vector(46,6)
--			when pixel_row>=64 and pixel_row<=79 and
--                 pixel_column>=48 and pixel_column<=63 else
--         conv_std_logic_vector(15,6)
--			when pixel_row>=64 and pixel_row<=79 and
--                 pixel_column>=64 and pixel_column<=79 else
--		 conv_std_logic_vector(16,6)
--			when pixel_row>=64 and pixel_row<=79 and
--                 pixel_column>=80 and pixel_column=<95 else
--		 conv_std_logic_vector(5,6) 
--			when pixel_row>=64 and pixel_row<=79 and
--				 pixel_column>=96 and pixel_column<=111 else
--         conv_std_logic_vector(14,6)
--			when pixel_row>=64 and pixel_row<=79 and
--                 pixel_column>=112 and pixel_column<=127 else
--------2.save
--		conv_std_logic_vector(50,6) 
--			when pixel_row>=96 and pixel_row<=111 and
--				 pixel_column>=32 and pixel_column<=47 else
--         conv_std_logic_vector(46,6)
--			when pixel_row>=96 and pixel_row<=111 and
--                 pixel_column>=48 and pixel_column<=63 else
--         conv_std_logic_vector(19,6)
--			when pixel_row>=96 and pixel_row<=111 and
--                 pixel_column>=64 and pixel_column<=79 else
--		 conv_std_logic_vector(1,6)
--			when pixel_row>=96 and pixel_row<=111 and
--                 pixel_column>=80 and pixel_column<=95 else
--		 conv_std_logic_vector(22,6) 
--			when pixel_row>=96 and pixel_row<=111 and
--				 pixel_column>=96 and pixel_column<=111 else
--         conv_std_logic_vector(5,6)
--			when pixel_row>=96 and pixel_row<=111 and
--                 pixel_column>=112 and pixel_column<=127 else
--          "100000";

 ------------- Tafrit Music ( Litttle Yonatan .....)------

----1.Little Yonatan


letter<= conv_std_logic_vector(49,6) 
			when pixel_row>=64 and pixel_row<=79 and
				 pixel_column>=32 and pixel_column<=47 else
         conv_std_logic_vector(46,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=48 and pixel_column<=63 else
         conv_std_logic_vector(12,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=64 and pixel_column<=79 else
		 conv_std_logic_vector(9,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=80 and pixel_column<=95 else
		 conv_std_logic_vector(20,6) 
			when pixel_row>=64 and pixel_row<=79 and
				 pixel_column>=96 and pixel_column<=111 else
         conv_std_logic_vector(20,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=112 and pixel_column<=127 else
         conv_std_logic_vector(12,6) 
			when pixel_row>=64 and pixel_row<=79 and
				 pixel_column>=128 and pixel_column<=143 else
         conv_std_logic_vector(5,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=144 and pixel_column<=159 else

         conv_std_logic_vector(32,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=176 and pixel_column<=191 else


         conv_std_logic_vector(25,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=192 and pixel_column<=207 else
		 conv_std_logic_vector(15,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=208 and pixel_column<=223 else
		 conv_std_logic_vector(14,6) 
			when pixel_row>=64 and pixel_row<=79 and
				 pixel_column>=224 and pixel_column<=239 else
         conv_std_logic_vector(1,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=240 and pixel_column<=255 else
         conv_std_logic_vector(20,6) 
			when pixel_row>=64 and pixel_row<=79 and
				 pixel_column>=256 and pixel_column<=271 else
         conv_std_logic_vector(1,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>=272 and pixel_column<=287 else
		 conv_std_logic_vector(14,6)
			when pixel_row>=64 and pixel_row<=79 and
                 pixel_column>288 and pixel_column<303 else


----2.uncel's Moshe farm
        conv_std_logic_vector(50,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=32 and pixel_column<=47 else
         conv_std_logic_vector(46,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=48 and pixel_column<=63 else
         conv_std_logic_vector(21,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=64 and pixel_column<=79 else
		 conv_std_logic_vector(14,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=80 and pixel_column<=95 else
		 conv_std_logic_vector(3,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=96 and pixel_column<=111 else
         conv_std_logic_vector(5,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=112 and pixel_column<=127 else
         conv_std_logic_vector(12,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=128 and pixel_column<=143 else
         conv_std_logic_vector(39,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=144 and pixel_column<=159 else
         conv_std_logic_vector(19,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=160 and pixel_column<=175 else

		 conv_std_logic_vector(32,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=176 and pixel_column<=191 else


		 conv_std_logic_vector(13,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=192 and pixel_column<=207 else
         conv_std_logic_vector(15,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=208 and pixel_column<=223 else
         conv_std_logic_vector(19,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=224 and pixel_column<=239 else
         conv_std_logic_vector(8,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>240 and pixel_column<255 else

		   conv_std_logic_vector(32,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=256 and pixel_column<=271 else


		 conv_std_logic_vector(6,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=272 and pixel_column<=287 else
		 conv_std_logic_vector(1,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=288 and pixel_column<=303 else
         conv_std_logic_vector(18,6)
			when pixel_row>=96 and pixel_row<=111 and
                 pixel_column>=304 and pixel_column<=319 else
         conv_std_logic_vector(13,6) 
			when pixel_row>=96 and pixel_row<=111 and
				 pixel_column>=320 and pixel_column<=335 else

			"100000";



end architecture;