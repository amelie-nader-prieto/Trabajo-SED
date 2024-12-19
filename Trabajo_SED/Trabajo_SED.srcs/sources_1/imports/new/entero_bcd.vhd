----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2024 01:01:32
-- Design Name: 
-- Module Name: entero_bcd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity entero_bcd is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        entero : in integer;  
        bcd : out std_logic_vector(11 downto 0)
    );
end entero_bcd;

architecture Behavioral of entero_bcd is
    signal bcd_o : unsigned(11 downto 0);  
begin

    process(clk, rst)
    begin
        if rst = '0' then
            bcd_o <= (others => '0');  
        elsif rising_edge(clk) then
            
            bcd_o(11 downto 8) <= to_unsigned(entero / 100, 4);  
            bcd_o(7 downto 4)  <= to_unsigned(entero / 10, 4);   
            bcd_o(3 downto 0)  <= to_unsigned(entero mod 10, 4);  
        end if;
    end process;

    
    bcd <= std_logic_vector(bcd_o);

end Behavioral;