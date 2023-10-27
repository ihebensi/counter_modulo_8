library IEEE;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all ;  --decolseillee non ieee


entity countterRTL is
  port(clk,rst : in std_logic ;
  q : out unsigned(2 downto 0) );
end countterRTL;

architecture archi of countterRTL is
signal s :  unsigned(2 downto 0):="000" ;
begin
  process(clk,rst)
  begin
  if rst='1' then
    s<="000" ;
  elsif rising_edge(clk) then
    s <= s + 1;     

  end if  ;
 end process ;
 q <= s;
 end archi;
