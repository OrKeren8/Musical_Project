library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity la5 is
port (y:out std_logic_vector(0 to 1023));

end entity;

architecture arch_la5 of la5 is
begin

	y<="0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000111111000000000100000100000000100000010000000010000001000000001000000100000000100000010000000001000010000000000011110000000011111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
	
end architecture;

--	y<="	0000000000000000
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
	--		0000000000000000
	--		0000000000000000
	--		0000000000000000
	--		0000000000000000
	--		1111111111111111
	--		1111111111111111
	--		0000111111000000
	--		0001000001000000
	--		0010000001000000
	--		0010000001000000
	--		0010000001000000
	--		0010000001000000
	--		0001000010000000
	--		0000111100000000
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