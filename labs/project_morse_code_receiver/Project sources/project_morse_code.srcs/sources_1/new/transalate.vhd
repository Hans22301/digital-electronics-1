----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2022 11:54:44
-- Design Name: 
-- Module Name: transalate - Behavioral
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
use ieee.numeric_std.all; 
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transalate is
  Port (
        lenght_i : in integer range 0 to 15;
        number : in STD_LOGIC_VECTOR (4 downto 0);
        letter : out STD_LOGIC_VECTOR (5 downto 0)
   );
end transalate;

architecture Behavioral of transalate is

begin
    transalate : process(lenght_i,number)
    begin
        case lenght_i is 
            when 0 =>
            case number is
                when "00000"=>
                    letter <= "001110"; --E
                when "00001"=>
                    letter <= "111000"; --T
                when others =>  
            end case;
            when 1 =>
            case number is
                when "00000"=>
                    letter <= "010010"; --I
                when "00001"=>
                    letter <= "001010"; --A
                when "00010"=>
                    letter <= "010111"; --N
                when "00011"=>
                    letter <= "010110"; --M
                when others =>  
            end case;
            when 2 =>
            case number is
                when "00000"=>
                    letter <= "011100"; --S
                when "00001"=>
                    letter <= "011110"; --U
                when "00010"=>
                    letter <= "011011"; --R
                when "00011"=>
                    letter <= "100000"; --W
                when "00100"=> 
                    letter <= "001101"; --D    
                when "00101"=> 
                    letter <= "010100"; --K
                when "00110"=> 
                    letter <= "010000"; --G 
                when "00111"=> 
                    letter <= "011000"; --O           
                when others =>  
            end case;
                when 3 =>
            case number is
                when "00000"=>
                    letter <= "010001"; --H
                when "00001"=>
                    letter <= "011111"; --V
                when "00010"=>
                    letter <= "001111"; --F
                --when 00011=>
                    --letter <= "nedefinované"; --Ú
                when "00100"=> 
                    letter <= "001101"; --L    
                --when 00101=> 
                    --letter <= "nedefinovane"; --?
                when "00110"=> 
                    letter <= "011001"; --P 
                when "00111"=> 
                    letter <= "011000"; --J
                when "01000"=> 
                    letter <= "001011"; --B
                when "01001"=> 
                    letter <= "100001"; --X
                when "01010"=> 
                    letter <= "001100"; --C
                when "01011"=> 
                    letter <= "100010"; --Y
                when "01100"=> 
                    letter <= "100011"; --Z                               
                when "01101"=> 
                    letter <= "011010"; --Q
                --when 01111=> 
                    --letter <= "nedefinované"; --Š    
                when others =>  
            end case;
            when 4 =>
            case number is
                when "00000"=>
                    letter <= "000101"; --5
                when "00001"=>
                    letter <= "000100"; --4
                --when 00010=>
                    --letter <= "nedefinované"; --?
                when "00011"=>
                    letter <= "000011"; --3
                --when 00100=> 
                    --letter <= "nedefinované"; --Ê    
                --when 00101=> 
                    --letter <= "nieje kód morseovky"; --EROR
                --when 00110=> 
                    --letter <= "nedefinované"; --? 
                when "00111"=> 
                    letter <= "000010"; --2
                --when 01000=> 
                    --letter <= "nedefinované"; --&
                --when 01001=> 
                    --letter <= "nedefinované"; --£
                --when 01010=> 
                    --letter <= "nedefinované"; --+
                --when 01011=> 
                    --letter <= "nieje kód morseovky"; --EROR
                --when 01100=> 
                    --letter <= "nedefinované"; --?
                --when 01101=> 
                    --letter <= "nedefinované"; --?
                --when 01110=> 
                    --letter <= "nedefinované"; --?                                      
                when "01111"=> 
                    letter <= "000001"; --1
                when "10000"=> 
                    letter <= "000110"; --6
                --when 10001=> 
                    --letter <= "nedefinované"; --=        
                --when 10010=> 
                    --letter <= "nedefinované"; --/
                --when 10011=> 
                    --letter <= "nieje kód morseovky"; --EROR
                --when 10100=> 
                    --letter <= "nedefinované"; --Ç
                --when 10101=> 
                    --letter <= "nieje kód morseovky"; --EROR    
                --when 10110=> 
                    --letter <= "nedefinované"; --(
                --when 10111=> 
                    --letter <= "nieje kód morseovky"; --EROR
                when "11000"=> 
                    letter <= "000111"; --7        
                --when 11001=> 
                    --letter <= "nedefinované"; --¯
                --when 11010=> 
                    --letter <= "nedefinované"; --?
                --when 11011=> 
                    --letter <= "nedefinované"; --?
                when "11100"=> 
                    letter <= "000111"; --8
                --when 11101=> 
                    --letter <= "nieje kód morseovky"; --EROR
                when "11110"=> 
                    letter <= "001001"; --9
                when "11111"=> 
                    letter <= "000000"; --0
                when others =>  
            end case;
            when others =>
        end case;
    end process transalate;

end Behavioral;
