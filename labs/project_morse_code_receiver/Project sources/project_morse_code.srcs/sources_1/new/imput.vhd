----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2022 10:08:37
-- Design Name: 
-- Module Name: imput - Behavioral
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

entity imput is
  Port (clk :          in std_logic;
         --reset :        in std_logic;
         btn_up :       in std_logic;
         btn_down :     in std_logic;
         btn_left :     in std_logic;
         btn_enter :    in std_logic; 
         endk :       out std_logic;
         lenght :        out integer range 0 to 15;
         number :        out STD_LOGIC_VECTOR (4 downto 0)

    

);
end imput;

architecture Behavioral of imput is

type t_state  is    (   IDLE,
                        BTNUP,
                        BTNDOWN,
                        BTNLEFT,
                        BTNENTER
); 

    signal s_state : t_state;
    signal s_morsec : std_logic_vector(4 downto 0); 
    signal s_point : unsigned(2 downto 0);
    type t_morseA is array (3 downto 0) of integer;
    signal s_morseA : t_morseA;
    signal s_number:STD_LOGIC_VECTOR (4 downto 0);


begin

    imputt : process (clk)
        begin
             if rising_edge(clk) then      
                
                case s_state is 
                        
                        when IDLE =>
                            if(btn_up = '1') then 
                                s_state <= BTNUP;
                            elsif(btn_down = '1') then 
                                s_state <= BTNDOWN;
                            elsif(btn_left = '1') then 
                                s_state <= BTNLEFT;
                            elsif(btn_enter = '1') then 
                                s_state <= BTNENTER;       
                            else
                                s_state <= IDLE;
                            end if;    
                        when BTNUP =>
                            s_state <= IDLE;
                            if(s_point = "101") then
                            
                            else
                                s_morseA(TO_INTEGER(s_point)) <= 1;
                                s_point <= s_point+1;
                            end if;
                        when BTNDOWN =>
                            s_state <= IDLE;
                            if(s_point = "101") then
                            
                            else
                                s_morseA(TO_INTEGER(s_point)) <= 0;
                                s_point <= s_point+1;
                            end if;
                        when BTNLEFT =>
                            s_state <= IDLE;
                            if(s_point = "000") then
                            
                            else
                            
                                s_morseA(TO_INTEGER(s_point)) <= 0;
                                s_point <= s_point-1;
                            end if;    
                        when BTNENTER =>
                            s_state <= IDLE;
                            endk <= '0';
                            for I in 0 to 3 loop
                                if(s_morseA(I)=0) then
                                    s_number <=s_number+2**I;
                                    
                                end if;
                            end loop;
                            number <= s_number;
                            lenght <= TO_INTEGER(s_point);
                        
                        when others => 
                end case;  
            end if;
    end process imputt;


end Behavioral;
