

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux8to1 is
port ( i0, i1, i2, i3,i4, i5, i6, i7, a, b ,c : in std_logic;
q : out std_logic);
end mux8to1;

architecture Behavioral of mux8to1 is

signal not_a : std_logic;
signal not_b : std_logic;
signal not_c : std_logic;
signal m0,m1,m2,m3,m4,m5,m6,m7 : std_logic;

begin

not_a <= not a;
not_b <= not b;
not_c <= not c;
m0 <= not_a and not_b and not_c and i0;
m1 <= not_a and not_b and c and i1;
m2 <= not_a and b and not_c and i2;
m3 <= not_a and b and c and i3;
m4 <= a     and not_b and not_c and i4;
m5 <= a     and not_b and c and i5;
m6 <= a     and b and not_c and i6;
m7  <= a and b and c and i7;

q <= m0 or m1 or m2 or m3 or m4 or m5 or m6 or m7;

end Behavioral;
