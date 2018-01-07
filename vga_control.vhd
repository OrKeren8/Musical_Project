library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.notes.all;

entity vga_control is
port(pixel_row,pixel_column : in std_logic_vector(9 downto 0);
	lines    :in std_logic_vector(0 to 1023);
   --do1      :in std_logic_vector(0 to 1023);
	--do2      :in std_logic_vector(0 to 1023);
	--do3      :in std_logic_vector(0 to 1023);
	--do4      :in std_logic_vector(0 to 1023);
	--do5      :in std_logic_vector(0 to 1023);
	--re1      :in std_logic_vector(0 to 1023);
	--re2      :in std_logic_vector(0 to 1023);
	--re3      :in std_logic_vector(0 to 1023);
	--re4      :in std_logic_vector(0 to 1023);
	--re5      :in std_logic_vector(0 to 1023);
	--mi1      :in std_logic_vector(0 to 1023);
	--mi2      :in std_logic_vector(0 to 1023);
	--mi3      :in std_logic_vector(0 to 1023);
	--mi4      :in std_logic_vector(0 to 1023);
	--mi5      :in std_logic_vector(0 to 1023);
	--fa1      :in std_logic_vector(0 to 1023);
	--fa2      :in std_logic_vector(0 to 1023);
	--fa3      :in std_logic_vector(0 to 1023);
	--fa4      :in std_logic_vector(0 to 1023);
	--fa5	   :in std_logic_vector(0 to 1023);
	--sol1     :in std_logic_vector(0 to 1023);
	--sol2     :in std_logic_vector(0 to 1023);
	--sol3     :in std_logic_vector(0 to 1023);
	--sol4     :in std_logic_vector(0 to 1023);
	--sol5     :in std_logic_vector(0 to 1023);
	--la1      :in std_logic_vector(0 to 1023);
	--la2      :in std_logic_vector(0 to 1023);
	--la3      :in std_logic_vector(0 to 1023);
	--la4      :in std_logic_vector(0 to 1023);
	--la5      :in std_logic_vector(0 to 1023);
	--si1      :in std_logic_vector(0 to 1023);
	--si2      :in std_logic_vector(0 to 1023);
	--si3      :in std_logic_vector(0 to 1023);
	--si4      :in std_logic_vector(0 to 1023);
	--si5      :in std_logic_vector(0 to 1023);
	do1_1	 	:in std_logic_vector(0 to 1023);
	do1_2		:in std_logic_vector(0 to 1023);
	si1_1		:in std_logic_vector(0 to 1023);
	si1_2		:in std_logic_vector(0 to 1023);
	sel		:in std_logic_vector(0 to 2);
	shols	 	:in std_logic_vector(0 to 1023);
	DO2_1    :in std_logic_vector(0 to 1023);
	DO2_2    :in std_logic_vector(0 to 1023);
	SI2_1    :in std_logic_vector(0 to 1023);
	SI2_2    :in std_logic_vector(0 to 1023);
	keySol   :in std_logic_vector(0 to 1023);
	letter   :out std_logic_vector(5 downto 0);
	
	----Kituv    :out std_logic;
	 Y      :out std_logic_vector(2 downto 0));
end entity;

architecture arch_vga_control of vga_control is

type matrix is array (255 downto 0) of std_logic_vector (6 downto 0);
signal music,keta0,keta1,keta2,keta3,keta4,keta5,keta6,keta7: matrix;
begin
process (pixel_row,pixel_column)
variable z: std_logic_vector (6 downto 0);

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

if pixel_row<64 then
	if pixel_column<16  then
		z:= music (0);
	elsif pixel_column>15 and pixel_column<32  then
		z:= music (1);	
	elsif pixel_column>31 and pixel_column<48  then
		z:= music (2);	
	elsif pixel_column>47 and pixel_column<64  then
		z:= music (3);	
	elsif pixel_column>63 and pixel_column<80  then
		z:= music (4);
    elsif pixel_column>79 and pixel_column<96  then
		z:= music (5);
    elsif pixel_column>95 and pixel_column<112  then
		z:= music (6);
    elsif pixel_column>111 and pixel_column<128  then
		z:= music (7);
    elsif pixel_column>127 and pixel_column<144  then
		z:= music (8);
    elsif pixel_column>143 and pixel_column<160  then
		z:= music (9);
    elsif pixel_column>159 and pixel_column<176  then
		z:= music (10);
    elsif pixel_column>175 and pixel_column<192  then
		z:= music (11);
    elsif pixel_column>191 and pixel_column<208  then
		z:= music (12);
    elsif pixel_column>207 and pixel_column<224  then
		z:= music (13);
    elsif pixel_column>223 and pixel_column<240 then
		z:= music (14);
    elsif pixel_column>239 and pixel_column<256  then
		z:= music (15);
    elsif pixel_column>255 and pixel_column<272  then
		z:= music (16);
    elsif pixel_column>271 and pixel_column<288  then
		z:= music (17);
    elsif pixel_column>287 and pixel_column<304  then
		z:= music (18);
    elsif pixel_column>303 and pixel_column<320  then
		z:= music (19);
    elsif pixel_column>319 and pixel_column<336  then
		z:= music (20);
    elsif pixel_column>335 and pixel_column<352  then
		z:= music (21);
    elsif pixel_column>351 and pixel_column<368  then
		z:= music (22);
    elsif pixel_column>367 and pixel_column<384  then
		z:= music (23);
    elsif pixel_column>383 and pixel_column<400  then
		z:= music (24);
    elsif pixel_column>399 and pixel_column<416  then
		z:= music (25);
    elsif pixel_column>415 and pixel_column<432 then
		z:= music (26);
    elsif pixel_column>431 and pixel_column<448  then
		z:= music (27);
    elsif pixel_column>447 and pixel_column<464  then
		z:= music (28);
    elsif pixel_column>463 and pixel_column<480  then
		z:= music (29);
    elsif pixel_column>479 and pixel_column<496  then
		z:= music (30);
    elsif pixel_column>495 and pixel_column<512  then
		z:= music (31);
    elsif pixel_column>511 and pixel_column<528  then
		z:= music (32);
    elsif pixel_column>527 and pixel_column<544  then
		z:= music (33);
    elsif pixel_column>543 and pixel_column<560  then
		z:= music (34);
    elsif pixel_column>559 and pixel_column<576  then
		z:= music (35);
	 elsif pixel_column>575 and pixel_column<592  then
		z:= music (36);	
	 elsif pixel_column>591 and pixel_column<608  then
		z:= music (37);	
	 elsif pixel_column>607 and pixel_column<624  then
		z:= music (38);
	 elsif pixel_column>623 and pixel_column<640  then
		z:= music (39);	


	else y<="111";   

	end if;

--------------------------------------------------

elsif pixel_row>63 and pixel_row<128 then
		if pixel_column<16  then
		z:= music (40);
	elsif pixel_column>15 and pixel_column<32  then
		z:= music (41);	
	elsif pixel_column>31 and pixel_column<48  then
		z:= music (42);	
	elsif pixel_column>47 and pixel_column<64  then
		z:= music (43);	
	elsif pixel_column>63 and pixel_column<80  then
		z:= music (44);
    elsif pixel_column>79 and pixel_column<96  then
		z:= music (45);
    elsif pixel_column>95 and pixel_column<112  then
		z:= music (46);
    elsif pixel_column>111 and pixel_column<128  then
		z:= music (47);
    elsif pixel_column>127 and pixel_column<144  then
		z:= music (48);
    elsif pixel_column>143 and pixel_column<160  then
		z:= music (49);
    elsif pixel_column>159 and pixel_column<176  then
		z:= music (50);
    elsif pixel_column>175 and pixel_column<192  then
		z:= music (51);
    elsif pixel_column>191 and pixel_column<208  then
		z:= music (52);
    elsif pixel_column>207 and pixel_column<224  then
		z:= music (53);
    elsif pixel_column>223 and pixel_column<240 then
		z:= music (54);
    elsif pixel_column>239 and pixel_column<256  then
		z:= music (55);
    elsif pixel_column>255 and pixel_column<272  then
		z:= music (56);
    elsif pixel_column>271 and pixel_column<288  then
		z:= music (57);
    elsif pixel_column>287 and pixel_column<304  then
		z:= music (58);
    elsif pixel_column>303 and pixel_column<320  then
		z:= music (59);
    elsif pixel_column>319 and pixel_column<336  then
		z:= music (60);
    elsif pixel_column>335 and pixel_column<352  then
		z:= music (61);
    elsif pixel_column>351 and pixel_column<368  then
		z:= music (62);
    elsif pixel_column>367 and pixel_column<384  then
		z:= music (63);
    elsif pixel_column>383 and pixel_column<400  then
		z:= music (64);
    elsif pixel_column>399 and pixel_column<416  then
		z:= music (65);
    elsif pixel_column>415 and pixel_column<432 then
		z:= music (66);
    elsif pixel_column>431 and pixel_column<448  then
		z:= music (67);
    elsif pixel_column>447 and pixel_column<464  then
		z:= music (68);
    elsif pixel_column>463 and pixel_column<480  then
		z:= music (69);
    elsif pixel_column>479 and pixel_column<496  then
		z:= music (70);
    elsif pixel_column>495 and pixel_column<512  then
		z:= music (71);
    elsif pixel_column>511 and pixel_column<528  then
		z:= music (72);
    elsif pixel_column>527 and pixel_column<544  then
		z:= music (73);
    elsif pixel_column>543 and pixel_column<560  then
		z:= music (74);
    elsif pixel_column>559 and pixel_column<576  then
		z:= music (75);
	 elsif pixel_column>575 and pixel_column<592  then
		z:= music (76);	
	 elsif pixel_column>591 and pixel_column<608  then
		z:= music (77);	
	 elsif pixel_column>607 and pixel_column<624  then
		z:= music (78);
	 elsif pixel_column>623 and pixel_column<640  then
		z:= music (79);	

    

	else y<="111";   

	end if;
	
-------------------------------------------------------

elsif pixel_row>127 and pixel_row<192 then
  	if pixel_column<16  then
		z:= music (80);
	elsif pixel_column>15 and pixel_column<32  then
		z:= music (81);	
	elsif pixel_column>31 and pixel_column<48  then
		z:= music (82);	
	elsif pixel_column>47 and pixel_column<64  then
		z:= music (83);	
	elsif pixel_column>63 and pixel_column<80  then
		z:= music (84);
    elsif pixel_column>79 and pixel_column<96  then
		z:= music (85);
    elsif pixel_column>95 and pixel_column<112  then
		z:= music (86);
    elsif pixel_column>111 and pixel_column<128  then
		z:= music (87);
    elsif pixel_column>127 and pixel_column<144  then
		z:= music (88);
    elsif pixel_column>143 and pixel_column<160  then
		z:= music (89);
    elsif pixel_column>159 and pixel_column<176  then
		z:= music (90);
    elsif pixel_column>175 and pixel_column<192  then
		z:= music (91);
    elsif pixel_column>191 and pixel_column<208  then
		z:= music (92);
    elsif pixel_column>207 and pixel_column<224  then
		z:= music (93);
    elsif pixel_column>223 and pixel_column<240 then
		z:= music (94);
    elsif pixel_column>239 and pixel_column<256  then
		z:= music (95);
    elsif pixel_column>255 and pixel_column<272  then
		z:= music (96);
    elsif pixel_column>271 and pixel_column<288  then
		z:= music (97);
    elsif pixel_column>287 and pixel_column<304  then
		z:= music (98);
    elsif pixel_column>303 and pixel_column<320  then
		z:= music (99);
    elsif pixel_column>319 and pixel_column<336  then
		z:= music (100);
    elsif pixel_column>335 and pixel_column<352  then
		z:= music (101);
    elsif pixel_column>351 and pixel_column<368  then
		z:= music (102);
    elsif pixel_column>367 and pixel_column<384  then
		z:= music (103);
    elsif pixel_column>383 and pixel_column<400  then
		z:= music (104);
    elsif pixel_column>399 and pixel_column<416  then
		z:= music (105);
    elsif pixel_column>415 and pixel_column<432 then
		z:= music (106);
    elsif pixel_column>431 and pixel_column<448  then
		z:= music (107);
    elsif pixel_column>447 and pixel_column<464  then
		z:= music (108);
    elsif pixel_column>463 and pixel_column<480  then
		z:= music (109);
    elsif pixel_column>479 and pixel_column<496  then
		z:= music (110);
    elsif pixel_column>495 and pixel_column<512  then
		z:= music (111);
    elsif pixel_column>511 and pixel_column<528  then
		z:= music (112);
    elsif pixel_column>527 and pixel_column<544  then
		z:= music (113);
    elsif pixel_column>543 and pixel_column<560  then
		z:= music (114);
    elsif pixel_column>559 and pixel_column<576  then
		z:= music (115);
	 elsif pixel_column>575 and pixel_column<592  then
		z:= music (116);	
	 elsif pixel_column>591 and pixel_column<608  then
		z:= music (117);	
	 elsif pixel_column>607 and pixel_column<624  then
		z:= music (118);
	 elsif pixel_column>623 and pixel_column<640  then
		z:= music (119);	

    

	else y<="111";   

	end if;
-------------------------------------------------

elsif pixel_row>191 and pixel_row<256 then
		if pixel_column<16  then
		z:= music (120);
	elsif pixel_column>15 and pixel_column<32  then
		z:= music (121);	
	elsif pixel_column>31 and pixel_column<48  then
		z:= music (122);	
	elsif pixel_column>47 and pixel_column<64  then
		z:= music (123);	
	elsif pixel_column>63 and pixel_column<80  then
		z:= music (124);
    elsif pixel_column>79 and pixel_column<96  then
		z:= music (125);
    elsif pixel_column>95 and pixel_column<112  then
		z:= music (126);
    elsif pixel_column>111 and pixel_column<128  then
		z:= music (127);
    elsif pixel_column>127 and pixel_column<144  then
		z:= music (128);
    elsif pixel_column>143 and pixel_column<160  then
		z:= music (129);
    elsif pixel_column>159 and pixel_column<176  then
		z:= music (130);
    elsif pixel_column>175 and pixel_column<192  then
		z:= music (131);
    elsif pixel_column>191 and pixel_column<208  then
		z:= music (132);
    elsif pixel_column>207 and pixel_column<224  then
		z:= music (133);
    elsif pixel_column>223 and pixel_column<240 then
		z:= music (134);
    elsif pixel_column>239 and pixel_column<256  then
		z:= music (135);
    elsif pixel_column>255 and pixel_column<272  then
		z:= music (136);
    elsif pixel_column>271 and pixel_column<288  then
		z:= music (137);
    elsif pixel_column>287 and pixel_column<304  then
		z:= music (138);
    elsif pixel_column>303 and pixel_column<320  then
		z:= music (139);
    elsif pixel_column>319 and pixel_column<336  then
		z:= music (140);
    elsif pixel_column>335 and pixel_column<352  then
		z:= music (141);
    elsif pixel_column>351 and pixel_column<368  then
		z:= music (142);
    elsif pixel_column>367 and pixel_column<384  then
		z:= music (143);
    elsif pixel_column>383 and pixel_column<400  then
		z:= music (144);
    elsif pixel_column>399 and pixel_column<416  then
		z:= music (145);
    elsif pixel_column>415 and pixel_column<432 then
		z:= music (146);
    elsif pixel_column>431 and pixel_column<448  then
		z:= music (147);
    elsif pixel_column>447 and pixel_column<464  then
		z:= music (148);
    elsif pixel_column>463 and pixel_column<480  then
		z:= music (149);
    elsif pixel_column>479 and pixel_column<496  then
		z:= music (150);
    elsif pixel_column>495 and pixel_column<512  then
		z:= music (151);
    elsif pixel_column>511 and pixel_column<528  then
		z:= music (152);
    elsif pixel_column>527 and pixel_column<544  then
		z:= music (153);
    elsif pixel_column>543 and pixel_column<560  then
		z:= music (154);
    elsif pixel_column>559 and pixel_column<576  then
		z:= music (155);
	 elsif pixel_column>575 and pixel_column<592  then
		z:= music (156);	
	 elsif pixel_column>591 and pixel_column<608  then
		z:= music (157);	
	 elsif pixel_column>607 and pixel_column<624  then
		z:= music (158);
	 elsif pixel_column>623 and pixel_column<640  then
		z:= music (159);	

    

	else y<="111";   

	end if;
	elsif pixel_row>256 and pixel_row<312 then
		if pixel_column<16  then
		z:= music (160);
	elsif pixel_column>15 and pixel_column<32  then
		z:= music (161);	
	elsif pixel_column>31 and pixel_column<48  then
		z:= music (162);	
	elsif pixel_column>47 and pixel_column<64  then
		z:= music (163);	
	elsif pixel_column>63 and pixel_column<80  then
		z:= music (164);
    elsif pixel_column>79 and pixel_column<96  then
		z:= music (165);
    elsif pixel_column>95 and pixel_column<112  then
		z:= music (166);
    elsif pixel_column>111 and pixel_column<128  then
		z:= music (167);
    elsif pixel_column>127 and pixel_column<144  then
		z:= music (168);
    elsif pixel_column>143 and pixel_column<160  then
		z:= music (169);
    elsif pixel_column>159 and pixel_column<176  then
		z:= music (170);
    elsif pixel_column>175 and pixel_column<192  then
		z:= music (171);
    elsif pixel_column>191 and pixel_column<208  then
		z:= music (172);
    elsif pixel_column>207 and pixel_column<224  then
		z:= music (173);
    elsif pixel_column>223 and pixel_column<240 then
		z:= music (174);
    elsif pixel_column>239 and pixel_column<256  then
		z:= music (175);
    elsif pixel_column>255 and pixel_column<272  then
		z:= music (176);
    elsif pixel_column>271 and pixel_column<288  then
		z:= music (177);
    elsif pixel_column>287 and pixel_column<304  then
		z:= music (178);
    elsif pixel_column>303 and pixel_column<320  then
		z:= music (179);
    elsif pixel_column>319 and pixel_column<336  then
		z:= music (180);
    elsif pixel_column>335 and pixel_column<352  then
		z:= music (181);
    elsif pixel_column>351 and pixel_column<368  then
		z:= music (182);
    elsif pixel_column>367 and pixel_column<384  then
		z:= music (183);
    elsif pixel_column>383 and pixel_column<400  then
		z:= music (184);
    elsif pixel_column>399 and pixel_column<416  then
		z:= music (185);
    elsif pixel_column>415 and pixel_column<432 then
		z:= music (186);
    elsif pixel_column>431 and pixel_column<448  then
		z:= music (187);
    elsif pixel_column>447 and pixel_column<464  then
		z:= music (188);
    elsif pixel_column>463 and pixel_column<480  then
		z:= music (189);
    elsif pixel_column>479 and pixel_column<496  then
		z:= music (190);
    elsif pixel_column>495 and pixel_column<512  then
		z:= music (191);
    elsif pixel_column>511 and pixel_column<528  then
		z:= music (192);
    elsif pixel_column>527 and pixel_column<544  then
		z:= music (193);
    elsif pixel_column>543 and pixel_column<560  then
		z:= music (194);
    elsif pixel_column>559 and pixel_column<576  then
		z:= music (195);
	 elsif pixel_column>575 and pixel_column<592  then
		z:= music (196);	
	 elsif pixel_column>591 and pixel_column<608  then
		z:= music (197);	
	 elsif pixel_column>607 and pixel_column<624  then
		z:= music (198);
	 elsif pixel_column>623 and pixel_column<640  then
		z:= music (199);	

    

	else y<="111";   

	end if;
	end if;
----------------------------------------------------------

case z is

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

end process;


-------Little Yonatan----------


	keta0(7)<="1111111";
	keta0(8)<="1111110";
	keta0(9)<="1111111";

	keta0(10)<="0110001";
	keta0(11)<="0011001";
	keta0(12)<="0011010";
	keta0(13)<="1111111";

	keta0(14)<="0100001";
	keta0(15)<="0010001";
	keta0(16)<="0010010";
	keta0(17)<="1111111";

	keta0(18)<="0001001";
	keta0(19)<="0010001";
	keta0(20)<="0011001";
	keta0(21)<="0100001";
	keta0(22)<="0101001";
	keta0(23)<="0101001";
	keta0(24)<="0101010";
	keta0(25)<="1111111";

	keta0(26)<="0110001";
	keta0(27)<="0011001";
	keta0(28)<="0011010";

	keta0(29)<="1111111";
	keta0(30)<="1111111";
	keta0(31)<="1111111";
	keta0(32)<="1111111";
--	keta0(33)<="1111111";
--	keta0(34)<="1111111";
--
--	keta0(35)<="1111111";
--	keta0(36)<="1111111";
--	keta0(30)<="1111111";
--	keta0(31)<="1111111";
--	keta0(32)<="1111111";
--	keta0(33)<="1111111";
--	keta0(34)<="1111111";
--	keta0(35)<="1111111";
--	keta0(36)<="1111111";
--
--	keta0(37)<="0000000";
--	keta0(38)<="0000000";
--	keta0(39)<="0000000";

	----????2--
	keta0(47)<="1111111";
	keta0(48)<="1111110";
	keta0(49)<="1111111";

	keta0(50)<="0100001";
	keta0(51)<="0010001";
	keta0(52)<="0010010";
	keta0(53)<="1111111";

	keta0(54)<="0001001";
	keta0(55)<="0011001";
	keta0(56)<="0101001";
	keta0(57)<="0101001";
	keta0(58)<="0001101";
	keta0(59)<="1111111";
	keta0(60)<="1111111";
	keta0(61)<="1111111";

	keta0(62)<="0010001";
	keta0(63)<="0010001";
	keta0(64)<="0010001";
	keta0(65)<="0010001";
	keta0(66)<="0010001";
	keta0(67)<="0011001";
	keta0(68)<="0100010";

	keta0(69)<="1111111";
	keta0(70)<="1111111";
	keta0(71)<="1111111";
	keta0(72)<="1111111";
--	keta0(73)<="1111111";
--	keta0(73)<="1111111";
--
--	keta0(74)<="1111111";
--	keta0(75)<="1111111";
--	keta0(70)<="1111111";
--	keta0(71)<="1111111";
--	keta0(72)<="1111111";
--	keta0(73)<="1111111";
--	keta0(74)<="1111111";
--	keta0(75)<="1111111";
--	keta0(76)<="1111111";
--
--	keta0(77)<="0000000";
--	keta0(78)<="0000000";
--	keta0(79)<="0000000";

	--????3------

	keta0(87)<="1111111";
	keta0(88)<="1111110";
	keta0(89)<="1111111";

	keta0(90)<="0011001";
	keta0(91)<="0011001";
	keta0(92)<="0011001";
	keta0(93)<="0011001";
	keta0(94)<="0011001";
	keta0(95)<="0100001";
	keta0(96)<="0101010";
	keta0(97)<="1111111";

	keta0(98)<="0110001";
	keta0(99)<="0011001";
	keta0(100)<="0011010";
	keta0(101)<="1111111";

	keta0(102)<="0100001";
	keta0(103)<="0010001";
	keta0(104)<="0010010";
	keta0(105)<="1111111";

	keta0(106)<="0001001";
	keta0(107)<="0011001";
	keta0(108)<="0101001";
	keta0(109)<="0101001";
	keta0(110)<="0001101";

	keta0(111)<="1111111";
	keta0(112)<="1111111";
--	keta0(106)<="1111111";
--	keta0(107)<="1111111";
--
--	keta0(108)<="1111111";
--	keta0(109)<="1111111";
--	keta0(110)<="1111111";
--	keta0(111)<="1111111";
--	keta0(112)<="1111111";
--	keta0(113)<="1111111";
--	keta0(114)<="1111111";
--	keta0(115)<="1111111";
--	keta0(116)<="1111111";
--	keta0(117)<="0000000";
--	keta0(118)<="0000000";
--	keta0(119)<="0000000";


-----"Uncle's Moshe farm"---

	
	keta1(9)<="1111111";
	keta1(10)<="1111110";
	keta1(11)<="1111111";

	keta1(12)<="0010001";
	keta1(13)<="0101001";
	keta1(14)<="0101001";
	keta1(15)<="0101001";

	keta1(16)<="0010001";
	keta1(17)<="0011001";
	keta1(18)<="0011001";
	keta1(19)<="0010010";

	keta1(20)<="1111111";
	keta1(21)<="1101001";
	keta1(22)<="1101001";
	keta1(23)<="0110001";
	keta1(24)<="0110001";
	keta1(25)<="0101010";
	keta1(26)<="1111111";
	keta1(27)<="0010001";
	keta1(28)<="1111111";
	keta1(29)<="1111111";
	keta1(30)<="1111111";
--	keta1(22)<="1111111";
--
--	keta1(23)<="1111111";
--	keta1(24)<="1111111";
--	keta1(25)<="1111111";
--	keta1(26)<="1111111";
--	keta1(27)<="1111111";
--	keta1(28)<="1111111";
--	keta1(29)<="1111111";
--	keta1(30)<="1111111";
--	keta1(31)<="1111111";
--	keta1(32)<="1111111";
--	keta1(33)<="1111111";
--	keta1(34)<="1111111";
--	keta1(35)<="1111111";
--	keta1(36)<="1111111";
--
--	keta1(37)<="0000000";
--	keta1(38)<="0000000";
--	keta1(39)<="0000000";

	 ---???2--

	keta1(49)<="1111111";
	keta1(50)<="1111110";
	keta1(51)<="1111111";

	keta1(52)<="1111111";
	keta1(53)<="0101001";
	keta1(54)<="0101001";
	keta1(55)<="0101001";

	keta1(56)<="0010001";
	keta1(57)<="0011001";
	keta1(58)<="0011001";
	keta1(59)<="0010010";

	keta1(60)<="1111111";
	keta1(61)<="1101001";
	keta1(62)<="1101001";
	keta1(63)<="0110001";
	keta1(64)<="0110001";
	keta1(65)<="0101010";
	keta1(66)<="1111111";
	keta1(67)<="0010001";
	keta1(68)<="1111111";
	keta1(69)<="1111111";
	keta1(70)<="1111111";
--	keta1(62)<="1111111";
--
--	keta1(63)<="1111111";
--	keta1(64)<="1111111";
--	keta1(65)<="1111111";
--	keta1(66)<="1111111";
--	keta1(67)<="1111111";
--	keta1(68)<="1111111";
--	keta1(69)<="1111111";
--	keta1(70)<="1111111";
--	keta1(71)<="1111111";
--	keta1(72)<="1111111";
--	keta1(73)<="1111111";
--	keta1(74)<="1111111";
--	keta1(75)<="1111111";
--	keta1(76)<="1111111";
--
--	keta1(77)<="0000000";
--	keta1(78)<="0000000";
--	keta1(79)<="0000000";

	----????--

	keta1(89)<="1111111";
	keta1(90)<="1111110";
	keta1(91)<="1111111";

	keta1(92)<="1111111";
	keta1(93)<="0101001";
	keta1(94)<="0101001";
	keta1(95)<="0101001";
	keta1(96)<="0010001";

	keta1(97)<="0101001";
	keta1(98)<="0101001";
	keta1(99)<="0101010";

	keta1(100)<="1111111";
	keta1(101)<="0101001";
	keta1(102)<="0101001";
	keta1(103)<="0101001";
	keta1(104)<="0010001";

	keta1(105)<="0101001";
	keta1(106)<="0101001";
	keta1(107)<="0101001";
	keta1(108)<="0010001";
	keta1(109)<="1111111";
	keta1(110)<="1111111";
--	keta1(110)<="1111111";

--	keta1(103)<="1111111";
--	keta1(104)<="1111111";
--	keta1(105)<="1111111";
--	keta1(106)<="1111111";
--	keta1(107)<="1111111";
--	keta1(108)<="1111111";
--	keta1(109)<="1111111";
--	keta1(110)<="1111111";
--	keta1(111)<="1111111";
--	keta1(112)<="1111111";
--	keta1(113)<="1111111";
--	keta1(114)<="1111111";
--	keta1(115)<="1111111";
--	keta1(116)<="1111111";
--
--	keta1(117)<="0000000";
--	keta1(118)<="0000000";
--	keta1(119)<="0000000";

	-----????--
	keta1(129)<="1111111";
	keta1(130)<="1111110";
	keta1(131)<="1111111";

	keta1(132)<="1111111";
	keta1(133)<="0101001";
	keta1(134)<="0101001";
	keta1(135)<="0101001";

	keta1(136)<="0010001";
	keta1(137)<="0011001";
	keta1(138)<="0011001";
	keta1(139)<="0010010";

	keta1(140)<="1111111";
	keta1(141)<="1101001";
	keta1(142)<="1101001";
	keta1(143)<="0110001";
	keta1(144)<="0110001";
	keta1(145)<="0101101";
	keta1(146)<="1111111";
	keta1(147)<="1111111";
	keta1(148)<="1111111";
	keta1(149)<="1111111";
	keta1(150)<="1111111";
--	keta1(151)<="1111111";
--
--	keta1(143)<="1111111";
--	keta1(144)<="1111111";
--	keta1(145)<="1111111";
--	keta1(146)<="1111111";
--	keta1(147)<="1111111";
--	keta1(148)<="1111111";
--	keta1(149)<="1111111";
--	keta1(150)<="1111111";
--	keta1(151)<="1111111";
--	keta1(152)<="1111111";
--	keta1(153)<="1111111";
--	keta1(154)<="1111111";
--	keta1(155)<="1111111";
--	keta1(156)<="1111111";
--
--	keta1(157)<="0000000";
--	keta1(158)<="0000000";
--	keta1(159)<="0000000";

------Dear Mom----------
	
	
	keta2(0)<="0000000";
--	keta2(1)<="0000000";
	keta2(10)<="1111111";
	keta2(11)<="1111110";
	keta2(12)<="1111111";
	
	keta2(13)<="0011001";
	keta2(14)<="0101001";
	keta2(15)<="0100001";
	keta2(16)<="0101001";
	
	keta2(17)<="0100010";
	keta2(18)<="1111111";

	keta2(19)<="0011010";
	keta2(20)<="1111111";
	
	keta2(21)<="0101010";
	keta2(22)<="1111111";
	
	keta2(23)<="0110010";
	keta2(24)<="1111111";
	
	keta2(25)<="0111101";
	keta2(26)<="1111111";
	keta2(27)<="1111111";
	keta2(28)<="1111111";
	keta2(29)<="1111111";
--	keta2(22)<="1111111";
--
--	keta2(23)<="1111111";
--	keta2(24)<="1111111";
--	keta2(25)<="1111111";
--	keta2(26)<="1111111";
--	keta2(27)<="1111111";
--	keta2(28)<="1111111";
--	keta2(29)<="1111111";
--	keta2(30)<="1111111";
--	keta2(31)<="1111111";
--	keta2(32)<="1111111";
--	keta2(33)<="1111111";
--	keta2(34)<="1111111";
--	keta2(35)<="1111111";
--	keta2(36)<="1111111";
--
--	keta2(37)<="0000000";
--	keta2(38)<="0000000";
--	keta2(39)<="0000000";

	 ---???2--

--	keta2(40)<="0000000";
--	keta2(41)<="0000000";
	keta2(50)<="1111111";
	keta2(51)<="1111110";
	keta2(52)<="1111111";
	
	keta2(53)<="1101001";
	keta2(54)<="1101001";
	keta2(55)<="1101001";
	
	keta2(56)<="0101001";
	keta2(57)<="0110001";
	keta2(58)<="0110001";

	keta2(59)<="0110010";
	keta2(60)<="1111111";
	
	keta2(61)<="0101001";
	keta2(62)<="0101001";
	keta2(63)<="0101001";
	keta2(64)<="0011001";
	
	keta2(65)<="0100001";
	keta2(66)<="0100001";
	keta2(67)<="0100001";
	keta2(68)<="0111001";
	keta2(69)<="1111111";
--	keta2(62)<="1111111";
--
--	keta2(63)<="1111111";
--	keta2(64)<="1111111";
--	keta2(65)<="1111111";
--	keta2(66)<="1111111";
--	keta2(67)<="1111111";
--	keta2(68)<="1111111";
--	keta2(69)<="1111111";
--	keta2(70)<="1111111";
--	keta2(71)<="1111111";
--	keta2(72)<="1111111";
--	keta2(73)<="1111111";
--	keta2(74)<="1111111";
--	keta2(75)<="1111111";
--	keta2(76)<="1111111";
--
--	keta2(77)<="0000000";
--	keta2(78)<="0000000";
--	keta2(79)<="0000000";


	----????--

--	keta2(80)<="0000000";
--	keta2(81)<="0000000";
	keta2(90)<="1111111";
	keta2(91)<="1111110";
	keta2(92)<="1111111";
	
	keta2(93)<="0101010";
	keta2(94)<="1111111";
	keta2(95)<="0100010";

	keta2(96)<="1111111";
	keta2(97)<="0011010";
	keta2(98)<="1111111";

	keta2(99)<="1101001";
	keta2(100)<="0101010";
	keta2(101)<="1111111";
	keta2(102)<="0100010";
	keta2(103)<="1111111";

	keta2(104)<="0011101";
	keta2(105)<="1111111";
	keta2(106)<="1111111";
	keta2(107)<="1111111";
	keta2(108)<="1111111";
	keta2(109)<="1111111";
--	keta2(102)<="1111111";

--	keta2(103)<="1111111";
--	keta2(104)<="1111111";
--	keta2(105)<="1111111";
--	keta2(106)<="1111111";
--	keta2(107)<="1111111";
--	keta2(108)<="1111111";
--	keta2(109)<="1111111";
--	keta2(110)<="1111111";
--	keta2(111)<="1111111";
--	keta2(112)<="1111111";
--	keta2(113)<="1111111";
--	keta2(114)<="1111111";
--	keta2(115)<="1111111";
--	keta2(116)<="1111111";
--
--	keta2(117)<="0000000";
--	keta2(118)<="0000000";
--	keta2(119)<="0000000";

-------Happy Birthday----------
	
		
--	keta3(0)<="0000000";
--	keta3(1)<="0000000";
	keta3(10)<="1111111";
	keta3(11)<="1111110";
	keta3(12)<="1111111";
	
	keta3(13)<="0001110";
	keta3(14)<="0001111";
	keta3(15)<="0010001";
	keta3(16)<="0001001";	
	keta3(17)<="0100001";
	
	keta3(18)<="0011010";
	keta3(19)<="1111111";
	keta3(20)<="0001110";	
	keta3(21)<="0001111";
	
	keta3(22)<="0010001";	
	keta3(23)<="0001001";
	keta3(24)<="0101001";
	
	keta3(25)<="0100010";
	keta3(26)<="1111111";
	keta3(27)<="1111111";
	keta3(28)<="1111111";
	keta3(29)<="1111111";
--	keta3(22)<="1111111";
--
--	keta3(23)<="1111111";
--	keta3(24)<="1111111";
--	keta3(25)<="1111111";
--	keta3(26)<="1111111";
--	keta3(27)<="1111111";
--	keta3(28)<="1111111";
--	keta3(29)<="1111111";
--	keta3(30)<="1111111";
--	keta3(31)<="1111111";
--	keta3(32)<="1111111";
--	keta3(33)<="1111111";
--	keta3(34)<="1111111";
--	keta3(35)<="1111111";
--	keta3(36)<="1111111";
--
--	keta3(37)<="0000000";
--	keta3(38)<="0000000";
--	keta3(39)<="0000000";

	 ---???2--

--	keta3(40)<="0000000";
--	keta3(41)<="0000000";
	keta3(50)<="1111111";
	keta3(51)<="1111110";
	keta3(52)<="1111111";
	
	keta3(53)<="0001110";
	keta3(54)<="0001111";
	
	keta3(55)<="1000001";	
	keta3(56)<="0110001";
	keta3(57)<="0100001";
	
	keta3(58)<="0011001";
	keta3(59)<="0010001";
	keta3(60)<="1101110";	
	keta3(61)<="1101111";
	
	keta3(62)<="0110001";
	keta3(63)<="0100001";
	keta3(64)<="0101001";
	
	keta3(65)<="0100010";
	keta3(66)<="1111111";
	keta3(67)<="1111111";
	keta3(68)<="1111111";
	keta3(69)<="1111111";
	
--	keta3(70)<="1111111";
--	keta3(63)<="1111111";
--	keta3(64)<="1111111";
--	keta3(65)<="1111111";
--	keta3(66)<="1111111";
--	keta3(67)<="1111111";
--	keta3(68)<="1111111";
--	keta3(69)<="1111111";
--	keta3(70)<="1111111";
--	keta3(71)<="1111111";
--	keta3(72)<="1111111";
--	keta3(73)<="1111111";
--	keta3(74)<="1111111";
--	keta3(75)<="1111111";
--	keta3(76)<="1111111";
--
--	keta3(77)<="0000000";
--	keta3(78)<="0000000";
--	keta3(79)<="0000000";

------------------------------------------More Song-------------------------------------------------------------------------

-------Twinkle, Twinkle little star------------

	keta4(7)<="1111111";
	keta4(8)<="1111110";
	keta4(9)<="1111111";

	keta4(10)<="0001001";
	keta4(11)<="0001001";
	keta4(12)<="1111111";
	keta4(13)<="1111111";

	keta4(14)<="0101001";
	keta4(15)<="0101001";
	keta4(16)<="1111111";
	keta4(17)<="1111111";

	keta4(18)<="0110001";	
	keta4(19)<="1111111";
	keta4(20)<="0110001";
	keta4(21)<="1111111";
	
	keta4(22)<="1111111";
	keta4(23)<="0101010";
	keta4(24)<="1111111";
	keta4(25)<="1111111";

	keta4(26)<="0100001";
	keta4(27)<="0100001";	
	keta4(28)<="1111111";

	keta4(29)<="1111111";
	keta4(30)<="1111111";
	keta4(31)<="1111111";
	keta4(32)<="1111111";
--	keta0(33)<="1111111";
--	keta0(34)<="1111111";
--
--	keta0(35)<="1111111";
--	keta0(36)<="1111111";
--	keta0(30)<="1111111";
--	keta0(31)<="1111111";
--	keta0(32)<="1111111";
--	keta0(33)<="1111111";
--	keta0(34)<="1111111";
--	keta0(35)<="1111111";
--	keta0(36)<="1111111";
--
--	keta0(37)<="0000000";
--	keta0(38)<="0000000";
--	keta0(39)<="0000000";

   
	----shura2------
	keta4(47)<="1111111";
	keta4(48)<="1111110";
	keta4(49)<="1111111";

	keta4(50)<="0011001";
	keta4(51)<="0011001";
	keta4(52)<="1111111";
	keta4(53)<="1111111";

	keta4(54)<="0010001";
	keta4(55)<="0011001";
	keta4(56)<="1111111";
	keta4(57)<="1111111";
	
	keta4(58)<="1111111";
	keta4(59)<="0001010";
	keta4(60)<="1111111";
	keta4(61)<="1111111";
	
	keta4(62)<="0101001";
	keta4(63)<="0101001";
	keta4(64)<="1111111";
	keta4(65)<="1111111";

	keta4(66)<="0100001";
	keta4(67)<="0100001";
	keta4(68)<="1111111";

	keta4(69)<="1111111";
	keta4(70)<="1111111";
	keta4(71)<="1111111";
	keta4(72)<="1111111";
--	keta0(73)<="1111111";
--	keta0(73)<="1111111";
--
--	keta4(74)<="1111111";
--	keta0(75)<="1111111";
--	keta0(70)<="1111111";
--	keta0(71)<="1111111";
--	keta0(72)<="1111111";
--	keta0(73)<="1111111";
--	keta0(74)<="1111111";
--	keta0(75)<="1111111";
--	keta0(76)<="1111111";
--
--	keta0(77)<="0000000";
--	keta0(78)<="0000000";
--	keta0(79)<="0000000";

	--shura3------

	keta4(87)<="1111111";
	keta4(88)<="1111110";
	keta4(89)<="1111111";

	keta4(90)<="0100001";
	keta4(91)<="0100001";
	keta4(92)<="1111111";
	keta4(93)<="1111111";
	
	keta4(94)<="1111111";
	keta4(95)<="0010010";
	keta4(96)<="1111111";	
	keta4(97)<="1111111";

	keta4(98)<="0101001";
	keta4(99)<="0101001";
	keta4(100)<="1111111";
	
	keta4(101)<="0100001";
	keta4(102)<="0100001";
	keta4(103)<="1111111";
	
	keta4(104)<="0011001";
	keta4(105)<="0011001";
	keta4(106)<="1111111";

	keta4(107)<="1111111";
	keta4(108)<="1111111";
	keta4(109)<="1111111";
	keta4(110)<="1111111";
	keta4(111)<="1111111";
	keta4(112)<="1111111";

--	keta0(106)<="1111111";
--	keta0(107)<="1111111";
--	keta0(108)<="1111111";
--	keta0(109)<="1111111";
--	keta0(110)<="1111111";
--	keta0(111)<="1111111";
--	keta0(112)<="1111111";
--	keta0(113)<="1111111";
--	keta0(114)<="1111111";
--	keta0(115)<="1111111";
--	keta0(116)<="1111111";
--	keta0(117)<="0000000";
--	keta0(118)<="0000000";
--	keta0(119)<="0000000";
--
------shura4--------------
--
	keta4(127)<="1111111";
	keta4(128)<="1111110";
	keta4(129)<="1111111";

	keta4(130)<="1111111";
	keta4(131)<="1111111";
	keta4(132)<="0010010";
	keta4(133)<="1111111";

	keta4(134)<="0001001";
	keta4(135)<="0001001";
	keta4(136)<="1111111";
	
	keta4(137)<="0101001";
	keta4(138)<="0101001";
	keta4(139)<="1111111";
	
	keta4(140)<="0110001";
   keta4(141)<="0110001";
	keta4(142)<="1111111";
	
	keta4(143)<="1111111";
	keta4(144)<="0101010";
	keta4(145)<="1111111";
	
	keta4(146)<="1111111";
	keta4(147)<="1111111";
	keta4(148)<="1111111";
	keta4(149)<="1111111";
	keta4(150)<="1111111";
--	
--	keta4(151)<="1111111";
--	keta4(152)<="1111111";	
--	keta4(153)<="1111111";
--	keta4(154)<="1111111";
--	keta4(155)<="1111111";
--	keta4(156)<="1111111";
--	keta4(157)<="1111111";
--	keta4(158)<="1111111";
--	keta4(159)<="1111111";

-----------------------------------------------shayah leshura5---------------
--	keta4(160)<="1111111";
--	keta4(161)<="1111110";
--	keta4(162)<="1111111";
--	keta4(163)<="1111111";
--
--	keta4(164)<="0000000";
--	keta4(165)<="0000000";
--	keta4(166)<="0000000";

----shura5-------
	keta4(167)<="1111111";
	keta4(168)<="1111110";
	keta4(169)<="1111111";

	keta4(170)<="0100001";
	keta4(171)<="0100001";
	keta4(172)<="1111111";
	
	keta4(173)<="0011001";
	keta4(174)<="0011001";
	keta4(175)<="1111111";
	
	keta4(176)<="0010001";
	keta4(177)<="0010001";
	keta4(178)<="1111111";
	keta4(179)<="1111111";
	
	keta4(180)<="1111111";
   keta4(181)<="1111111";
	keta4(182)<="0001010";
	keta4(183)<="1111111";
	keta4(184)<="1111111";
	
   keta4(185)<="1111111";
	keta4(186)<="1111111";
	keta4(187)<="1111111";
	keta4(188)<="1111111";
	keta4(189)<="1111111";
	
--	keta4(190)<="1111111";
--	keta4(191)<="1111111";
--	keta4(192)<="1111111";
--	keta4(193)<="1111111";
--	keta4(194)<="1111111";
--	keta4(195)<="1111111";
--	keta4(196)<="1111111";
--	keta4(197)<="1111111";
--	keta4(198)<="1111111";
--	keta4(199)<="1111111";
--	keta4(200)<="1111111";

	
----------------jingle bells------------------------------

	keta5(7)<="1111111";
	keta5(8)<="1111110";
	keta5(9)<="1111111";

	keta5(10)<="0011001";
	keta5(11)<="0011001";
	keta5(12)<="1111111";
	
	keta5(13)<="1111111";
	keta5(14)<="0011001";
	keta5(15)<="1111111";
	
	keta5(16)<="0011001";
	keta5(17)<="0011001";
	keta5(18)<="1111111";
	
	keta5(19)<="1111111";
	keta5(20)<="0011001";
	keta5(21)<="1111111";
	
	keta5(22)<="0011001";
	keta5(23)<="1111111";
	keta5(24)<="1111111";
	
	keta5(25)<="0011001";
	keta5(26)<="0101001";
	keta5(27)<="1111111";
	
	keta5(28)<="0001001";
	keta5(29)<="0010001";
	keta5(30)<="0011101";
	
--	keta1(31)<="1111111";
--	keta1(32)<="0011101";
--	keta1(33)<="1111111";
	
--	keta1(34)<="1111111";
--	keta1(35)<="1111111";
--	keta1(36)<="1111111";
--	keta1(37)<="1111111";
--	keta1(38)<="1111111";
--	keta1(39)<="1111111";
--	


	 ---???2--

	keta5(47)<="1111111";
	keta5(48)<="1111110";
	keta5(49)<="1111111";

	keta5(50)<="0100001";
	keta5(51)<="0100001";
	keta5(52)<="1111111";
	
	keta5(53)<="0100001";
	keta5(54)<="0100001";
	keta5(55)<="1111111";
	
	keta5(56)<="0100001";
	keta5(57)<="0011001";
	keta5(58)<="1111111";
	
	keta5(59)<="0011001";
	keta5(60)<="0011001";
	keta5(61)<="0011001";
	keta5(62)<="1111111";
	
	keta5(63)<="0011001";
	keta5(64)<="0010001";
	keta5(65)<="1111111";
	
	keta5(66)<="0010001";
	keta5(67)<="0010001";
	keta5(68)<="1111111";
	keta5(69)<="0010001";
	keta5(70)<="0101001";
--	
--	keta1(71)<="1111111";
--	keta1(72)<="0010001";
--	keta1(73)<="1111111";
--	keta1(74)<="1111111";
--	keta1(75)<="0101001";
--	keta1(76)<="1111111";
--	keta1(77)<="1111111";
--	keta1(78)<="1111111";
--	keta1(79)<="1111111";
	


	----????3--

	keta5(87)<="1111111";
	keta5(88)<="1111110";
	keta5(89)<="1111111";

	keta5(90)<="0011001";
	keta5(91)<="0011001";
	keta5(92)<="1111111";
	
	keta5(93)<="1111111";
	keta5(94)<="0011001";
	keta5(97)<="1111111";
	
	keta5(95)<="0011001";
	keta5(96)<="0011001";
	keta5(97)<="1111111";
	
	keta5(98)<="1111111";
	keta5(99)<="0011001";
	keta5(100)<="1111111";
	
	keta5(101)<="0011001";
	keta5(102)<="0101001";
	keta5(103)<="1111111";

   keta5(104)<="0001001";
	keta5(105)<="0010001";
	keta5(106)<="1111111";

	keta5(107)<="1111111";
	keta5(108)<="0011001";
	keta5(109)<="1111111";
   keta5(110)<="1111111";
	
--	keta5(114)<="1111111";
--	keta5(115)<="1111111";
--	keta5(116)<="1111111";
--	keta5(117)<="1111111";
--	keta5(118)<="1111111";
--	keta1(119)<="1111111";

	-----????4--

	keta5(127)<="1111111";
	keta5(128)<="1111110";
	keta5(129)<="1111111";

	keta5(130)<="0100001";
	keta5(131)<="0100001";
	keta5(132)<="1111111";
	
	keta5(133)<="0100001";
	keta5(134)<="0100001";
	keta5(135)<="1111111";
	
	keta5(136)<="0100001";
	keta5(137)<="0100001";
	keta5(138)<="1111111";
	
	keta5(139)<="0011001";
	keta5(140)<="0011001";
   keta5(141)<="0110001";
	
	keta5(142)<="1111111";
	keta5(143)<="0101001";
	keta5(144)<="0101001";
	
	keta5(145)<="1111111";
	keta5(146)<="0100001";
	keta5(147)<="0010001";
	
	keta5(148)<="1111111";
	keta5(149)<="0001010";
	keta5(150)<="1111111";
--	
--	keta5(151)<="1111111";
--	keta5(152)<="1111111";
--	
--	keta4(153)<="1111111";
--	keta4(154)<="1111111";
--	keta4(155)<="1111111";
--	keta4(156)<="1111111";
--	keta4(157)<="1111111";
--	keta4(158)<="1111111";
--	keta4(159)<="1111111";

-------little spider-----------

   keta6(7)<="1111111";
	keta6(8)<="1111110";
	keta6(9)<="1111111";

	keta6(10)<="1111111";
	keta6(11)<="0101001";
	keta6(12)<="1111111";
	
	keta6(13)<="0001001";
	keta6(14)<="0001001";
	keta6(15)<="0001001";
	
	keta6(16)<="1111111";
	keta6(17)<="0010001";
	keta6(18)<="0011001";
	
	keta6(19)<="1111111";
	keta6(20)<="0011001";
	keta6(21)<="1111111";
	
	keta6(22)<="1111111";
	keta6(23)<="0011001";
	keta6(24)<="0010001";
	
	keta6(25)<="1111111";
	keta6(26)<="0001001";
	keta6(27)<="1111111";
	keta6(28)<="1111111";
	
	keta6(29)<="1111111";
	keta6(30)<="0010001";
	keta6(31)<="0011001";
	keta6(32)<="1111111";
	
	keta6(33)<="1111111";
	keta6(34)<="1111111";
	keta6(35)<="0001001";
	keta6(36)<="1111111";
	keta6(37)<="1111111";
	
--	keta6(38)<="1111111";
--	keta6(39)<="1111111";


	 ----------???2--
   keta6(47)<="1111111";
	keta6(48)<="1111110";
	keta6(49)<="1111111";

	keta6(50)<="0011001";
	keta6(51)<="0011001";
	keta6(52)<="1111111";
	
	keta6(53)<="1111111";
	keta6(54)<="0100001";
	keta6(55)<="1111111";
	
	keta6(56)<="0101001";
	keta6(57)<="0101001";
	keta6(58)<="1111111";
	
	keta6(59)<="1111111";
	keta6(60)<="0100001";
	keta6(61)<="0011001";
	keta6(62)<="0100001";
	keta6(63)<="0101001";
	keta6(64)<="0011001";
	keta6(65)<="1111111";

	keta6(66)<="0001001";
	keta6(67)<="0010001";
	keta6(68)<="0010001";

	keta6(69)<="0011001";
	keta6(70)<="0011001";
	
--	keta6(71)<="1111111";
--	keta6(72)<="1111111";
--	keta6(73)<="1111111";
--	keta6(73)<="1111111";
--
--	keta6(74)<="1111111";
--	keta6(75)<="1111111";
--	keta6(70)<="1111111";
--	keta6(71)<="1111111";
--	keta6(72)<="1111111";
--	keta6(73)<="1111111";
--	keta6(74)<="1111111";
--	keta6(75)<="1111111";
--	keta6(76)<="1111111";
--
--	keta6(77)<="0000000";
--	keta6(78)<="0000000";
--	keta6(79)<="0000000";

	----????3--
   keta6(87)<="1111111";
	keta6(88)<="1111110";
	keta6(89)<="1111111";

	keta6(90)<="0010001";
	keta6(91)<="0001001";
	keta6(92)<="1111111";
	
	keta6(93)<="0010001";
	keta6(94)<="0011001";
	keta6(95)<="1111111";
	
	keta6(96)<="1111111";
	keta6(97)<="0011001";
	keta6(98)<="1111111";
	
	keta6(99)<="0010001";
	keta6(100)<="0010001";
	keta6(101)<="1111111";
	
	keta6(102)<="1111111";
	keta6(103)<="0001001";
	keta6(104)<="0001001";

   keta6(105)<="1111111";
	keta6(106)<="0001001";
	keta6(107)<="0010001";

	keta6(108)<="1111111";
	keta6(109)<="0010001";
	keta6(110)<="0011001";

	keta6(111)<="1111111";
	keta6(112)<="0011001";
	keta6(113)<="0011001";
	
	keta6(114)<="1111111";
	keta6(115)<="1111111";
	keta6(116)<="1111111";
	keta6(117)<="1111111";
	
--	keta6(118)<="1111111";
--	keta6(119)<="1111111";

-----???4-----------

	keta6(127)<="1111111";
	keta6(128)<="1111110";
	keta6(129)<="1111111";

	keta6(130)<="1111111";
	keta6(131)<="0010001";
	keta6(132)<="1111111";
	keta6(133)<="1111111";

	keta6(134)<="0001001";
	keta6(135)<="0010001";
	keta6(136)<="1111111";
	
	keta6(137)<="1111111";
	keta6(138)<="0011001";
	keta6(139)<="0001001";
	keta6(140)<="1111111";
	
-- keta6(141)<="0110001";
--	keta6(142)<="1111111";
--	
--	keta4(143)<="1111111";
--	keta4(144)<="0101010";
--	keta4(145)<="1111111";
--	
--	keta4(146)<="1111111";
--	keta4(147)<="1111111";
--	keta4(148)<="1111111";
--	keta4(149)<="1111111";
--	keta4(150)<="1111111";


---------Bus on the wheels-------

   keta7(7)<="1111111";
	keta7(8)<="1111110";
	keta7(9)<="1111111";

	keta7(10)<="1111111";
	keta7(11)<="0001001";
	keta7(12)<="1111111";
	
	keta7(13)<="1111111";
	keta7(14)<="0100001";
	keta7(15)<="0100001";
	
	keta7(16)<="1111111";
	keta7(17)<="0100001";
	keta7(18)<="0100001";
	
	keta7(19)<="1111111";
	keta7(20)<="0110001";
	keta7(21)<="1111111";
	
	keta7(22)<="1111111";
	keta7(23)<="0111001";
	keta7(24)<="1111111";
	
	keta7(25)<="1111111";
	keta7(26)<="0110001";
	keta7(27)<="1111111";
	
	keta7(28)<="1111111";
	keta7(29)<="0100001";
	keta7(30)<="1111111";
	
--	keta7(31)<="1111111";
--	keta7(32)<="0011101";
--	keta7(33)<="1111111";
	
--	keta7(34)<="1111111";
--	keta7(35)<="1111111";
--	keta7(36)<="1111111";
--	keta7(37)<="1111111";
--	keta7(38)<="1111111";
--	keta7(39)<="1111111";

	 ---???2--

	keta7(47)<="1111111";
	keta7(48)<="1111110";
	keta7(49)<="1111111";
	
	keta7(50)<="1111111";
	keta7(51)<="0101001";
	keta7(52)<="1111111";
	
	keta7(53)<="1111111";
	keta7(54)<="0011001";
	keta7(55)<="1111111";
	
	keta7(56)<="1111111";
	keta7(57)<="0001001";	
	keta7(58)<="1111111";
	
	keta7(59)<="1111111";
	keta7(60)<="1101001";
	keta7(61)<="1111111";
	
	keta7(62)<="1111111";
	keta7(63)<="0110001";
	keta7(64)<="1111111";
	
	keta7(65)<="1111111";
	keta7(66)<="0100001";
	keta7(67)<="1111111";
	
	keta7(68)<="1111111";
	keta7(69)<="1111111";
	keta7(70)<="1111111";

--	keta3(71)<="1111111";
--	keta3(72)<="1111111";
--	keta3(73)<="1111111";
--	keta3(74)<="0000000";
--	keta3(75)<="0000000";
--	keta3(76)<="0000000";

--??3?----
   keta7(87)<="1111111";
	keta7(88)<="1111110";
	keta7(89)<="1111111";

	keta7(90)<="1111111";
	keta7(91)<="0001001";
	keta7(92)<="1111111";
	
	keta7(93)<="1111111";
	keta7(94)<="0100001";
	keta7(95)<="0100001";
	
	keta7(96)<="1111111";
	keta7(97)<="0100001";
	keta7(98)<="0100001";
	
	keta7(99)<="1111111";
	keta7(100)<="0110001";
	keta7(101)<="1111111";
	
	keta7(102)<="1111111";
	keta7(103)<="0111001";
	keta7(104)<="1111111";
	
	keta7(105)<="1111111";
	keta7(106)<="0110001";
	keta7(107)<="1111111";
	
	keta7(108)<="1111111";
	keta7(109)<="0100001";
	keta7(110)<="1111111";
	
--	keta7(111)<="1111111";
--	keta7(112)<="0011101";
--	keta7(113)<="1111111";
	
--	keta7(114)<="1111111";
--	keta7(115)<="1111111";
--	keta7(116)<="1111111";
--	keta7(117)<="1111111";
--	keta7(118)<="1111111";
--	keta7(119)<="1111111";

----??4??--------

	keta7(127)<="1111111";
	keta7(128)<="1111110";
	keta7(129)<="1111111";

	keta7(130)<="1111111";
	keta7(131)<="1111111";
	keta7(132)<="0101001";
	keta7(133)<="1111111";

	keta7(134)<="1111111";
	keta7(135)<="0001001";
	keta7(136)<="1111111";
	
	keta7(137)<="1111111";
	keta7(138)<="0100001";
	keta7(139)<="1111111";
--	
--	keta7(140)<="0110001";
-- keta7(141)<="0110001";
--	keta7(142)<="1111111";
--	
--	keta7(143)<="1111111";
--	keta7(144)<="0101010";
--	keta7(145)<="1111111";
--	
--	keta7(146)<="1111111";
--	keta7(147)<="1111111";
--	keta7(148)<="1111111";
--	keta7(149)<="1111111";
--	keta7(150)<="1111111";
----	
--	keta4(151)<="1111111";
--	keta4(152)<="1111111";	
--	keta4(153)<="1111111";
--	keta4(154)<="1111111";
--	keta4(155)<="1111111";
--	keta4(156)<="1111111";
--	keta4(157)<="1111111";
--	keta4(158)<="1111111";
--	keta4(159)<="1111111";


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