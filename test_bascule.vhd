library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity test_D is
end test_D;

architecture behavioural of test_D is
  signal D_tb,clk_tb,Q_tb,Qbar_tb: std_logic;
  begin
    U_D: entity work.BasculeD port map (D_tb,clk_tb,Q_tb,Qbar_tb);
      
    D_tb<='0' after 0 ns, '1' after 10 ns, '0' after 30 ns, '1' after 60 ns, '0' after 90 ns;
  end behavioural;