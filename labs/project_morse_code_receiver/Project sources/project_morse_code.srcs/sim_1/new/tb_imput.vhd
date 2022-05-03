------------------------------------------------------------
--
-- Template for 4-digit 7-segment display driver testbench.
-- Nexys A7-50T, Vivado v2020.1.1, EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_imput is
    -- Entity of testbench is always empty
end entity tb_imput;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_imput is

    -- Local constants
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    
   
    signal s_clk_100MHz : std_logic;
    signal s_btnUP : std_logic;
    signal s_btnDOWN : std_logic;
    signal s_btnLEFT : std_logic;
    signal s_btnCENTER : std_logic;
    signal s_endk : std_logic;
    signal s_number : STD_LOGIC_VECTOR (4 downto 0);
    signal s_lenght : integer range 0 to 15;
    signal s_letter : STD_LOGIC_VECTOR (5 downto 0);
    

begin
    -- Connecting testbench signals with driver_7seg_4digits
    -- entity (Unit Under Test)
    uut_imput : entity work.imput
        port map(
        clk   => s_clk_100MHz,      
         btn_up => s_btnUP,    
         btn_down => s_btnDOWN,   
         btn_left => s_btnLEFT,  
         btn_enter => s_btnCENTER, 
         endk => s_endk,       
         lenght => s_lenght,     
         number => s_number    
        );
    -- WRITE YOUR CODE HERE

    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 32 ms loop -- 75 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;


    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
p_data_gen : process
    begin
       s_btnUP <= '1';
       wait for 7ns;
       s_btnUP <= '0';
       wait for 10ns;
       s_btnUP <= '1';
       wait for 10ns;
       s_btnUP <= '0';
       wait for 10ns;
       s_btnDOWN <= '1';
       wait for 10ns;
       s_btnDOWN <= '0';
       wait for 10ns;
       s_btnCENTER <= '1';
       wait for 10ns;
       s_btnCENTER <= '0';
    end process p_data_gen;
    -- WRITE YOUR CODE HERE


end architecture testbench;