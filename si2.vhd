library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity si2 is
port (y:out std_logic_vector(0 to 1023));

end entity;

architecture arch_si2 of si2 is
begin

y<="0000000000110000000000000011000000000000001100000000000000110000000000000011000000000000001100000000000000110000000000000011000011111111111111111111111111111111000000000011000000000000001100000000000000110000000000000011000000000000001100000000000000110000000000000011000000000000001100001111111111111111111111111111111100000000001100000000000000110000000000000011000000000000001100000000000000110000000000111111000000000100001100000000100000110000111111111111111111111111111111110000100000110000000001000110000000000011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
	end architecture;
--
--	y<="0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		1111111111111111
--		1111111111111111
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		1111111111111111
--		1111111111111111
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000000000110000
--		0000001111110000
--		0000010000110000
--		0000100000110000
--		1111111111111111
--		1111111111111111
--		0000100000110000
--		0000010001100000
--		0000001111000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		1111111111111111
--		1111111111111111
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		1111111111111111
--		1111111111111111
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000";