

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
component onehot is
  Port (input :in  STD_LOGIC_VECTOR(7 downto 0);
        valid:out  STD_LOGIC;
        Output:out   STD_LOGIC_VECTOR(2 downto 0) );
end component;
signal inputs :STD_LOGIC_VECTOR(7 downto 0);
signal valids :STD_LOGIC; 
signal outputs :STD_LOGIC_VECTOR(2 downto 0);
begin
m:onehot port map(inputs, valids ,outputs);
inputs <= "00000001" after 10 ns,
        "00000010" after 20 ns,
        "00000100" after 30 ns,
        "00001000" after 40 ns,
        "00010000" after 50 ns,
        "00100000" after 60 ns,
        "01000000" after 70 ns,
        "10000000" after 80 ns,
        "10000110" after 90 ns;
end Behavioral;
