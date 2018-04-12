

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
component  circuit is
port ( i0, i1, i2, i3, a, b : in std_logic;
q : out std_logic);
End component circuit;
signal s0,s1,s2,s3,x,y,outs : std_logic;

begin
m : circuit port map(s0,s1,s2,s3,x,y,outs);
s0 <= '0' after 10 ns;
s1 <= '0' after 10 ns;
s2 <= '1' after 10 ns;
s3 <= '1' after 10 ns;

x <= '0' after 20 ns,
     '0' after 30 ns,
     '1' after 40 ns,
     '1' after 50 ns;
y <= '0' after 20 ns,
     '1' after 30 ns,
     '0' after 40 ns,
     '1' after 50 ns;

end Behavioral;
