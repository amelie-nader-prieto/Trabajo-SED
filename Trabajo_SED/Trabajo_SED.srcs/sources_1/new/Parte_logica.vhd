library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Esta entidad engloba toda la parte lógica del circuito,
-- incluyendo las FSM principal y secundaria y el contador.
entity Parte_logica is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           importe : out integer;
           selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
           producto : out STD_LOGIC_VECTOR (1 downto 0);
           devolver_dinero : out STD_LOGIC_VECTOR (3 downto 0));
end Parte_logica;

architecture Behavioral of Parte_logica is

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
            reset_contador : out std_logic;
            producto : out STD_LOGIC_VECTOR (1 downto 0)
            );
    end component;
    
    component devolver_el_dinero is
        Port ( cantidad : in integer;
               enable : in STD_LOGIC;
               clk : in STD_LOGIC;
               cantidad_restante : out integer;
               devolver_monedas : out std_logic_vector(3 downto 0)
               );
    end component;
    
    component CONTADOR_DE_MONEDAS is
        Port ( clk, clr_n, enable: in std_logic ;
               sw_in: in std_logic_vector (3 downto 0);
               total: out integer range 0 to 100
               );
    end component;

--- Señales internas
signal i_importe : integer; -- salida del contador, entrada de la fsm
signal i_cantidad_restante : integer; -- salida de devolver el dinero, entrada de la fsm
signal enable_contador : std_logic;
signal enable_slave : std_logic;
signal i_cantidad_a_devolver : integer;

signal sw_contador : std_logic_vector(3 downto 0); -- entrada del contador
signal reset_contador : std_logic; -- el contador se resetea a nivel BAJO

begin
FSM_Master : FSM_principal port map(
    SW => SW,
    RESET => RESET,
    selec_producto => selec_producto,
    importe => i_importe,
    clk => clk,
    cantidad_restante => i_cantidad_restante,
    activar_contador => enable_contador,
    devolver_dinero => enable_slave,
    cantidad_a_devolver => i_cantidad_a_devolver,
    reset_contador => reset_contador,
    producto => producto
);

FSM_Slave : devolver_el_dinero port map(
    cantidad => i_cantidad_a_devolver,
    enable => enable_slave,
    clk => clk,
    cantidad_restante => i_cantidad_restante,
    devolver_monedas => devolver_dinero
);

Contador : CONTADOR_DE_MONEDAS port map(
    clk => clk,
    clr_n => reset_contador,
    enable => enable_contador,
    sw_in => sw_contador,
    total => i_importe
);

reg_entrada_contador : process(clk)
begin
    if rising_edge(clk) then sw_contador <= sw;
    end if;
end process;

importe <= i_importe;

end Behavioral;
