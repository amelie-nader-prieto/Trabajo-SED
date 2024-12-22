library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity devolver_el_dinero is
    Port ( cantidad : in integer;
           enable : in STD_LOGIC;
           clk : in STD_LOGIC;
           cantidad_restante : out integer;
           devolver_monedas : out std_logic_vector(3 downto 0)
           );
end devolver_el_dinero;

architecture Behavioral of devolver_el_dinero is

    type states is (reposo, devolver100, devolver50, devolver20, devolver10, entrada_cambiada);
    signal current_state : states := reposo;
    signal next_state : states;
    signal dinero_restante : integer := 0;
    signal cantidad_prev : integer := 0;
    
    -- temporización
    -- (los estados en los que se encienden leds deben durar un tiempo, por ejemplo 1 segundo)
    signal tiempo_terminado : std_logic := '0';
    signal count : integer := 0;
    constant count_max : integer := 10; -- VALOR PARA SIMULAR
    -- constant count_max : integer := 100_000_000; -- VALOR REAL

begin

    temporizacion : process(clk)
    begin
        if rising_edge(clk) then
            if current_state = devolver100 or current_state = devolver50 or current_state = devolver20 or current_state = devolver10 then
            -- en los estados en los que se activan leds debe llevarse la cuenta
                if count >= count_max then -- ya ha pasado el tiempo
                    tiempo_terminado <= '1';
                    count <= 0;
                else -- aún no ha pasado el tiempo
                    tiempo_terminado <= '0';
                    count <= count+1;
                end if;
            else
            -- en los demás estados, reiniciar la cuenta
                count <= 0;
                tiempo_terminado <= '0';
            end if;
        end if;
    end process;

    state_reg : process(clk)
    begin
    if enable = '1' then
        if rising_edge(clk) then --current_state <= next_state;
            if cantidad_prev /= cantidad then current_state <= entrada_cambiada; cantidad_prev <= cantidad;
            else current_state <= next_state;
            end if;
        end if;
    -- si el enable se desactivó mientras estábamos en uno de los estados temporizados, volver al reposo cuando termine
    elsif enable = '0' and tiempo_terminado = '1' then
        if rising_edge(clk) then current_state <= next_state;
        end if;
    end if;
    end process;
    
    nextstate_decod : process(current_state, tiempo_terminado) --, cantidad)
    begin
    
        case current_state is
            when reposo =>
                if dinero_restante >= 100 then next_state <= devolver100;
                elsif dinero_restante >= 50 then next_state <= devolver50;
                elsif dinero_restante >= 20 then next_state <= devolver20;
                elsif dinero_restante >= 10 then next_state <= devolver10;
                else next_state <= reposo;
                end if;
            when entrada_cambiada =>
                next_state <= reposo;
            when others =>     
                if tiempo_terminado = '1' then next_state <= reposo;
                else next_state <= current_state;
                end if;
        
        end case;
             
    end process;
    
    output_decod : process(current_state)
    begin
    
        case current_state is
            when reposo => devolver_monedas <= "0000";
            when entrada_cambiada => devolver_monedas <= "0000"; dinero_restante <= cantidad;
            when devolver100 => devolver_monedas <= "1000"; dinero_restante <= dinero_restante - 100;
            when devolver50 => devolver_monedas <= "0100"; dinero_restante <= dinero_restante - 50;
            when devolver20 => devolver_monedas <= "0010"; dinero_restante <= dinero_restante - 20;
            when devolver10 => devolver_monedas <= "0001"; dinero_restante <= dinero_restante - 10;
            when others => devolver_monedas <= "0000";
        end case;
    
    end process;
        
    cantidad_restante <= dinero_restante ;

end Behavioral;
