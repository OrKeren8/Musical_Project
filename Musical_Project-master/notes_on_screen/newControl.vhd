library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity newControl is
port(pixel_row,pixel_column : in std_logic_vector(9 downto 0);
	 tubesSum : in std_logic_vector (6 downto 0);
	 PlaceSum : in std_logic_vector (6 downto 0);
	lines    :in std_logic_vector(0 to 1023);
    do1      :in std_logic_vector(0 to 1023);
	do2      :in std_logic_vector(0 to 1023);
	do3      :in std_logic_vector(0 to 1023);
	do4      :in std_logic_vector(0 to 1023);
	do5      :in std_logic_vector(0 to 1023);
	re1      :in std_logic_vector(0 to 1023);
	re2      :in std_logic_vector(0 to 1023);
	re3      :in std_logic_vector(0 to 1023);
	re4      :in std_logic_vector(0 to 1023);
	re5      :in std_logic_vector(0 to 1023);
	mi1      :in std_logic_vector(0 to 1023);
	mi2      :in std_logic_vector(0 to 1023);
	mi3      :in std_logic_vector(0 to 1023);
	mi4      :in std_logic_vector(0 to 1023);
	mi5      :in std_logic_vector(0 to 1023);
	fa1      :in std_logic_vector(0 to 1023);
	fa2      :in std_logic_vector(0 to 1023);
	fa3      :in std_logic_vector(0 to 1023);
	fa4      :in std_logic_vector(0 to 1023);
	fa5	   	:in std_logic_vector(0 to 1023);
	sol1      :in std_logic_vector(0 to 1023);
	sol2      :in std_logic_vector(0 to 1023);
	sol3      :in std_logic_vector(0 to 1023);
	sol4      :in std_logic_vector(0 to 1023);
	sol5      :in std_logic_vector(0 to 1023);
	la1      :in std_logic_vector(0 to 1023);
	la2      :in std_logic_vector(0 to 1023);
	la3      :in std_logic_vector(0 to 1023);
	la4      :in std_logic_vector(0 to 1023);
	la5      :in std_logic_vector(0 to 1023);
	si1      :in std_logic_vector(0 to 1023);
	si2      :in std_logic_vector(0 to 1023);
	si3      :in std_logic_vector(0 to 1023);
	si4      :in std_logic_vector(0 to 1023);
	si5      :in std_logic_vector(0 to 1023);
	do1_1	 :in std_logic_vector(0 to 1023);
	do1_2	 :in std_logic_vector(0 to 1023);
	si1_1	 :in std_logic_vector(0 to 1023);
	si1_2	 :in std_logic_vector(0 to 1023);
	--sel		 :in std_logic_vector(0 to 1);
	shols	 :in std_logic_vector(0 to 1023);
	DO2_1    :in std_logic_vector(0 to 1023);
	DO2_2    :in std_logic_vector(0 to 1023);
	SI2_1    :in std_logic_vector(0 to 1023);
	SI2_2    :in std_logic_vector(0 to 1023);
	keySol   :in std_logic_vector(0 to 1023);
	
	
	----Kituv    :out std_logic;
	 Y      :out std_logic_vector(2 downto 0));
end entity;

architecture arch_newControl of newControl is

type matrix is array (255 downto 0) of std_logic_vector (6 downto 0);
signal music,keta0,keta1,keta2,keta3: matrix;
begin
process (pixel_row,pixel_column)
variable z: std_logic_vector (6 downto 0);
variable enable : std_logic;

begin

if pixel_row<64 then
	if pixel_column<16  and PlaceSum=X"00" then 
		enable:='1';
	elsif pixel_column>15 and pixel_column<32 and PlaceSum=X"01" then 
			enable:='1';
	elsif pixel_column>31 and pixel_column<48  and PlaceSum=X"02" then 
			enable:='1';
	elsif pixel_column>47 and pixel_column<64 and PlaceSum=X"03" then 
			enable:='1';
	elsif pixel_column>63 and pixel_column<80  and PlaceSum=X"04" then 
			enable:='1';
    elsif pixel_column>79 and pixel_column<96 and PlaceSum=X"05" then 
			enable:='1';
    elsif pixel_column>95 and pixel_column<112  and PlaceSum=X"06" then 
			enable:='1';
    elsif pixel_column>111 and pixel_column<128  and PlaceSum=X"07" then 
			enable:='1';
    elsif pixel_column>127 and pixel_column<144  and PlaceSum=X"08" then 
			enable:='1';
    elsif pixel_column>143 and pixel_column<160  and PlaceSum=X"09" then 
			enable:='1';
    elsif pixel_column>159 and pixel_column<176 and PlaceSum=X"A" then 
			enable:='1';
    elsif pixel_column>175 and pixel_column<192  and PlaceSum=X"B" then 
			enable:='1';
    elsif pixel_column>191 and pixel_column<208  and PlaceSum=X"C" then 
			enable:='1';
    elsif pixel_column>207 and pixel_column<224  and PlaceSum=X"D" then 
			enable:='1';
    elsif pixel_column>223 and pixel_column<240 and PlaceSum=X"E" then 
			enable:='1';
    elsif pixel_column>239 and pixel_column<256  and PlaceSum=X"F" then 
			enable:='1';
    elsif pixel_column>255 and pixel_column<272  and PlaceSum=X"10" then 
			enable:='1';
    elsif pixel_column>271 and pixel_column<288 and PlaceSum=X"11" then 
			enable:='1';
    elsif pixel_column>287 and pixel_column<304  and PlaceSum=X"12" then 
			enable:='1';
    elsif pixel_column>303 and pixel_column<320  and PlaceSum=X"13" then 
			enable:='1';
    elsif pixel_column>319 and pixel_column<336 and PlaceSum=X"14" then 
			enable:='1'; 
    elsif pixel_column>335 and pixel_column<352   and PlaceSum=X"15" then 
			enable:='1'; 
    elsif pixel_column>351 and pixel_column<368   and PlaceSum=X"16" then 
			enable:='1'; 
    elsif pixel_column>367 and pixel_column<384   and PlaceSum=X"17" then 
			enable:='1'; 
    elsif pixel_column>383 and pixel_column<400   and PlaceSum=X"18" then 
			enable:='1'; 
    elsif pixel_column>399 and pixel_column<416   and PlaceSum=X"19" then 
			enable:='1'; 
    elsif pixel_column>415 and pixel_column<432  and PlaceSum=X"1A" then 
			enable:='1'; 
    elsif pixel_column>431 and pixel_column<448  and PlaceSum=X"1B" then 
			enable:='1'; 
    elsif pixel_column>447 and pixel_column<464   and PlaceSum=X"1C" then 
			enable:='1'; 
    elsif pixel_column>463 and pixel_column<480   and PlaceSum=X"1D" then 
			enable:='1'; 
    elsif pixel_column>479 and pixel_column<496   and PlaceSum=X"1E" then 
			enable:='1'; 
    elsif pixel_column>495 and pixel_column<512   and PlaceSum=X"1F" then 
			enable:='1'; 
    elsif pixel_column>511 and pixel_column<528   and PlaceSum=X"20" then 
			enable:='1'; 
    elsif pixel_column>527 and pixel_column<544  and PlaceSum=X"21" then 
			enable:='1'; 
    elsif pixel_column>543 and pixel_column<560   and PlaceSum=X"22" then 
			enable:='1'; 
    elsif pixel_column>559 and pixel_column<576   and PlaceSum=X"23" then 
			enable:='1'; 
	 elsif pixel_column>575 and pixel_column<592   and PlaceSum=X"24" then 
			enable:='1'; 
	 elsif pixel_column>591 and pixel_column<608   and PlaceSum=X"25" then 
			enable:='1'; 
	 elsif pixel_column>607 and pixel_column<624   and PlaceSum=X"26" then 
			enable:='1'; 
	 elsif pixel_column>623 and pixel_column<640   and PlaceSum=X"27" then 
			enable:='1'; 


--	else y<="111"; 
	else enable:='0';

	end if;

--------------------------------------------------

elsif pixel_row>63 and pixel_row<128 then
		if pixel_column<16  and PlaceSum=X"40" then 
			enable:='1'; 
	elsif pixel_column>15 and pixel_column<32  and PlaceSum=X"28" then 
			enable:='1'; 
	elsif pixel_column>31 and pixel_column<48  and PlaceSum=X"29" then 
			enable:='1'; 
	elsif pixel_column>47 and pixel_column<64  and PlaceSum=X"2A" then 
			enable:='1'; 
	elsif pixel_column>63 and pixel_column<80  and PlaceSum=X"2B" then 
			enable:='1'; 
    elsif pixel_column>79 and pixel_column<96 and PlaceSum=X"2C" then 
			enable:='1'; 
    elsif pixel_column>95 and pixel_column<112  and PlaceSum=X"2D" then 
			enable:='1'; 
    elsif pixel_column>111 and pixel_column<128  and PlaceSum=X"2E" then 
			enable:='1'; 
    elsif pixel_column>127 and pixel_column<144  and PlaceSum=X"2F" then 
			enable:='1'; 
    elsif pixel_column>143 and pixel_column<160  and PlaceSum=X"30" then 
			enable:='1'; 
    elsif pixel_column>159 and pixel_column<176  and PlaceSum=X"31" then 
			enable:='1'; 
    elsif pixel_column>175 and pixel_column<192  and PlaceSum=X"32" then 
			enable:='1'; 
    elsif pixel_column>191 and pixel_column<208  and PlaceSum=X"33" then 
			enable:='1'; 
    elsif pixel_column>207 and pixel_column<224  and PlaceSum=X"34" then 
			enable:='1'; 
    elsif pixel_column>223 and pixel_column<240 and PlaceSum=X"35" then 
			enable:='1'; 
    elsif pixel_column>239 and pixel_column<256  and PlaceSum=X"36" then 
			enable:='1'; 
    elsif pixel_column>255 and pixel_column<272  and PlaceSum=X"37" then 
			enable:='1'; 
    elsif pixel_column>271 and pixel_column<288 and PlaceSum=X"38" then 
			enable:='1'; 
    elsif pixel_column>287 and pixel_column<304  and PlaceSum=X"39" then 
			enable:='1'; 
    elsif pixel_column>303 and pixel_column<320  and PlaceSum=X"3A" then 
			enable:='1'; 
    elsif pixel_column>319 and pixel_column<336 and PlaceSum=X"3B" then 
			enable:='1'; 
    elsif pixel_column>335 and pixel_column<352 and PlaceSum=X"3C" then 
			enable:='1'; 
    elsif pixel_column>351 and pixel_column<368  and PlaceSum=X"3D" then 
			enable:='1'; 
    elsif pixel_column>367 and pixel_column<384  and PlaceSum=X"3E" then 
			enable:='1'; 
    elsif pixel_column>383 and pixel_column<400  and PlaceSum=X"3F" then 
			enable:='1'; 
    elsif pixel_column>399 and pixel_column<416  and PlaceSum=X"40" then 
			enable:='1'; 
    elsif pixel_column>415 and pixel_column<432 and PlaceSum=X"41" then 
			enable:='1'; 
    elsif pixel_column>431 and pixel_column<448  and PlaceSum=X"42" then 
			enable:='1'; 
    elsif pixel_column>447 and pixel_column<464  and PlaceSum=X"43" then 
			enable:='1'; 
    elsif pixel_column>463 and pixel_column<480  and PlaceSum=X"44" then 
			enable:='1'; 
    elsif pixel_column>479 and pixel_column<496  and PlaceSum=X"45" then 
			enable:='1'; 
    elsif pixel_column>495 and pixel_column<512  and PlaceSum=X"46" then 
			enable:='1'; 
    elsif pixel_column>511 and pixel_column<528  and PlaceSum=X"47" then 
			enable:='1'; 
    elsif pixel_column>527 and pixel_column<544  and PlaceSum=X"48" then 
			enable:='1'; 
    elsif pixel_column>543 and pixel_column<560 and PlaceSum=X"49" then 
			enable:='1'; 
    elsif pixel_column>559 and pixel_column<576 and PlaceSum=X"4A" then 
			enable:='1'; 
	 elsif pixel_column>575 and pixel_column<592  and PlaceSum=X"4B" then 
			enable:='1'; 
	 elsif pixel_column>591 and pixel_column<608 and PlaceSum=X"4C" then 
			enable:='1'; 
	 elsif pixel_column>607 and pixel_column<624  and PlaceSum=X"4D" then 
			enable:='1'; 
	 elsif pixel_column>623 and pixel_column<640 and PlaceSum=X"4E" then 
			enable:='1'; 

    	else	enable:='0';   


--	else y<="111"else 

	end if;
end if;
--	
---------------------------------------------------------
--
--elsif pixel_row>127 and pixel_row<192 then
--  	if pixel_column<16  then
--		z:= music (80);  
--	elsif pixel_column>15 and pixel_column<32  then
--		z:= music (81);	
--	elsif pixel_column>31 and pixel_column<48  then
--		z:= music (82);	
--	elsif pixel_column>47 and pixel_column<64  then
--		z:= music (83);	
--	elsif pixel_column>63 and pixel_column<80  then
--		z:= music (84);
--    elsif pixel_column>79 and pixel_column<96  then
--		z:= music (85);
--    elsif pixel_column>95 and pixel_column<112  then
--		z:= music (86);
--    elsif pixel_column>111 and pixel_column<128  then
--		z:= music (87);
--    elsif pixel_column>127 and pixel_column<144  then
--		z:= music (88);
--    elsif pixel_column>143 and pixel_column<160  then
--		z:= music (89);
--    elsif pixel_column>159 and pixel_column<176  then
--		z:= music (90);
--    elsif pixel_column>175 and pixel_column<192  then
--		z:= music (91);
--    elsif pixel_column>191 and pixel_column<208  then
--		z:= music (92);
--    elsif pixel_column>207 and pixel_column<224  then
--		z:= music (93);
--    elsif pixel_column>223 and pixel_column<240 then
--		z:= music (94);
--    elsif pixel_column>239 and pixel_column<256  then
--		z:= music (95);
--    elsif pixel_column>255 and pixel_column<272  then
--		z:= music (96);
--    elsif pixel_column>271 and pixel_column<288  then
--		z:= music (97);
--    elsif pixel_column>287 and pixel_column<304  then
--		z:= music (98);
--    elsif pixel_column>303 and pixel_column<320  then
--		z:= music (99);
--    elsif pixel_column>319 and pixel_column<336  then
--		z:= music (100);
--    elsif pixel_column>335 and pixel_column<352  then
--		z:= music (101);
--    elsif pixel_column>351 and pixel_column<368  then
--		z:= music (102);
--    elsif pixel_column>367 and pixel_column<384  then
--		z:= music (103);
--    elsif pixel_column>383 and pixel_column<400  then
--		z:= music (104);
--    elsif pixel_column>399 and pixel_column<416  then
--		z:= music (105);
--    elsif pixel_column>415 and pixel_column<432 then
--		z:= music (106);
--    elsif pixel_column>431 and pixel_column<448  then
--		z:= music (107);
--    elsif pixel_column>447 and pixel_column<464  then
--		z:= music (108);
--    elsif pixel_column>463 and pixel_column<480  then
--		z:= music (109);
--    elsif pixel_column>479 and pixel_column<496  then
--		z:= music (110);
--    elsif pixel_column>495 and pixel_column<512  then
--		z:= music (111);
--    elsif pixel_column>511 and pixel_column<528  then
--		z:= music (112);
--    elsif pixel_column>527 and pixel_column<544  then
--		z:= music (113);
--    elsif pixel_column>543 and pixel_column<560  then
--		z:= music (114);
--    elsif pixel_column>559 and pixel_column<576  then
--		z:= music (115);
--	 elsif pixel_column>575 and pixel_column<592  then
--		z:= music (116);	
--	 elsif pixel_column>591 and pixel_column<608  then
--		z:= music (117);	
--	 elsif pixel_column>607 and pixel_column<624  then
--		z:= music (118);
--	 elsif pixel_column>623 and pixel_column<640  then
--		z:= music (119);	
--
--    
--
--	else y<="111";   
--
--	end if;
---------------------------------------------------
--
--elsif pixel_row>191 and pixel_row<256 then
--		if pixel_column<16  then
--		z:= music (120);
--	elsif pixel_column>15 and pixel_column<32  then
--		z:= music (121);	
--	elsif pixel_column>31 and pixel_column<48  then
--		z:= music (122);	
--	elsif pixel_column>47 and pixel_column<64  then
--		z:= music (123);	
--	elsif pixel_column>63 and pixel_column<80  then
--		z:= music (124);
--    elsif pixel_column>79 and pixel_column<96  then
--		z:= music (125);
--    elsif pixel_column>95 and pixel_column<112  then
--		z:= music (126);
--    elsif pixel_column>111 and pixel_column<128  then
--		z:= music (127);
--    elsif pixel_column>127 and pixel_column<144  then
--		z:= music (128);
--    elsif pixel_column>143 and pixel_column<160  then
--		z:= music (129);
--    elsif pixel_column>159 and pixel_column<176  then
--		z:= music (130);
--    elsif pixel_column>175 and pixel_column<192  then
--		z:= music (131);
--    elsif pixel_column>191 and pixel_column<208  then
--		z:= music (132);
--    elsif pixel_column>207 and pixel_column<224  then
--		z:= music (133);
--    elsif pixel_column>223 and pixel_column<240 then
--		z:= music (134);
--    elsif pixel_column>239 and pixel_column<256  then
--		z:= music (135);
--    elsif pixel_column>255 and pixel_column<272  then
--		z:= music (136);
--    elsif pixel_column>271 and pixel_column<288  then
--		z:= music (137);
--    elsif pixel_column>287 and pixel_column<304  then
--		z:= music (138);
--    elsif pixel_column>303 and pixel_column<320  then
--		z:= music (139);
--    elsif pixel_column>319 and pixel_column<336  then
--		z:= music (140);
--    elsif pixel_column>335 and pixel_column<352  then
--		z:= music (141);
--    elsif pixel_column>351 and pixel_column<368  then
--		z:= music (142);
--    elsif pixel_column>367 and pixel_column<384  then
--		z:= music (143);
--    elsif pixel_column>383 and pixel_column<400  then
--		z:= music (144);
--    elsif pixel_column>399 and pixel_column<416  then
--		z:= music (145);
--    elsif pixel_column>415 and pixel_column<432 then
--		z:= music (146);
--    elsif pixel_column>431 and pixel_column<448  then
--		z:= music (147);
--    elsif pixel_column>447 and pixel_column<464  then
--		z:= music (148);
--    elsif pixel_column>463 and pixel_column<480  then
--		z:= music (149);
--    elsif pixel_column>479 and pixel_column<496  then
--		z:= music (150);
--    elsif pixel_column>495 and pixel_column<512  then
--		z:= music (151);
--    elsif pixel_column>511 and pixel_column<528  then
--		z:= music (152);
--    elsif pixel_column>527 and pixel_column<544  then
--		z:= music (153);
--    elsif pixel_column>543 and pixel_column<560  then
--		z:= music (154);
--    elsif pixel_column>559 and pixel_column<576  then
--		z:= music (155);
--	 elsif pixel_column>575 and pixel_column<592  then
--		z:= music (156);	
--	 elsif pixel_column>591 and pixel_column<608  then
--		z:= music (157);	
--	 elsif pixel_column>607 and pixel_column<624  then
--		z:= music (158);
--	 elsif pixel_column>623 and pixel_column<640  then
--		z:= music (159);	
--
--    
--
--	else y<="111";   

	--end if;
----------------------------------------------------------
if enable='1' then
case tubesSum is

when "0001001"=>
	y<=not (do1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
	
when "0001010"=>
   y<=not (do2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0001011"=>
	y<=not (do3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0001100"=>
	y<=not (do4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0001101"=>
     y<=not (do5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));



when "0010001"=>
     y<=not (re1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& re1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & re1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0010010"=>
     y<=not (re2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& re2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & re2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0010011"=>
     y<=not (re3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& re3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & re3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0010100"=>
     y<=not (re4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& re4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & re4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0010101"=>
      y<=not (re5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& re5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & re5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));




when "0011001"=>
      y<=not (mi1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& mi1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & mi1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0011010"=>
      y<=not (mi2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& mi2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & mi2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0011011"=>
      y<=not (mi3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& mi3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & mi3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0011100"=>
      y<=not (mi4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& mi4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & mi4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0011101"=>
      y<=not (mi5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& mi5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & mi5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));




when "0100001"=>
      y<=not (fa1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& fa1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & fa1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0100010"=>
      y<=not (fa2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& fa2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & fa2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0100011"=>
      y<=not (fa3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& fa3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & fa3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0100100"=>
      y<=not (fa4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& fa4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & fa4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0100101"=>
      y<=not (fa5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& fa5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & fa5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));




when "0101001"=>
      y<=not (sol1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& sol1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & sol1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0101010"=>
      y<=not (sol2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& sol2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & sol2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0101011"=>
      y<=not (sol3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& sol3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & sol3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0101100"=>
      y<=not (sol4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& sol4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & sol4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0101101"=>
      y<=not (sol5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& sol5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & sol5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));




when "0110001"=>
      y<=not (la1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& la1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & la1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0110010"=>
      y<=not (la2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& la2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & la2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0110011"=>
      y<=not (la3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& la3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & la3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0110100"=>
      y<=not (la4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& la4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & la4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when "0110101"=>
      y<=not (la5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& la5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & la5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));




when "0111001"=>
      y<=not (si1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "0111010"=>
      y<=not (si2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
when  "0111011"=>
      y<=not (si3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si3(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
when  "0111100"=>
      y<=not (si4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si4(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
when  "0111101"=>
      y<=not (si5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si5(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1000001"=>
      y<=not (do1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1000010"=>
      y<=not (do1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& do1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & do1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1101001"=>
      y<=not (si1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si1_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1101010"=>
      y<=not (si1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& si1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & si1_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));



when  "0001110"=>
      y<=not (DO2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& DO2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & DO2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "0001111"=>
      y<=not (DO2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& DO2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & DO2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));


when  "1101110"=>
      y<=not (SI2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& SI2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & SI2_1(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1101111"=>
      y<=not (SI2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& SI2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & SI2_2(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));





when  "1111110"=>
      y<=not (keySol(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& keySol(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & keySol(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));

when  "1111111"=>
      y<=not (lines(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& lines(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & lines(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
when  "0000000"=>
      y<=not (shols(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0)))& shols(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))) & shols(conv_integer(pixel_row(5 downto 0))*16+conv_integer(pixel_column(3 downto 0))));
when others=>


end case;
	else y<="111";
end if;
end process;


end architecture;