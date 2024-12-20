library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interruptores is
  Port (
        clk:in std_logic;
        interruptor_asyn: in std_logic_vector (3 downto 0);
        interruptor_syn: out std_logic_vector (3 downto 0)
);
end interruptores;

architecture Behavioral of interruptores is
signal syncout_edgein: std_logic_vector (3 downto 0);


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
    Inst_SYNCHRNZR_3: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN => interruptor_asyn(3),
        SYNC_OUT => syncout_edgein(3)
    );
    Inst_SYNCHRNZR_2: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN => interruptor_asyn(2),
        SYNC_OUT => syncout_edgein(2)
    );
    Inst_SYNCHRNZR_1: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN=> interruptor_asyn (1),
        SYNC_OUT=> syncout_edgein (1)
    );
    Inst_SYNCHRNZR_0: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN=> interruptor_asyn (0),
        SYNC_OUT=> syncout_edgein (0)
    );
    
    Inst_EDGEDTCTR_3: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN=>syncout_edgein (3),
        edge=> interruptor_syn (3)
    );
    Inst_EDGEDTCTR_2: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN=>syncout_edgein (2),
        edge=> interruptor_syn (2)
    ); 
    Inst_EDGEDTCTR_1: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN=>syncout_edgein (1),
        edge=> interruptor_syn (1)
    ); 
    Inst_EDGEDTCTR_0: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN=>syncout_edgein (0),
        edge=> interruptor_syn (0)
    );  

end Behavioral;
