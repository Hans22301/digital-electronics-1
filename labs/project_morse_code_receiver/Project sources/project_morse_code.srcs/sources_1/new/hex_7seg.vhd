----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2022 03:26:51 PM
-- Design Name: 
-- Module Name: hex_7seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hex_7seg is
    Port ( hex_i : in STD_LOGIC_VECTOR (5 downto 0);
           seg_o : out STD_LOGIC_VECTOR (6 downto 0)
           );
end hex_7seg;

architecture Behavioral of hex_7seg is
begin
    --------------------------------------------------------
    -- p_7seg_decoder:
    -- A combinational process for 7-segment display (Common
    -- Anode) decoder. Any time "hex_i" is changed, the process
    -- is "executed". Output pin seg_o(6) controls segment A,
    -- seg_o(5) segment B, etc.
    --       segment A
    --        | segment B
    --        |  | segment C
    --        +-+|  |   ...   segment G
    --          ||+-+          |
    --          |||            |
    -- seg_o = "0000001"-------+
    --------------------------------------------------------
    p_7seg_decoder : process(hex_i)
    begin
        case hex_i is
            when "000000" =>
                seg_o <= "0000001"; -- 0
            when "000001" =>
                seg_o <= "1001111"; -- 1

            -- WRITE YOUR CODE HERE
            when "000010" =>
                seg_o <= "0010010"; -- 2

            when "000011" =>
                seg_o <= "0000110"; -- 3

            when "000100" =>
                seg_o <= "1001100"; -- 4

            when "000101" =>
                seg_o <= "0100100"; -- 5

            when "000110" =>
                seg_o <= "0100000"; -- 6

            when "000111" =>
                seg_o <= "0001111"; -- 7

            when "001000" =>
                seg_o <= "0000000"; -- 8

            -- WRITE YOUR CODE HERE
            when "001001" =>
                seg_o <= "0000100"; -- 9

            when "001010" =>
                seg_o <= "0000010"; -- A

            when "001011" =>
                seg_o <= "1100000"; -- b

            when "001100" =>
                seg_o <= "1110010"; -- C

            when "001101" =>
                seg_o <= "1000010"; -- d

            when "001110" =>
                seg_o <= "0110000"; -- E
            
            when "001111" =>
                seg_o <= "0111000"; -- F
            
            when "010000" =>
                seg_o <= "0100001"; -- G 
                
            when "010001" =>
                seg_o <= "1101000"; -- H        
                
            when "010010" =>
                seg_o <= "0111011"; -- I    
            
            when "010011" =>
                seg_o <= "0100111"; -- J
                
            when "010100" =>
                seg_o <= "0101000"; -- K
                
            when "010101" =>
                seg_o <= "1110001"; -- L   
            
            when "010110" =>
                seg_o <= "0101010"; -- M
            
            when "010111" =>
                seg_o <= "1101010"; -- N
            
            when "011000" =>
                seg_o <= "1100010"; -- O
            
            when "011001" =>
                seg_o <= "0011000"; -- P
            
            when "011010" =>
                seg_o <= "0001100"; -- Q
            
            when "011011" =>
                seg_o <= "1111010"; -- R
            
            when "011100" =>
                seg_o <= "0100101"; -- S
            
            when "011101" =>
                seg_o <= "1110000"; -- T
            
            when "011110" =>
                seg_o <= "1100011"; -- U
            
            when "011111" =>
                seg_o <= "1010101"; -- V
            
            when "100000" =>
                seg_o <= "1010100"; -- W
            
            when "100001" =>
                seg_o <= "1101011"; -- X
            
            when "100010" =>
                seg_o <= "1000100"; -- Y
            
            when  "100011" =>
                seg_o <= "0010011"; -- Z
            when  others =>    
                
            
                
                
        end case;
    end process p_7seg_decoder;

end architecture Behavioral;

