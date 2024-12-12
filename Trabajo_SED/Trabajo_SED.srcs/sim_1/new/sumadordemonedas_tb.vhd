library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity sumadordemonedas_tb is
end;

architecture bench of sumadordemonedas_tb is

  component sumadordemonedas
  Port ( 
      clk,clr_n, enable: in std_logic;
      moneda: in std_logic_vector(3 downto 0);
      cuenta:out natural range 0 to 110
  );
  end component;

  signal clk,clr_n, enable: std_logic;
  signal moneda: std_logic_vector(3 downto 0);
  signal cuenta: natural range 0 to 110 ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: sumadordemonedas port map ( clk    => clk,
                                   clr_n  => clr_n,
                                   enable => enable,
                                   moneda => moneda,
                                   cuenta => cuenta );

  stimulus: process
  begin
  
    -- Put initialisation code here

    enable <= '1';
    clr_n <= '0';
    wait for 5 ns;
    enable <= '0';
    wait for 5 ns;

    -- Put test bench stimulus code here
    
    enable <='1';
    clr_n <= '1';
     
    moneda <="0001";
    wait for 10 ns;
    
    moneda <="0100";
    wait for 10 ns;
    
    moneda <="0010";
    wait for 10 ns;
    
    moneda <="0001";
    wait for 20 ns;
    
    
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;