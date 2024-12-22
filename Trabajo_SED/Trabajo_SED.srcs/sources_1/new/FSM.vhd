library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity FSM is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in std_logic;
           reset : in STD_LOGIC;
           selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
           importe : in integer;
           activar_contador : out STD_LOGIC;
           reset_contador : out std_logic;
           entregar_producto : out STD_LOGIC_VECTOR (1 downto 0);
           devolver_monedas : out STD_LOGIC_VECTOR (3 downto 0));
end FSM;

architecture Behavioral of FSM is

    signal i_cantidad_restante : integer;
    signal i_cantidad_a_devolver : integer;
    signal activar_slave : std_logic;

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

begin

    FSM_Master : FSM_principal port map(
        sw => sw,
        clk => clk,
        reset => reset,
        selec_producto => selec_producto,
        importe => importe,
        activar_contador => activar_contador,
        devolver_dinero => activar_slave,
        cantidad_restante => i_cantidad_restante,
        cantidad_a_devolver => i_cantidad_a_devolver,
        reset_contador => reset_contador,
        producto => entregar_producto
    );
    FSM_Slave : devolver_el_dinero port map(
        cantidad => i_cantidad_a_devolver,
        enable => activar_slave,
        clk => clk,
        cantidad_restante => i_cantidad_restante,
        devolver_monedas => devolver_monedas
    );

end Behavioral;
