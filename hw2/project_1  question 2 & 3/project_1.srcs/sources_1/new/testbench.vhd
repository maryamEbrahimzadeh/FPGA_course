

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

component nbit is
generic (N : integer := 4);
 Port (       a : in std_logic_vector(15 downto 0);
              b : in std_logic_vector(15 downto 0);
              greater : out std_logic;
              smaller : out std_logic;
              equal : out std_logic);
end component nbit;
signal asig,bsig : std_logic_vector(15 downto 0):="0000000000000000";
signal gt,lt,eq : std_logic;
begin

m : nbit port map(asig,bsig,gt,lt,eq);

asig <= "0000100000000011" after 10ns,
        "0000000000000001" after 20ns;
bsig <= "0001000000000001" after 10ns,
        "0000000000000111" after 20ns;


end Behavioral;
