----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2024 10:10:35 AM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
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
           o_S : out STD_LOGIC_VECTOR);
end sevenSegDecoder;

architecture test_bench of sevenSegDecoder is

component sevenSegDecoder is
            port (
            i_D : in std_logic_vector (3 downto 0);
            o_S : out std_logic_vector (6 downto 0)     

);
      end component sevenSegDecoder;
      
      
  
    
       
signal w_bus: std_logic_vector(3 downto 0);
signal w_seg: std_logic_vector(6 downto 0);   
    
   begin  
        sevenSegDecoder_inst : sevenSegDecoder port map(
        i_D(0) => w_Bus(0),
        i_D(1) => w_Bus(1),
        i_D(2) => w_Bus(2),
        i_D(3) => w_Bus(3),
        o_S(0) => w_seg(0),
        o_S(1) => w_seg(1),
        o_S(2) => w_seg(2),
        o_S(3) => w_seg(3),
        o_S(4) => w_seg(4),
        o_S(5) => w_seg(5),
        o_S(6) => w_seg(6) 
        );    
test_process : process    
    begin 
                 w_bus <= x"0"; wait for 10 ns;
                    assert w_seg = x"40" report "error on x0" severity failure;
                 w_bus <= x"1"; wait for 10 ns;
                    assert w_seg = x"79" report "error on x0" severity failure;
                 w_bus <= x"2"; wait for 10 ns;
                    assert w_seg = x"24" report "error on x0" severity failure;
                 w_bus <= x"3"; wait for 10 ns;
                    assert w_seg = x"30" report "error on x0" severity failure;
                 w_bus <= x"4"; wait for 10 ns;
                    assert w_seg = x"19" report "error on x0" severity failure;
                 w_bus <= x"5"; wait for 10 ns;
                    assert w_seg = x"12" report "error on x0" severity failure;
                    w_bus <= x"6"; wait for 10 ns;
                       assert w_seg = x"2" report "error on x0" severity failure;
                    w_bus <= x"7"; wait for 10 ns;
                       assert w_seg = x"78" report "error on x0" severity failure;
                    w_bus <= x"8"; wait for 10 ns;
                       assert w_seg = x"0" report "error on x0" severity failure;
                    w_bus <= x"9"; wait for 10 ns;
                       assert w_seg = x"18" report "error on x0" severity failure;
                    w_bus <= x"A"; wait for 10 ns;
                       assert w_seg = x"8" report "error on x0" severity failure;
                    w_bus <= x"B"; wait for 10 ns;
                       assert w_seg = x"3" report "error on x0" severity failure;
                      w_bus <= x"C"; wait for 10 ns;
                          assert w_seg = x"27" report "error on x0" severity failure;
                       w_bus <= x"D"; wait for 10 ns;
                          assert w_seg = x"21" report "error on x0" severity failure;
                       w_bus <= x"E"; wait for 10 ns;
                          assert w_seg = x"6" report "error on x0" severity failure;
                       w_bus <= x"F"; wait for 10 ns;
                          assert w_seg = x"E" report "error on x0" severity failure;

		wait; -- wait forever
	end process;
  
end test_bench;











