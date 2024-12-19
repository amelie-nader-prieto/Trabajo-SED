library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_control_display IS
END ENTITY tb_control_display;

ARCHITECTURE Behavioral OF tb_control_display IS

    -- Component declaration for the unit under test (UUT)
    COMPONENT control_display
        PORT (
            clk       : IN std_logic;
            rst       : IN std_logic;
            numero    : IN integer;
            segmentos : OUT std_logic_vector(6 DOWNTO 0);
            sele      : OUT std_logic_vector(2 DOWNTO 0)
        );
    END COMPONENT;

    -- Signals to connect to the UUT
    SIGNAL clk       : std_logic := '0';
    SIGNAL rst       : std_logic := '0';
    SIGNAL numero    : integer := 0;
    SIGNAL segmentos : std_logic_vector(6 DOWNTO 0);
    SIGNAL sele      : std_logic_vector(2 DOWNTO 0);

    -- Clock period definition
    CONSTANT clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: control_display
        PORT MAP (
            clk       => clk,
            rst       => rst,
            numero    => numero,
            segmentos => segmentos,
            sele      => sele
        );

    -- Clock process definition
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period / 2;
        clk <= '1';
        WAIT FOR clk_period / 2;
    END PROCESS;

    -- Stimulus process
    stimulus_process : PROCESS
    BEGIN
        -- Reset the system
        rst <= '1';
        WAIT FOR clk_period * 2;
        rst <= '0';

        -- Test Case 1: Display number 123
        numero <= 123;
        WAIT FOR clk_period * 20;

        -- Test Case 2: Display number 456
        numero <= 456;
        WAIT FOR clk_period * 20;

        -- Test Case 3: Display number 789
        numero <= 789;
        WAIT FOR clk_period * 20;

        -- Test Case 4: Display number 0
        numero <= 0;
        WAIT FOR clk_period * 20;

        -- End simulation
        WAIT;
    END PROCESS;

END ARCHITECTURE Behavioral;