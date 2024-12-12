library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity sumadordemonedas is
Port ( 
    clk,clr_n, enable: in std_logic;
    moneda: in std_logic_vector(3 downto 0);
    cuenta:out integer range 0 to 110
);
end sumadordemonedas;

architecture Behavioral of sumadordemonedas is

begin
    process(clk,clr_n)
    variable count: integer range 0 to 100;
    variable cents: integer range 0 to 100;
    begin
        if enable = '1' then
            if clr_n ='0' then
                count:=0;
            elsif rising_edge (clk) then
                
                case moneda is
                    when "0001" => cents:=10;
                    when "0010" => cents:=20;
                    when "0100" => cents:=50;
                    when "1000" => cents:=100;
                    when others => cents:=0;
                end case;
              count := count + cents;
            end if;
         end if;
    cuenta<=count; 
    end process;
end Behavioral;
