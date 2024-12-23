library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity devolver_el_dinero_tb is
--  Port ( );
end devolver_el_dinero_tb;

architecture Behavioral of devolver_el_dinero_tb is

component devolver_el_dinero is
    Port ( cantidad : in integer;
           enable : in STD_LOGIC;
           clk : in STD_LOGIC;
           cantidad_restante : out integer;
           devolver_monedas : out std_logic_vector(3 downto 0));
end component;

signal cantidad : integer := 0;
signal clk : std_logic := '0';
signal enable : std_logic := '0';
signal monedas : std_logic_vector(3 downto 0);
signal cantidad_restante : integer;

constant clk_period : time := 10ns;
constant duracion_estado : time := 100 * clk_period;

begin

uut : devolver_el_dinero port map (cantidad => cantidad, enable => enable, clk => clk, cantidad_restante => cantidad_restante, devolver_monedas => monedas);

clk <= not clk after clk_period/2;

stimuli : process
begin

    wait for 25ns; enable <= '1';
   
    -- probamos a introducir una cantidad a ver si la devuelve correctamente
    cantidad <= 120; -- debería devolver 100 y luego 20
    wait for 10*duracion_estado;
    cantidad <= 280; -- debería devolver 100, 100, 50, 20 y 10
    wait for 10*duracion_estado;
    
    -- probamos a introducir una cantidad y cambiarla antes de que termine de devolverla
    cantidad <= 2000;
    wait for 75ns; -- debería devolver 100 varias veces
    cantidad <= 2500; -- debería actualizarse inmediatemente
    wait for 500ns; -- debería devolver 100 varias veces
    
    -- si desactivamos el enable, deberían dejar de actualizarse los estados
    enable <= '0'; -- las salidas deberían quedarse congeladas
    wait for 500ns;
    
end process;

end Behavioral;
