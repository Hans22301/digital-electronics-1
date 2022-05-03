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
entity tb_translate is
    -- Entity of testbench is always empty
end entity tb_translate;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_translate is

    -- Local constants
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    
   
    
    signal s_number : STD_LOGIC_VECTOR (4 downto 0);
    signal s_lenght : integer range 0 to 15;
    signal s_letter : STD_LOGIC_VECTOR (5 downto 0);
    

begin
    -- Connecting testbench signals with driver_7seg_4digits
    -- entity (Unit Under Test)
    uut_transalate : entity work.transalate
        port map(
        lenght_i => s_lenght,
        number => s_number,
        letter => s_letter    
        );
    -- WRITE YOUR CODE HERE




    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
p_data_gen : process
    begin
       
     
 
       s_number <= "00100";
       s_lenght <= 2;
       
       
       wait for 10ns;
       
       s_number <= "00001";
       s_lenght <= 0;
       
       
       wait for 10ns;
       
       s_number <= "00001";
       s_lenght <= 4;
       
       wait for 10ns;
       
       s_number <= "00111";
       s_lenght <= 3;
       
       wait for 10ns;


       s_number <= "00000";
       s_lenght <= 2;
       
       wait for 10ns;
       
       s_number <= "00111";
       s_lenght <= 2;
       
       wait for 10ns;
       
       s_number <= "00000";
       s_lenght <= 2;
       
       wait for 10ns;
       
    end process p_data_gen;
    -- WRITE YOUR CODE HERE


end architecture testbench;