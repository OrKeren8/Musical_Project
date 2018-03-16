library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Color_Control is

port ( X :in std_logic;
       Y: in std_logic_vector(2 downto 0);
       kituv: in std_logic;
       outY: out std_logic_vector(2 downto 0));

end entity;

architecture arch_Color_Control of Color_control is
begin

process (x,y,kituv)
begin

if kituv='0' then
   outY<= Y;
else
   if X ='1' then
      outY <="101"; 
   else 
      outY<= "111";
   end if;

end if;
end process;
end architecture;


