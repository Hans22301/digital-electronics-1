------------------------------------------------------------
--
-- Testbench for 7-segment display decoder.
-- Nexys A7-50T, Vivado v2020.1, EDA Playground
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
entity tb_hex_7seg is
    -- Entity of testbench is always empty
end entity tb_hex_7seg;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_hex_7seg is

    -- Local signals
    signal s_hex  : std_logic_vector(6 - 1 downto 0);
    signal s_seg  : std_logic_vector(7 - 1 downto 0);

begin
    -- Connecting testbench signals with decoder entity
    -- (Unit Under Test)
    uut_hex_7seg : entity work.hex_7seg
        port map(
            hex_i => s_hex,
            seg_o => s_seg
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;

        -- First test case
        s_hex <= "000000"; wait for 50 ns;
        assert (s_seg = "0000001")
        report "Input combination 000000 FAILED" severity error;
        
        s_hex <= "001100"; wait for 50 ns;
        assert (s_seg = "1110010")
        report "Input combination 001100 FAILED" severity error;
        
        s_hex <= "010000"; wait for 50 ns;
        assert (s_seg = "0100001")
        report "Input combination 010000 FAILED" severity error;
        
        s_hex <= "001000"; wait for 50 ns;
        assert (s_seg = "0000000")
        report "Input combination 001000 FAILED" severity error;
        
        s_hex <= "010110"; wait for 50 ns;
        assert (s_seg = "0101010")
        report "Input combination 010110 FAILED" severity error;
        
        s_hex <= "011100"; wait for 50 ns;
        assert (s_seg = "0100101")
        report "Input combination 011100 FAILED" severity error;
        
     
        -- WRITE OTHER TEST CASES HERE


        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
