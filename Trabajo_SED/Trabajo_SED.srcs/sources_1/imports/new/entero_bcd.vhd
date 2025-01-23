
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity entero_bcd is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        enable: in std_logic;
        entero : in integer range 0 to 200;  
        bcd : out std_logic_vector(3 downto 0)
    );
end entity;

architecture Behavioral of entero_bcd is
    signal bcd_o : unsigned(3 downto 0);  
begin

    process(clk, rst)
    begin
        if rst = '0' then
            bcd_o <= (others => '0');  
        elsif rising_edge(clk) then
            if enable='1' then 
                 
                bcd_o(3 downto 0)  <= to_unsigned(entero mod 10, 4);  
            end if;
        end if;
    end process;

    
    bcd <= std_logic_vector(bcd_o);

end Behavioral;

