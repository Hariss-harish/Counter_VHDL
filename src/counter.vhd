----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2026 12:02:09
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.Numeric_std.all;

entity counter is
Port ( 
clk : in std_logic;
r : in std_logic;
count : out std_logic_vector(3 downto 0)
);
end counter;

architecture Behavioral of counter is
    signal count_reg : unsigned(3 downto 0) := (others =>'0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if r ='1' then
                count_reg <= (others => '0');
             else
                count_reg <= count_reg + 1;
               end if;
              end if;
             end process;
            count <= std_logic_vector(count_reg);


end Behavioral;
