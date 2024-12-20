library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Parte_logica_tb is
--  Port ( );
end Parte_logica_tb;

architecture Behavioral of Parte_logica_tb is

    component Parte_logica is
        Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
               clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               importe : out integer;
               selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
               producto : out STD_LOGIC_VECTOR (1 downto 0);
               devolver_dinero : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal sw : std_logic_vector(3 downto 0);
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal importe : integer;
    signal selec_prod : std_logic_vector(1 downto 0) := "00";
    signal producto : std_logic_vector(1 downto 0);
    signal devolver_dinero : std_logic_vector(3 downto 0);

begin

    uut : Parte_logica port map(
        sw => sw,
        clk => clk,
        reset => reset,
        importe => importe,
        selec_producto => selec_prod,
        producto => producto,
        devolver_dinero => devolver_dinero
        );

    clk <= not clk after 25ns;
    
    stimuli : process
    begin
        wait for 125ns;
        -- Comprobamos si se activa el contador
        sw <= "1000";    
        wait for 50ns;
        sw <= "0000"; -- al hacer esto no debería cambiar de estado.
        wait for 50ns;
        wait for 1000ns;
    end process;    

end Behavioral;
