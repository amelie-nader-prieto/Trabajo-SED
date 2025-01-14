library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY control_display IS
    PORT (
        clk       : IN std_logic;                             
        rst       : IN std_logic;                             
        numero    : IN integer ;  
        enable    : in std_logic;               
        segmentos : OUT std_logic_vector(6 DOWNTO 0);        
        sele      : OUT std_logic_vector(2 DOWNTO 0)   
             
    );
END ENTITY control_display;

ARCHITECTURE Behavioral OF control_display IS

    SIGNAL bcd_out : std_logic_vector(11 DOWNTO 0);         
    SIGNAL code_in : std_logic_vector(3 DOWNTO 0);          
    SIGNAL sel     : unsigned(1 DOWNTO 0) := "00";         

    COMPONENT entero_bcd
        PORT (
            clk    : IN std_logic;
            rst    : IN std_logic;
            enable: In std_logic;
            entero : IN integer;
            bcd    : OUT std_logic_vector(11 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT decoder
        PORT (
            code : IN std_logic_vector(3 DOWNTO 0);
            led  : OUT std_logic_vector(6 DOWNTO 0)
        );
    END COMPONENT;

BEGIN

    Inst_entero_bcd: entero_bcd
        PORT MAP (
            clk    => clk,
            rst    => rst,
            enable=>enable,
            entero => numero,
            bcd    => bcd_out
        );

    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            sel <= "00"; 
        ELSIF rising_edge(clk) THEN
            IF sel < "10" THEN
                sel <= sel + 1; 
            ELSE
                sel <= "00";
            END IF;
        END IF;
    END PROCESS;

    WITH sel SELECT
        code_in <= bcd_out(3 DOWNTO 0)  WHEN "00", 
                   bcd_out(7 DOWNTO 4)  WHEN "01", 
                   bcd_out(11 DOWNTO 8) WHEN "10",  
                   "0000"               WHEN OTHERS; 

    WITH sel SELECT
        sele <= "110" WHEN "00",    
                "101" WHEN "01",    
                "011" WHEN "10",   
                "111" WHEN OTHERS;  

    Inst_decoder: decoder
        PORT MAP (
            code => code_in,      
            led  => segmentos     
        );

END ARCHITECTURE Behavioral;