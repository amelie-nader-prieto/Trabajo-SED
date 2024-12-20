library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity top is
 PORT (
        clk       : IN std_logic;                             
        rst       : IN std_logic;                             
        interruptor:in std_logic_vector (3 downto 0);
        pulsadores:in std_logic_vector (1 downto 0);
        selec:out std_logic_vector (2 downto 0);
        digsel:out std_logic_vector (6 downto 0);
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




COMPONENT boton_reset
       PORT (
             CLK: IN std_logic ;
            reset: in std_logic ;
            salida_reset: out std_logic
        );
    END COMPONENT;
 COMPONENT control_display
    PORT (
        clk       : IN std_logic;                             
        rst       : IN std_logic;                             
        numero    : IN integer ; 
        enable     :in std_logic;               
        segmentos : OUT std_logic_vector(6 DOWNTO 0);        
        sele      : OUT std_logic_vector(2 DOWNTO 0)          
);
END COMPONENT;   
 COMPONENT interruptores
    PORT (
       clk:in std_logic;
        interruptor_asyn: in std_logic_vector;
        interruptor_syn: out std_logic_vector         
);
END COMPONENT;  
COMPONENT FSM_principal
    PORT (
       SW : in STD_LOGIC_VECTOR (3 downto 0);
           RESET : in STD_LOGIC;
           selec_producto : in STD_LOGIC_VECTOR (1 downto 0);
           importe : in integer; -- salida del contador, indica cuánto dinero se ha introducido
           CLK : in STD_LOGIC;
           
           activar_contador : out STD_LOGIC; -- para activar o desactivar el contador
           devolver_dinero : out STD_LOGIC; -- para activar o desactivar la FSM de devolver el dinero
         
           producto : out STD_LOGIC_VECTOR (1 downto 0) -- LEDs de la placa 
);
END COMPONENT; 
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
        rst=>reset,                     
        numero=>imp_tot,  
        enable=>act_cont,       
        segmentos=>digsel,      
        sele =>selec
        );
  Inst_interruptores: interruptores
        PORT MAP (
          clk=>clk,
        interruptor_asyn=>interruptor,
        interruptor_syn=> int_sync   
        );
  Inst_FSM_principal: FSM_principal
        PORT MAP (
          SW =>int_sync,
           RESET =>reset,
           selec_producto =>puls,
           importe =>imp_tot,
           CLK =>clk,           
           activar_contador =>act_cont,
           devolver_ =>devolver_monedas,
           producto=>entrega_producto
           );
   Inst_CONTADOR_DE_MONEDAS: CONTADOR_DE_MONEDAS 
   PORT MAP (
         clk=>clk,
         clr_n=>reset,
         enable=>act_cont,
         sw_in=>int_sync,
         total=>imp_tot
        );
     Inst_pulsadores: pulsadores
      PORT MAP (
         
        CLK=>clk,
        pulsador=>pulsadores,
        salida_pulsador=>puls
                                                                
        );
end Behavioral;