library IEEE;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all ;

entity counterrtl_tb is
end counterrtl_tb;

architecture archi of counterrtl_tb is
signal s :  unsigned(2 downto 0):="000" ;
signal clk,rst: std_logic;
begin
  Dutt: entity work.countterRTL port map(clk,rst,s);
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
  
 end archi;