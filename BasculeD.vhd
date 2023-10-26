library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity BasculeD is
  port(
    D, CLK : in std_logic;
    Q,Qbar: out std_logic
  );
  end BasculeD;
  
  architecture Arch_D of BasculeD is
      begin
        process(CLK)
          begin
            if rising_edge(CLK) then
              Q<=D;
              Qbar<=not D;
            end if;
          end process;
        end Arch_D;
