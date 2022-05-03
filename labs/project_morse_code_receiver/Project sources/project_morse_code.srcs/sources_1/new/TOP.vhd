----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2022 11:39:00
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
  Port (    CLK100MHZ : in std_logic;
            BTNU : in std_logic;
            BTND : in std_logic;
            BTNC : in std_logic;
            BTNL : in std_logic;
            CA : out STD_LOGIC;
            CB : out STD_LOGIC;
            CC : out STD_LOGIC;
            CD : out STD_LOGIC;
            CE : out STD_LOGIC;
            CF : out STD_LOGIC;
            CG : out STD_LOGIC;
            AN : out STD_LOGIC_VECTOR (7 downto 0)
  
  );
end TOP;

architecture Behavioral of TOP is

signal s_btnUP : std_logic;
signal s_btnDOWN : std_logic;
signal s_btnLEFT : std_logic;
signal s_btnCENTER : std_logic;
signal s_endk : std_logic;
signal s_number : STD_LOGIC_VECTOR (4 downto 0);
signal s_lenght : integer range 0 to 15;
signal s_letter : STD_LOGIC_VECTOR (5 downto 0);

begin

clk_en0 : entity work.clock_enable
      generic map(
          g_MAX => 25000000
      )
      port map(
          clk   => CLK100MHZ,--- WRITE YOUR CODE HERE
          reset => '0'--- WRITE YOUR CODE HERE
      );

imputt:entity work.imput
port map(
         clk => CLK100MHZ,
         --reset =>  '0',
         btn_up => BTNU,
         btn_down => BTND,
         btn_left => BTNL,
         btn_enter => BTNC,
         endk => s_endk,
         lenght => s_lenght,
         number => s_number

         
          
);    
letter:entity work.transalate
port map(
        lenght_i => s_lenght,
        number => s_number,
        letter => s_letter
);

hex2seg : entity work.hex_7seg
port map(
            hex_i => s_letter,
            seg_o(6) => CA,
            seg_o(5) => CB,
            seg_o(4) => CC,
            seg_o(3) => CD,
            seg_o(2) => CE,
            seg_o(1) => CF,
            seg_o(0) => CG
           
);  
         
end Behavioral;
