library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity display is
  PORT(
    cuenta : IN std_logic_vector(3 DOWNTO 0);
    clk: IN std_logic;
   
    digsel : OUT std_logic_vector(7 DOWNTO 0);
    segmentos : OUT std_logic_vector(7 DOWNTO 0) --se tiene en cuenta el punto -> 1 bits mas
    );
end display;

architecture Behavioral of display is
    signal valor_moneda : integer;
    signal anodos: natural range 0 to 7 :=0;
    signal muetra: natural range 0 to 18 :=0;
    signal clk_counter: natural range 0 to 30000 :=0;
begin
   process(clk)
    begin
       
       if rising_edge(clk) then
         clk_counter<=clk_counter + 1;
       
         if anodos > 7 then
            anodos<=0;
         end if;
        
         if clk_counter>=30000 then
            clk_counter<=0;
            anodos<=anodos +1;
         end if;
       end if;

    end process;
   
   --Activar display
   process(anodos)
     begin
     valor_moneda <= to_integer(unsigned(cuenta));
      if valor_moneda<=150 then --entre 0  a 1.5 
         case anodos is
           when 0=>digsel <="11111110";
           when 1=>digsel <="11111101";
           when 2=>digsel <="11111011";
           when others=>digsel<="11111111";
         end case;
       end if;
 
   end process;
   
   process(anodos)
     begin
     if valor_moneda=0 then --0 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=0;--n  0
           when 2=>muetra<=16; --n cero con punto
           when others=>muetra<=12;
         end case;
        
       else
        
        if valor_moneda=10 then --0.1 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=1;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=20 then --0.2 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=2;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=30 then --0.3 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=3;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=40 then --0.4 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=4;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=50 then --0.5 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=5;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=60 then --0.6 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=6;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=70 then --0.7 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=7;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=80 then --0.8 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=8;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=90 then --0.9 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=9;
           when 2=>muetra<=10;
           when others=>muetra<=12;
         end case;
        end if;
        
        if valor_moneda=100 then --1.0 
        case anodos is
           when 0=>muetra<=0;
           when 1=>muetra<=0;
           when 2=>muetra<=11;
           when others=>muetra<=12;
         end case;
        end if;

if valor_moneda=110 then --1.1 
    case anodos is
        when 0=>muetra<=0;
        when 1=>muetra<=1;
        when 2=>muetra<=11;
        when others=>muetra<=12;
    end case;
end if;

if valor_moneda=120 then --1.2 
    case anodos is
        when 0=>muetra<=0;
        when 1=>muetra<=2;
        when 2=>muetra<=11;
        when others=>muetra<=12;
    end case;
end if;

if valor_moneda=130 then --1.3 
    case anodos is
        when 0=>muetra<=0;
        when 1=>muetra<=3;
        when 2=>muetra<=11;
        when others=>muetra<=12;
    end case;
end if;

if valor_moneda=140 then --1.4 
    case anodos is
        when 0=>muetra<=0;
        when 1=>muetra<=4;
        when 2=>muetra<=11;
        when others=>muetra<=12;
    end case;
end if;
        
      if valor_moneda=150 then --1.5 
    case anodos is
        when 0=>muetra<=0;
        when 1=>muetra<=5;
        when 2=>muetra<=11;
        when others=>muetra<=12;
    end case;
end if;
       end if;
         
   end process;
  
   --Activar los segmentos del display
   process(muetra)
     begin
      case muetra is
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