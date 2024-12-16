library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_tb is
--  Port ( );
end FSM_tb;

architecture Behavioral of FSM_tb is

    component FSM_principal is
        Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
               RESET : in STD_LOGIC;
               selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
               importe : in integer;
               CLK : in STD_LOGIC;
               cantidad_restante : in integer;
               activar_contador : out STD_LOGIC;
               devolver_dinero : out STD_LOGIC;
               cantidad_a_devolver : out integer;
               producto : out STD_LOGIC_VECTOR (1 downto 0)
               );
    end component;
        
    signal SW : std_logic_vector(3 downto 0) := "0000";
    signal activar_contador : std_logic := '0';
    signal devolver_dinero : std_logic := '0';
    signal RESET : std_logic := '0';
    signal selec_producto : std_logic_vector(1 downto 0) := "00";
    signal clk : std_logic := '0';
    signal importe : integer := 0;
    signal cantidad_restante : integer := 0;
    signal cantidad_a_devolver : integer := 0;
    signal entregar_producto : std_logic_vector(1 downto 0);
    signal devolver_monedas : std_logic_vector(3 downto 0);
    
begin

    clk <= not clk after 25ns;

    Master : FSM_principal port map(
        SW => SW,
        RESET => RESET,
        selec_producto => selec_producto,
        importe => importe,
        clk => clk,
        cantidad_restante => cantidad_restante,
        activar_contador => activar_contador,
        devolver_dinero => devolver_dinero,
        cantidad_a_devolver => cantidad_a_devolver,
        producto => entregar_producto
    );
    
    stimuli : process
    begin
        wait for 125ns; -- la máquina debería empezar en el estado de reposo
        
        -- Comprobamos si se activa el estado de recibir monedas
        sw <= "1000";    
        wait for 200ns;
        sw <= "0000"; -- al hacer esto no debería cambiar de estado.
        wait for 50ns;
        
        -- Al hacer lo siguiente debería actualizarse el precio
        selec_producto <= "10";
        wait for 100ns;
        selec_producto <= "01";
        wait for 100ns;
        selec_producto <= "11";
        wait for 100ns;
        selec_producto <= "00";
        wait for 100ns;
        -- En este punto, el estado debería seguir siendo el de recibir monedas
        
        -- Probamos a comprar el producto de 1 euro introduciendo 1.30
        -- Debería entregar el producto y después pasar a devolver el dinero
        importe <= 130;
        wait for 50ns;
        selec_producto <= "10";
        cantidad_restante <= 30;
        wait for 200ns;
        selec_producto <= "00";
        -- En este punto, el estado debería ser el de devolver el dinero
        
        wait for 200ns;        
        cantidad_restante <= 0; -- volvemos al reposo
        
        
        wait for 1000ns;
    end process;

end Behavioral;
