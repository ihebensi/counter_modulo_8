library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity test_Ncounterrst is
end test_Ncounterrst;

architecture tb of test_Ncounterrst is
  signal CLK_tb,rset : std_logic;
  signal Q_tb : std_logic_vector(2 downto 0);
  signal Qbar_tb : std_logic_vector(2 downto 0);
  
begin
    uut: entity work.counterNrst port map (CLK_tb,rset, Q_tb, Qbar_tb);
    rset<='0' after 0 ns, '1' after 40 ns, '0' after 70 ns;
  end tb;


