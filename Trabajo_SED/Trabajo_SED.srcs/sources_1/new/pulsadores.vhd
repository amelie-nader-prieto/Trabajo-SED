library IEEE;
use IEEE.std_logic_1164.ALL;


ENTITY pulsadores IS 
    PORT ( 
        CLK: IN std_logic ;
        pulsador: in std_logic_vector(1 downto 0);
        salida_pulsador: out std_logic_vector(1 downto 0)
); 
END pulsadores;

architecture Behavioral of pulsadores is

    signal sync_i: std_logic_vector(1 downto 0); -- salidas sincronizadas
    

    COMPONENT SYNCHRNZR
    PORT(
        CLK: in std_logic ;
        ASYNC_IN: in std_logic ;
        SYNC_OUT: out std_logic 
    );
    END COMPONENT;

    COMPONENT EDGEDTCTR
    PORT (
        CLK: IN std_logic;
        SYNC_IN : IN std_logic;
        EDGE: out std_logic  
    );
    END COMPONENT;

    begin 

    Inst_SYNCHRNZR_1: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN => pulsador(1),
        SYNC_OUT => sync_i(1)
    );
    Inst_SYNCHRNZR_2: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN => pulsador(0),
        SYNC_OUT => sync_i(0)
    );

    Inst_EDGEDTCTR_1: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN => sync_i(1),
        edge => salida_pulsador(1)
    );
    
    Inst_EDGEDTCTR_2: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN => sync_i(0),
        edge => salida_pulsador(0)
    ); 

end behavioral;
