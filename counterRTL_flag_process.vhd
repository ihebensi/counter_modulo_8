library IEEE;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all ;  --decolseillee non ieee


entity countterRTLFlagP is
  port(clk,rst : in std_logic ;
  q : out unsigned(2 downto 0);
  f: out std_logic );
end countterRTLFlagP;

architecture architec of countterRTLFlagP is
signal s :  unsigned(2 downto 0):="000" ;
signal fsignal: std_logic :='0';
begin
  process(clk,rst)
  begin
  if rst='1' then
    s<="000" ;
  elsif rising_edge(clk) then
    s <= s + 1;     
  end if  ;
 end process ;
 
 process(s)
   begin
     if s="111" then
      fsignal<='1';
     else
      fsignal<='0';
     end if;
 end process;
 
 f<=fsignal;
 q <= s;
 end architec;
