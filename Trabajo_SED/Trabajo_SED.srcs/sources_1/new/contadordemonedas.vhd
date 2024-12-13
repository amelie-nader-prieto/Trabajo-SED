library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity sumadordemonedas is
Port ( 
    clk,clr_n, enable: in std_logic;
    valor_moneda: in integer range 0 to 100;
    cuenta:out integer range 0 to 200
);
end sumadordemonedas;

architecture Behavioral of sumadordemonedas is

begin
    process(clk,clr_n)
    variable count: integer range 0 to 100;
    
    begin
        if enable = '1' then
            if clr_n ='0' then
                count:=0;
            elsif rising_edge (clk) then
              count := count + valor_moneda;
            end if;
         end if;
    cuenta<=count; 
    end process;
end Behavioral;
