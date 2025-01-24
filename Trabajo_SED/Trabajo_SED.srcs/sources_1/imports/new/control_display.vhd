library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY control_display IS
    PORT (
        clk       : IN std_logic;                             
        numero    : IN integer range 0 to 200;             
        digsel : OUT std_logic_vector(7 DOWNTO 0);
        segmentos : OUT std_logic_vector(7 DOWNTO 0)       
          
             
    );
END ENTITY;

ARCHITECTURE Behavioral OF control_display IS

    SIGNAL bcd_out : std_logic_vector(3 DOWNTO 0);         
    SIGNAL code_in : std_logic_vector(3 DOWNTO 0);          
    
    COMPONENT entero_bcd
        PORT (
            valor_moneda : in integer range 0 to 150; -- Cambiado a entrada para usar en el with
            bcd          : out STD_LOGIC_VECTOR (3 downto 0) -- 4 bits para representar el BCD
        );
    END COMPONENT;

COMPONENT display is
  PORT(
     cuenta : IN std_logic_vector(3 DOWNTO 0);
     clk: IN std_logic;
     digsel : OUT std_logic_vector(7 DOWNTO 0);
     segmentos : OUT std_logic_vector(7 DOWNTO 0) --teniendo en cuenta el punto del display ser  vector de 8 bits
    );
end COMPONENT;

    

BEGIN

    

    Inst_entero_bcd: entero_bcd
        PORT MAP (
          valor_moneda  => numero,
           bcd=>bcd_out
        );
      
          
    Inst_display: display
        PORT MAP (
            clk    => clk,
            segmentos => segmentos,
            cuenta=>bcd_out,
           digsel => digsel
            
        );

END ARCHITECTURE Behavioral;
