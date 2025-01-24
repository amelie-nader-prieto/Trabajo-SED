library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity entero_bcd is
    Port (  
           valor_moneda : in integer range 0 to 200; -- Cambiado a entrada para usar en el with
           bcd          : out STD_LOGIC_VECTOR (3 downto 0) -- 4 bits para representar el BCD
         ); 
end entero_bcd;

architecture Behavioral of entero_bcd is
begin

-- Cada uno de los valores de `valor_moneda` se convierte en su BCD equivalente
with valor_moneda select
  bcd <= 
    "0000" when 0,
    "0001" when 10,
    "0010" when 20,
    "0011" when 30,
    "0100" when 40,
    "0101" when 50,
    "0110" when 60,
    "0111" when 70,
    "1000" when 80,
    "1001" when 90,
    "1010" when 100,
    "1011" when 110,
    "1100" when 120,
    "1101" when 130,
    "1110" when 140,
    "1111" when 150,
    "0000" when others; -- Default para valores fuera de rango

end Behavioral;
