library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity re2 is
port (y:out std_logic_vector(0 to 1023));

end entity;

architecture arch_re2 of re2 is
begin
	y<="0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000001100000000000000110000000000000011000000000000001100000111111111111111111111111111111110000000001100000000000000110000000000000011000000000000001100000000000000110000000000000011000000000000001100000000000000110000011111111111111111111111111111111000000000110000000000000011000000000000001100000000000000110000000000000011000000000000001100000000000000110000000000000011000001111111111111111111111111111111100000111111000000000100001100000000100000110000000010000011000000001000001100000000100000110000000001000010000000000011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"; 
end architecture;


--	y<="0000000000000000
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
--		1111111111111111
--		1111111111111111
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		1111111111111111
--		1111111111111111
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		1111111111111111
--		1111111111111111
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		0000000001100000
--		1111111111111111
--		1111111111111111
--		0000011111100000
--		0000100001100000
--		0001000001100000
--		0001000001100000
--		0001000001100000
--		0001000001100000
--		0000100001000000
--		0000011110000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000
--		0000000000000000"; 