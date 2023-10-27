library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity BasculeD_rst is
  port(
    D,Reset, CLK : in std_logic;
    Q,Qbar: out std_logic
  );
  end BasculeD_rst;
  
  architecture Arch_Drst of BasculeD_rst is
      begin
        process(CLK)
          begin
            if Reset = '1' then
              Q <= '0';
            elsif rising_edge(CLK) then
              Q<=D;
              Qbar<=not D;
            end if;
          end process;
        end Arch_Drst;


