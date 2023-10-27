library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity test_Ncounter is
end test_Ncounter;

architecture tb of test_Ncounter is
  signal CLK_tb : std_logic;
  signal Q_tb : std_logic;
  signal Qbar_tb : std_logic_vector(2 downto 0);
  
begin
    uut: entity work.counterN port map (CLK_tb, Q_tb, Qbar_tb);
  end tb;library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity test_Ncounter is
end test_Ncounter;

architecture tb of test_Ncounter is
  signal CLK_tb : std_logic;
  signal Q_tb : std_logic;
  signal Qbar_tb : std_logic_vector(2 downto 0);
  
begin
    uut: entity work.counterN port map (CLK_tb, Q_tb, Qbar_tb);
  end tb;

