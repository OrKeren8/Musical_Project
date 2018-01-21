library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.notes.all;
use work.Melodies.all;

entity vga_control is
port(pixel_row,pixel_column : in std_logic_vector(9 downto 0);
	lines    :in std_logic_vector(0 to 1023);
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