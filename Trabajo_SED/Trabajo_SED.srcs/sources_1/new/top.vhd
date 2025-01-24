library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity top is
 PORT (
        clk       : IN std_logic;                             
        rst       : IN std_logic;                             
        interruptor:in std_logic_vector (3 downto 0);
        in_pulsadores:in std_logic_vector (1 downto 0);
        segmentos : OUT std_logic_vector(7 DOWNTO 0);
        digsel:out std_logic_vector (7 downto 0);
        entrega_producto:out std_logic_vector(1 downto 0);
        devolver_monedas:out std_logic_vector (3 downto 0)
        
    );
end top;

architecture Behavioral of top is
    SIGNAL int_sync : std_logic_vector(3DOWNTO 0);   
    SIGNAL reset : std_logic; 
    SIGNAL puls : std_logic_vector(1DOWNTO 0);         
    SIGNAL act_cont : std_logic;         
    SIGNAL imp_tot:integer;         
    signal reset_contador : std_logic;
    signal int_sync_contador : std_logic_vector(3 downto 0);


COMPONENT boton_reset
       PORT (
             CLK: IN std_logic ;
            reset: in std_logic ;
            salida_reset: out std_logic
        );
    END COMPONENT;
 
COMPONENT control_display IS
    PORT (
         clk       : IN std_logic;                             
         numero    : IN integer range 0 to 200;             
         digsel : OUT std_logic_vector(7 DOWNTO 0);
        segmentos : OUT std_logic_vector(7 DOWNTO 0)       
          
             
    );
END COMPONENT; 
 COMPONENT interruptores
    PORT (
       clk:in std_logic;
        interruptor_asyn: in std_logic_vector;
        interruptor_syn: out std_logic_vector         
);
END COMPONENT;  

component FSM is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in std_logic;
           reset : in STD_LOGIC;
           selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
           importe : in integer;
           activar_contador : out STD_LOGIC;
           reset_contador : out std_logic;
           entregar_producto : out STD_LOGIC_VECTOR (1 downto 0);
           devolver_monedas : out STD_LOGIC_VECTOR (3 downto 0));
end component;

COMPONENT CONTADOR_DE_MONEDAS
    PORT (
      clk, clr_n, enable: in std_logic ;
     sw_in: in std_logic_vector (3 downto 0);
     total: out integer range 0 to 100
);
END COMPONENT; 
COMPONENT pulsadores
    PORT (
        CLK: IN std_logic ;
        pulsador: in std_logic_vector(1 downto 0);
        salida_pulsador: out std_logic_vector(1 downto 0)  
);
END COMPONENT;


begin

  Inst_boton_reset: boton_reset
        PORT MAP (
          CLK=>clk,
          reset=>rst,
          salida_reset=>reset
          
        );
  Inst_control_display:control_display
        PORT MAP (
        clk=>clk,                                                 
        numero=>imp_tot,         
        segmentos=>segmentos,      
         digsel =>digsel
        );
  Inst_interruptores: interruptores
        PORT MAP (
          clk=>clk,
        interruptor_asyn=>interruptor,
        interruptor_syn=> int_sync   
        );
  Inst_FSM: FSM
        PORT MAP (
           SW =>int_sync,
           RESET =>reset,
           selec_producto =>puls,
           importe =>imp_tot,
           CLK =>clk,           
           activar_contador =>act_cont,
           reset_contador => reset_contador,
           entregar_producto=>entrega_producto,
           devolver_monedas => devolver_monedas
           );
   Inst_CONTADOR_DE_MONEDAS: CONTADOR_DE_MONEDAS 
   PORT MAP (
         clk=>clk,
         clr_n=>reset_contador,
         enable=>act_cont,
         sw_in=>int_sync_contador,
         total=>imp_tot
        );
     Inst_pulsadores: pulsadores
      PORT MAP (
         
        CLK=>clk,
        pulsador=>in_pulsadores,
        salida_pulsador=>puls
                                                                
        );

    reg_entrada_contador : process(clk)
    begin
        if rising_edge(clk) then int_sync_contador <= int_sync;
        end if;
    end process;
    
end Behavioral;