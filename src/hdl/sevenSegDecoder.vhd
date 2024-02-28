----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2024 10:13:41 AM
-- Design Name: 
-- Module Name: sevenSegDecoder - Behavioral
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


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegDecoder is
    Port ( i_D : in STD_LOGIC_VECTOR (3 downto 0);
           o_S : out STD_LOGIC_VECTOR (6 downto 0));
end sevenSegDecoder;

architecture Behavioral of sevenSegDecoder is

component sevenSegDecoder is
            port (
            i_D : in std_logic_vector (3 downto 0);
            o_S : out std_logic_vector (6 downto 0)     

);
      end component sevenSegDecoder;

      
            
 signal c_Sa : std_logic := '1';
 signal c_Sb : std_logic := '1';
 signal c_Sc : std_logic := '1';
 signal c_Sd : std_logic := '1';
 signal c_Se : std_logic := '1';
 signal c_Sf : std_logic := '1';
 signal c_Sg : std_logic := '1';
      


      
begin
   
o_S(0) <= c_Sa;
o_S(1) <= c_Sb;
o_S(2) <= c_Sc;
o_S(3) <= c_Sd;
o_S(4) <= c_Se;
o_S(5) <= c_Sf;
o_S(6) <= c_Sg;



c_Sa <= (i_D(3) and i_D(2) and not i_D(1))
    or (i_D(2) and not i_D(1) and not i_D(0))
    or (not i_D(3) and not i_D(2) and not i_D(1) and i_D(0))
    or (i_D(3) and not i_D(2) and i_D(1) and i_D(0));
 
c_Sg <= (not i_D(3) and i_D(2) and i_D(1) and i_D(0))
    or (not i_D(3) and not i_D(2) and not i_D(1));
    
c_Sb <= '1' when (  (i_D = x"5") or
                    (i_D = x"E") or 
                    (i_D = x"B") or 
                    (i_D = x"F") or 
                    (i_D = x"C") or 
                    (i_D = x"6")) else '0';
c_Se <= '1' when (  (i_D = x"1") or
                    (i_D = x"3") or 
                    (i_D = x"4") or
                    (i_D = x"5") or
                    (i_D = x"7") or
                    (i_D = x"9")) else '0';
c_Sc <= '1' when (  (i_D = x"2") or
                    (i_D = x"C") or 
                    (i_D = x"E") or 
                    (i_D = x"F")) else '0';
c_Sd <= '1' when (  (i_D = x"1") or    
                    (i_D = x"4") or
                    (i_D = x"7") or
                    (i_D = x"9") or
                    (i_D = x"A") or
                    (i_D = x"F")) else '0';     
c_Sf <= '1' when (  (i_D = x"1") or
                    (i_D = x"2") or
                    (i_D = x"3") or
                    (i_D = x"7") or
                    (i_D = x"C") or
                    (i_D = x"D")) else '0';
  
end behavioral;

