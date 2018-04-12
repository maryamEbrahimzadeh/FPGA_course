

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity circuit is
port ( i0, i1, i2, i3, a, b : in std_logic;
q : out std_logic);
End circuit;


Architecture circuit of circuit is

signal not_a : std_logic;
signal not_b : std_logic;
signal m0,m1,m2,m3 : std_logic;
Begin

not_a <= not a;
not_b <= not b;
m0 <= not_a and not_b and i0;
m1 <= not_a and b and i1;
m2 <= a and not_b and i2;
m3 <= a and b and i3;

q <= m0 or m1 or m2 or m3;
End circuit;

-- this module is a mux