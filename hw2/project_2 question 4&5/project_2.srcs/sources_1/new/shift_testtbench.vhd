
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_testtbench  is
--  Port ( );
end shift_testtbench;

architecture Behavioral of shift_testtbench is
component  shift is
Port (input :in std_logic_vector(7 downto 0);
step : in std_logic_vector(2 downto 0); 
output : out std_logic_vector(7 downto 0)
);
end component shift;
signal inputsig : std_logic_vector(7 downto 0):="01010101";
signal outputsig : std_logic_vector(7 downto 0);
signal stepsig : std_logic_vector(2 downto 0);

begin
m :  shift port map(inputsig, stepsig, outputsig);

stepsig <= "000" after 20 ns,
           "001" after 30 ns,
           "010" after 40 ns,
           "011" after 50 ns,
           "100" after 60 ns,
           "101" after 70 ns,
           "110" after 80 ns,
           "111" after 90 ns;
     
end Behavioral;
