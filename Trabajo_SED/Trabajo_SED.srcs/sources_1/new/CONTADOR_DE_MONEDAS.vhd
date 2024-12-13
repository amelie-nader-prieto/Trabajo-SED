library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity CONTADOR_DE_MONEDAS is
  Port (
  clk, clr_n, enable: in std_logic ;
  sw_in: in std_logic_vector (3 downto 0);
  total: out integer range 0 to 100
 
);
end CONTADOR_DE_MONEDAS;

architecture Behavioral of CONTADOR_DE_MONEDAS is

signal valor_moneda: integer range 0 to 100;

component sumadordemonedas
port(
    clk:  in std_logic;
    clr_n: in std_logic;
    enable: in std_logic;
    valor_moneda: in integer range 0 to 100;
    cuenta:out integer range 0 to 200
);
end component;

component decodificador_moneda
port(
    sw_in : in STD_LOGIC_VECTOR (3 downto 0); 
    valor_moneda : out integer range 0 to 100
); 
end component;

begin

Inst_decodificador_moneda: decodificador_moneda PORT MAP(
    sw_in=>sw_in,
    valor_moneda=>valor_moneda
);

Inst_sumadordemonedas: sumadordemonedas PORT MAP(
    clk=>clk,
    clr_n=>clr_n,
    enable=>enable,
    valor_moneda=>valor_moneda,
    cuenta=>total
    
);
end Behavioral;