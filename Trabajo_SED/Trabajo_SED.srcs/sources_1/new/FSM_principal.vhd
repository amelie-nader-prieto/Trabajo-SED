library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity FSM_principal is
    Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
           RESET : in STD_LOGIC;
           selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
           importe : in integer; -- salida del contador, indica cuánto dinero se ha introducido
           CLK : in STD_LOGIC;
           cantidad_restante : in integer; -- salida de la FSM de devolver el dinero, indica cuánto queda por devolver
           activar_contador : out STD_LOGIC; -- para activar o desactivar el contador
           devolver_dinero : out STD_LOGIC; -- para activar o desactivar la FSM de devolver el dinero
           cantidad_a_devolver : out integer; -- va a la entrada de la FSM de devolver el dinero
           reset_contador : out std_logic; -- para poner a cero el contador
           producto : out STD_LOGIC_VECTOR (1 downto 0)); -- LEDs de la placa
end FSM_principal;

architecture Behavioral of FSM_principal is

type states is (reposo,
                recibiendo_monedas,
                devolviendo_el_dinero,
                entregando_producto,
                operacion_cancelada,
                producto_entregado);
                
signal current_state : states := reposo;
signal next_state : states;
signal precio : integer := 0; -- precio del producto (0 cuando no se ha seleccionado ningún producto)
signal producto_seleccionado : std_logic_vector(1 downto 0); -- info del producto seleccionado
signal i_cantidad_a_devolver : integer := 0;
signal i_reset_contador : std_logic := '1';

-- temporización
-- (los estados en los que se encienden leds deben durar un tiempo)
signal tiempo_terminado : std_logic := '0';
signal count : integer := 0;
constant count_max : integer := 10; -- VALOR PARA SIMULAR
-- constant count_max : integer := 500_000_000; -- VALOR REAL

begin
    
    temporizacion : process(clk)
    begin
        if rising_edge(clk) then
            if current_state = entregando_producto then
            -- el estado de entregar el producto debe durar lo suficiente como para que se aprecie el encendido del LED
                if count >= count_max then -- ya ha pasado el tiempo
                    tiempo_terminado <= '1';
                    count <= 0;
                else -- aún no ha pasado el tiempo
                    tiempo_terminado <= '0';
                    count <= count + 1;
                end if;
            else
            -- en los demás estados, reiniciar la cuenta
                tiempo_terminado <= '0';
                count <= 0;
            end if;
        end if;
    end process;
    
    state_reg : process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    nextstate_decod : process(current_state, sw, reset, selec_producto, precio, importe, cantidad_restante, tiempo_terminado)
        variable vprecio : integer;
    begin
    
        next_state <= current_state;
        vprecio := precio;
        
        case current_state is
            when reposo =>
                --precio <= 0;
                vprecio := 0;
                if SW = "1000" or sw = "0100" or sw = "0010" or sw = "0001" then next_state <= recibiendo_monedas;
                else next_state <= reposo;
                end if;
                
            when recibiendo_monedas =>
                vprecio := vprecio;
                if reset = '1' then next_state <= operacion_cancelada;
                -- Si se selecciona producto, calculamos el precio
                elsif selec_producto /= "00" then
                    case selec_producto is
                        when "10" => vprecio := 100;
                        when "01" => vprecio := 150;
                        when others => vprecio := 9999;
                    end case;
                    --precio <= vprecio;
                    producto_seleccionado <= selec_producto;
                    -- Si el dinero introducido es suficiente, el siguiente paso es entregar el producto
                    if (importe >= vprecio) then next_state <= entregando_producto;
                    end if;
                else next_state <= recibiendo_monedas;
                end if;
                                
            when devolviendo_el_dinero =>
                vprecio := vprecio;
                if cantidad_restante = 0 then next_state <= reposo;
                else next_state <= devolviendo_el_dinero;
                end if;
                
            when entregando_producto =>
                vprecio := vprecio;
                if tiempo_terminado = '1' then next_state <= producto_entregado;
                else next_state <= entregando_producto;
                end if;
            
            when operacion_cancelada =>
                vprecio := vprecio;
                next_state <= devolviendo_el_dinero;
            
            when producto_entregado =>
                vprecio := vprecio;
                next_state <= devolviendo_el_dinero;
            
            when others =>
                vprecio := vprecio;
                next_state <= reposo;
            
        end case;
        
        precio <= vprecio;
        
    end process;
    
    output_decod : process(current_state)
    begin
        
        case current_state is
            when reposo =>
                -- debería resetearse el contador 
                activar_contador <= '0'; devolver_dinero <= '0';
                i_cantidad_a_devolver <= 0; producto <= "00";
                i_reset_contador <= not reset;
                
            when recibiendo_monedas =>
                activar_contador <= '1'; devolver_dinero <= '0';
                i_cantidad_a_devolver <= 0; producto <= "00";
                i_reset_contador <= not reset;
                
            when devolviendo_el_dinero =>
                activar_contador <= '0'; devolver_dinero <= '1';
                producto <= "00";
                i_cantidad_a_devolver <= i_cantidad_a_devolver;
                i_reset_contador <= not reset;
                
            when entregando_producto =>
                activar_contador <= '0'; devolver_dinero <= '0';
                -- activar la señal del producto...
                case producto_seleccionado is
                    when "10" => producto <= "10";
                    when "01" => producto <= "01";
                    when others => producto <="00";
                end case;
                i_cantidad_a_devolver <= i_cantidad_a_devolver;
                i_reset_contador <= not reset;
                
            when operacion_cancelada =>
                activar_contador <= '0'; devolver_dinero <= '1';
                producto <= "00";
                -- al cancelar la operación, el siguiente paso es devolver todo el dinero que se ha introducido.
                i_cantidad_a_devolver <= importe;
                i_reset_contador <= not reset;
                if importe /= 0 then
                    activar_contador <= '1';
                    i_reset_contador <= '0';
                end if;
                
            when producto_entregado =>
                activar_contador <= '0'; devolver_dinero <= '1';
                producto <= "00";
                i_cantidad_a_devolver <= importe - precio;
                i_reset_contador <= not reset;
                if importe /= 0 then
                    activar_contador <= '1';
                    i_reset_contador <= '0';
                end if;
            
        end case;
        
    end process;
    
    cantidad_a_devolver <= i_cantidad_a_devolver;
    
    reg_reset_contador : process(clk)
    begin
        if rising_edge(clk) then reset_contador <= i_reset_contador;
        end if;
    end process;
    
end Behavioral;
