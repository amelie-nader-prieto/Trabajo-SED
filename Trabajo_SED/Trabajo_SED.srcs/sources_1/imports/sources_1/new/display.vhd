library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 use ieee.numeric_std.all; 

 

entity display is
  PORT(
    cuenta : IN std_logic_vector(3 DOWNTO 0);
    clk: IN std_logic;
   
    digsel : OUT std_logic_vector(7 DOWNTO 0);
    segmentos : OUT std_logic_vector(7 DOWNTO 0) --teniendo en cuenta el punto del display ser  vector de 8 bits
    );
end display;

 

architecture Behavioral of display is
    signal numero : integer;
    signal anodos: natural range 0 to 7 :=0;
     signal show: natural range 0 to 18 :=0;
     signal clk_counter: natural range 0 to 20000 :=0;
begin
   process(clk)
    begin
        --Periodo 1.6 ms-> clk_counter=160000
       if rising_edge(clk) then
         clk_counter<=clk_counter + 1;
       
         if anodos > 7 then
            anodos<=0;
         end if;
         
          --periodo/8 = 0.2 ms -> clk_counter=20000
         if clk_counter>=20000 then
            clk_counter<=0;
            anodos<=anodos +1;
         end if;
       end if;

 

    end process;
   
   --Activar display, cada display se iluminar  durante 1/8 ciclo, es decir 2ms
   process(anodos)
     begin
     numero <= to_integer(unsigned(cuenta));
      if numero<=150 then --entre 0  a 1.5 
         case anodos is
           when 0=>digsel <="11111110";
           when 1=>digsel <="11111101";
           when 2=>digsel <="11111011";
           when others=>digsel<="11111111";
         end case;
       end if;
 
   
   end process;
   
   --Indicar en cada caso qu  n meros o letras se mostrar n en los displays
   process(anodos)
     begin
     if numero=0 then --0 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=0;--n  0
           when 2=>show<=16; --n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        
       else
        
        if numero=10 then --0.1 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=1;--n  1
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=20 then --0.2 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=2;-- n  2
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=30 then --0.3 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=3;--n  3
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=40 then --0.4 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=4;-- n 4
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=50 then --0.5 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=5;--n 5
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=60 then --0.6 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=6;--n 6
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=70 then --0.7 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=7;--n 7
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=80 then --0.8 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=8;--n 8
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=90 then --0.9 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=9;--n 9
           when 2=>show<=10;--n cero con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;
        
        if numero=100 then --1.0 
        case anodos is
           when 0=>show<=0;
           when 1=>show<=0;
           when 2=>show<=11;--n  uno con punto
           when others=>show<=12;--no muestra nada en display
         end case;
        end if;

if numero=110 then --1.1 
    case anodos is
        when 0=>show<=0;
        when 1=>show<=1;--n  1
        when 2=>show<=11;--n  uno con punto
        when others=>show<=12;--no muestra nada en display
    end case;
end if;

if numero=120 then --1.2 
    case anodos is
        when 0=>show<=0;
        when 1=>show<=2;-- n  2
        when 2=>show<=11;--n  uno con punto
        when others=>show<=12;--no muestra nada en display
    end case;
end if;

if numero=130 then --1.3 
    case anodos is
        when 0=>show<=0;
        when 1=>show<=3;--n  3
        when 2=>show<=11;--n  uno con punto
        when others=>show<=12;--no muestra nada en display
    end case;
end if;

if numero=140 then --1.4 
    case anodos is
        when 0=>show<=0;
        when 1=>show<=4;-- n 4
        when 2=>show<=11;--n  uno con punto
        when others=>show<=12;--no muestra nada en display
    end case;
end if;
        
      if numero=150 then --1.5 
    case anodos is
        when 0=>show<=0;
        when 1=>show<=5;-- n 4
        when 2=>show<=11;--n  uno con punto
        when others=>show<=12;--no muestra nada en display
    end case;
end if;
       end if;
         
        
   end process;
  
   --Activar los segmentos del display
   process(show)
     begin
      case show is
       when 0=>segmentos<="10000001"; --0
       when 1=>segmentos<="11001111"; --1
       when 2=>segmentos<="10010010"; --2
       when 3=>segmentos<="10000110"; --3
       when 4=>segmentos<="11001100"; --4
       when 5=>segmentos<="10100100"; --5
       when 6=>segmentos<="10100000"; --6
       when 7=>segmentos<="10001111"; --7
       when 8=>segmentos<="10000000"; --8
       when 9=>segmentos<="10000100"; --9

       
       when 10=>segmentos<="00000001"; --0.   n  0 con punto
        when 11=>segmentos<="01001111"; --1.  n  1 con punto
        when 12=>segmentos<="11111111"; --No se muestra nada
       when others=>segmentos<="11111111"; 
     end case;
   end process;

 


end Behavioral;