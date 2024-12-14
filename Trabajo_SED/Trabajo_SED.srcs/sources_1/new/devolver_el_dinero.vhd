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

begin

    state_reg : process(clk)
    --variable cantidad_prev : integer := cantidad;
    begin
    if enable = '1' then
        if rising_edge(clk) then --current_state <= next_state;
            if cantidad_prev /= cantidad then current_state <= entrada_cambiada; cantidad_prev <= cantidad;
            else current_state <= next_state;
            end if;
        end if;
    end if;
    end process;
    
    nextstate_decod : process(current_state) --, cantidad)
    begin
        --if cantidad'event then next_state <= entrada_cambiada;       
        if current_state = reposo then
            if dinero_restante >= 100 then next_state <= devolver100;
            elsif dinero_restante >= 50 then next_state <= devolver50;
            elsif dinero_restante >= 20 then next_state <= devolver20;
            elsif dinero_restante >= 10 then next_state <= devolver10;
            else next_state <= reposo;
            end if;
        else next_state <= reposo;
        end if;
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
    
    cantidad_restante <= dinero_restante;

end Behavioral;
