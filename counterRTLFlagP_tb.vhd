library IEEE;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all ;

entity counterrtlflag_tb is
end counterrtlflag_tb;

architecture architt of counterrtlflag_tb is
signal s :  unsigned(2 downto 0):="000" ;
signal clk,rst,f: std_logic;
begin
  Dutt: entity work.countterRTLFlagP port map(clk,rst,s,f);
    clk_gen_process: process
  begin
    while now < 500 ns loop -- Simulate for 500 ns
      clk <= '1';
      wait for 5 ns;
      clk <= '0';
      wait for 5 ns;
    end loop;
    wait;
  end process;
  rst<='0' after 0 ns, '1' after 500 ns,'0' after 600 ns;
  
 end architt;



