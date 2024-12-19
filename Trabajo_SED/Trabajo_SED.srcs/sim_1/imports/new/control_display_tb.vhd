library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity top_tb is
end;

architecture bench of top_tb is

  component top
      PORT (
          clk     : IN std_logic;                            
          rst     : IN std_logic;                            
          numero  : IN integer;                              
          digsel  : OUT std_logic_vector(6 DOWNTO 0);       
          sele    : OUT std_logic_vector(2 DOWNTO 0)          
      );
  end component;

  signal clk: std_logic := '0';
  signal rst: std_logic := '1';
  signal numero: integer := 123; 
  signal digsel: std_logic_vector(6 DOWNTO 0);
  signal sele: std_logic_vector(2 DOWNTO 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean := false;

begin

  uut: top 
      port map ( 
          clk    => clk,
          rst    => rst,
          numero => numero,
          digsel => digsel,
          sele   => sele 
      );


  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0';
      wait for clock_period / 2;
      clk <= '1';
      wait for clock_period / 2;
    end loop;
    wait;
  end process;

  stimulus: process
  begin
  
    rst <= '1';
    wait for 10 ns;
    rst <= '0';

    numero <= 123;  
    wait for 50 ns;

    numero <= 456;  
    wait for 50 ns;

    numero <= 789;  
    wait for 50 ns;

  
    stop_the_clock <= true;
    wait;
  end process;

end architecture bench;
