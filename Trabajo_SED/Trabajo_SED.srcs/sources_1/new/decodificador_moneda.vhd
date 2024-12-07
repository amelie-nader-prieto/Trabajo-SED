----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2024 12:39:08
-- Design Name: 
-- Module Name: decodificador_moneda - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decodificador_moneda is
    Port ( sw_in : in STD_LOGIC_VECTOR (3 downto 0); -- Esta es la entrada sincronizada, tratada, etc.
           valor_moneda : out integer range 0 to 100); -- La salida es el valor en céntimos
end decodificador_moneda;

architecture Behavioral of decodificador_moneda is
begin

-- Cada uno de los interruptores de la placa se corresponde a un tipo de moneda
-- Monedas admitidas: 10c, 20c, 50c o 1 euro
-- Este componente convierte la información del interruptor pulsado con un valor entero
with sw_in select
    valor_moneda <= 10 when "0001",
                    20 when "0010",
                    50 when "0100",
                    100 when "1000",
                    0 when others;

end Behavioral;
