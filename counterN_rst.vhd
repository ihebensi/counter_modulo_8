library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity counterNrst is
  port(
    CLK: in std_logic;
    rst: in std_logic;
    Q: inout std_logic_vector(2 downto 0);
    Qbar: inout std_logic_vector(2 downto 0)
  );
end counterNrst;

architecture compteur of counterNrst is
   signal D2,D3,A,Q0_b: std_logic;
begin
    Q0_b<=Qbar(0);
    Bascule0: entity work.BasculeD_rst port map (Q0_b,rst,CLK,Q(0),Qbar(0));
      
    xor1: entity work.XORporte port map (Q(0),Q(1),D2); -- D2<=Q(0) xor Q(1);
    
    Bascule1: entity work.BasculeD_rst port map (D2,rst,CLK,Q(1),Qbar(1));
      
    and1: entity work.andab port map (Q(0),Q(1),A); -- A<=Q(0) and Q(1);
    
    xor2: entity work.XORporte port map (A,Q(2),D3); -- D3<=A xor Q(2);
    
    Bascule2: entity work.BasculeD_rst port map (D3,rst,CLK,Q(2),Qbar(2));

  end compteur;


