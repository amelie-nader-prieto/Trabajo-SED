library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tratamiento_entradas is
    generic(N:positive:=3);
    port(
        clk : IN std_logic;
        rst       : IN std_logic;                             
        interruptor:IN std_logic_vector (N downto 0);
        in_pulsadores:IN std_logic_vector (N-2 downto 0);
        rst_syn       : out std_logic;
        interruptor_syn:OUT std_logic_vector (N downto 0);
        in_pulsadores_syn:OUT std_logic_vector (N-2 downto 0)
    );
end tratamiento_entradas;

architecture Behavioral of tratamiento_entradas is

COMPONENT boton_reset
       PORT (
             CLK: IN std_logic ;
            reset: in std_logic ;
            salida_reset: out std_logic
        );
    END COMPONENT;
    
COMPONENT interruptores
    PORT (
       clk:in std_logic;
        interruptor_asyn: in std_logic_vector;
        interruptor_syn: out std_logic_vector         
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
          salida_reset=>rst_syn
          
        );
        
  Inst_pulsadores: pulsadores
      PORT MAP (
         
        CLK=>clk,
        pulsador=>in_pulsadores,
        salida_pulsador=>in_pulsadores_syn
                                                                
        );
   Inst_interruptores: interruptores
        PORT MAP (
          clk=>clk,
        interruptor_asyn=>interruptor,
        interruptor_syn=> interruptor_syn  
        );    
        
  

end Behavioral;
