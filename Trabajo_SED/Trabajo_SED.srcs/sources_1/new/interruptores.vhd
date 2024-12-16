library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interruptores is
  Port (
        clk:in std_logic;
        interruptor_asyn: in std_logic_vector;
        
        interruptor_syn: out std_logic_vector
);
end interruptores;

architecture Behavioral of interruptores is
signal syncout_edgein: std_logic_vector ;


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
    Inst_SYNCHRNZR: SYNCHRNZR PORT MAP(
        clk=>clk,
        ASYNC_IN=> interruptor_asyn,
        SYNC_OUT=> syncout_edgein 
    );
    Inst_EDGEDTCTR: edgedtctr PORT MAP(
        clk =>clk,
        SYNC_IN=>syncout_edgein,
        edge=> interruptor_syn
    ); 

end Behavioral;
