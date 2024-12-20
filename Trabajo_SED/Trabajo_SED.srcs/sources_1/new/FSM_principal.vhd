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
           producto : out STD_LOGIC_VECTOR (1 downto 0)); -- LEDs de la placa
end FSM_principal;

architecture Behavioral of FSM_principal is

type states is (reposo,
                recibiendo_monedas,
                devolviendo_el_dinero,
                entregando_producto,
                calculando_precio,
                operacion_cancelada,
                producto_entregado);
                
signal current_state : states := reposo;
signal next_state : states;
signal precio : integer := 0; -- precio del producto (0 cuando no se ha seleccionado ningún producto)
signal i_cantidad_a_devolver : integer := 0;

begin
    
    state_reg : process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    nextstate_decod : process(current_state, sw, reset, selec_producto, precio, importe, cantidad_restante)
    begin
        case current_state is
            when reposo =>
                if SW = "1000" or sw = "0100" or sw = "0010" or sw = "0001" then next_state <= recibiendo_monedas;
                else next_state <= reposo;
                end if;
                
            when recibiendo_monedas =>
                if reset = '1' then next_state <= operacion_cancelada;
                elsif selec_producto /= "00" then next_state <= calculando_precio;
                else next_state <= recibiendo_monedas;
                end if;
                
            when calculando_precio =>
                if precio = 0 then next_state <= calculando_precio;
                elsif (importe < precio) then next_state <= recibiendo_monedas;
                elsif (importe >= precio) then next_state <= entregando_producto; 
                end if;
                
            when devolviendo_el_dinero =>
                if cantidad_restante = 0 then next_state <= reposo;
                else next_state <= devolviendo_el_dinero;
                end if;
                
            when entregando_producto =>
                next_state <= producto_entregado;
            
            when operacion_cancelada =>
                if (i_cantidad_a_devolver > 0) then next_state <= devolviendo_el_dinero;
                elsif (i_cantidad_a_devolver = 0) then next_state <= reposo;
                else next_state <= operacion_cancelada;
                end if;
            
            when producto_entregado =>
                if (i_cantidad_a_devolver > 0) then next_state <= devolviendo_el_dinero;
                elsif (i_cantidad_a_devolver = 0) then next_state <= reposo;
                else next_state <= producto_entregado;
                end if;
            
        end case;
    end process;
    
    output_decod : process(current_state)
    begin
        
        case current_state is
            when reposo =>
                activar_contador <= '0'; devolver_dinero <= '0';
                i_cantidad_a_devolver <= 0; producto <= "00";
                precio <= 0;
                
            when recibiendo_monedas =>
                activar_contador <= '1'; devolver_dinero <= '0';
                i_cantidad_a_devolver <= 0; producto <= "00";
                precio <= 0;
                
            when calculando_precio =>
                activar_contador <= '1'; devolver_dinero <= '0';
                i_cantidad_a_devolver <= 0; producto <= "00";
                -- calcular el precio del producto
                -- en este caso hay dos productos, uno cuesta 1 euro y el otro 1.50
                case selec_producto is
                    when "10" => precio <= 100;
                    when "01" => precio <= 150;
                    when others => precio <= 9999;
                end case;
                
            when devolviendo_el_dinero =>
                activar_contador <= '0'; devolver_dinero <= '1';
                producto <= "00";
                precio <= 0;
                
            when entregando_producto =>
                activar_contador <= '0'; devolver_dinero <= '0'; 
                i_cantidad_a_devolver <= 0;
                -- activar la señal del producto...
                case selec_producto is
                    when "10" => producto <= "10";
                    when "01" => producto <= "01";
                    when others => producto <="00";
                end case;                
                
            when operacion_cancelada =>
                activar_contador <= '0';
                producto <= "00";
                precio <= 0;
                -- al cancelar la operación, el siguiente paso es devolver todo el dinero que se ha introducido.
                i_cantidad_a_devolver <= importe;
                if i_cantidad_a_devolver > 0 then devolver_dinero <= '1';
                else devolver_dinero <= '0';
                end if;
                
            when producto_entregado =>
                activar_contador <= '0';
                producto <= "00";
                -- cuando se ha entregado el producto, el siguiente paso es devolver el dinero sobrante
                i_cantidad_a_devolver <= importe - precio;
                precio <= 0;
                if i_cantidad_a_devolver > 0 then devolver_dinero <= '1';
                else devolver_dinero <= '0';
                end if;
            
        end case;
        
    end process;
    
    cantidad_a_devolver <= i_cantidad_a_devolver;
    
end Behavioral;
