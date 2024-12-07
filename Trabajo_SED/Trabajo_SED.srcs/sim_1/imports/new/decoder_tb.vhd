----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2024 23:07:57
-- Design Name: 
-- Module Name: decoder_tb - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder_tb is
--  Port ( );
end decoder_tb;

architecture Behavioral of decoder_tb is

component decoder is
    port(
        code : in std_logic_vector(3 downto 0);
        led : out std_logic_vector(6 downto 0)
        );
end component;

signal code : std_logic_vector(3 downto 0);
signal led : std_logic_vector(6 downto 0);

type vtest is record
    code : std_logic_vector(3 downto 0);
    led : std_logic_vector(6 downto 0);
    end record;

type vtest_vector is array (natural range <>) of vtest;

constant test : vtest_vector := (
    (code => "0000", led => "0000001"),
    (code => "0001", led => "1001111"),
    (code => "0010", led => "0010010"),
    (code => "0011", led => "0000110"),
    (code => "0100", led => "1001100"),
    (code => "0101", led => "0100100"),
    (code => "0110", led => "0100000"),
    (code => "0111", led => "0001111"),
    (code => "1000", led => "0000000"),
    (code => "1001", led => "0000100"),
    (code => "1010", led => "1111110"),
    (code => "1011", led => "1111110"),
    (code => "1100", led => "1111110"),
    (code => "1101", led => "1111110"),
    (code => "1110", led => "1111110"),
    (code => "1111", led => "1111110")
);

begin
uut : decoder port map(code => code, led => led);

tb : process
begin
wait for 100ns;
    for i in 0 to test'high loop
        code <= test(i).code;
        wait for 20 ns;
        assert led = test(i).led
            report "Salida incorrecta"
            severity failure;
    end loop;
    
    assert false
        report "Simulación finalizada, test superado"
        severity failure;
    
end process;
end Behavioral;
