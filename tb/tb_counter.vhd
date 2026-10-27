
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture sim of tb_counter is

    signal clk   : STD_LOGIC := '0';
    signal r : STD_LOGIC := '1';
    signal count : STD_LOGIC_VECTOR(3 downto 0);

begin

    uut: entity work.counter
        port map (
            clk   => clk,
            r => r,
            count => count
        );

    -- 10 ns clock period
    clk <= not clk after 5 ns;

    stimulus: process
    begin
        -- Keep reset active initially
        wait for 20 ns;
        r <= '0';

        -- Allow the counter to increment
        wait for 170 ns;

        assert count = "0010"
            report "Counter output mismatch"
            severity error;

        report "Counter test completed";
        wait;
    end process;

end sim;
