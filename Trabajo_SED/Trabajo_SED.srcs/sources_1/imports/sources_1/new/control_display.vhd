library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY control_display IS
    PORT (
        clk       : IN std_logic;                             
        rst       : IN std_logic;                             
        numero    : IN integer range 0 to 200;  
        enable    : in std_logic;               
        digsel : OUT std_logic_vector(7 DOWNTO 0);
        segmentos : OUT std_logic_vector(7 DOWNTO 0)       
          
             
    );
END ENTITY;

ARCHITECTURE Behavioral OF control_display IS

    SIGNAL bcd_out : std_logic_vector(3 DOWNTO 0);         
    SIGNAL code_in : std_logic_vector(3 DOWNTO 0);          
    
    COMPONENT entero_bcd
        PORT (
            clk    : IN std_logic;
            rst    : IN std_logic;
            enable: In std_logic;
            entero : IN integer range 0 to 200;
            bcd    : OUT std_logic_vector(3 DOWNTO 0)
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
            clk    => clk,
            rst    => rst,
            enable=>enable,
            entero => numero,
            bcd    => bcd_out
        );
      
          
Inst_display: display
        PORT MAP (
            clk    => clk,
            segmentos => segmentos,
            cuenta=>bcd_out,
           digsel => digsel
            
        );

END ARCHITECTURE Behavioral;
