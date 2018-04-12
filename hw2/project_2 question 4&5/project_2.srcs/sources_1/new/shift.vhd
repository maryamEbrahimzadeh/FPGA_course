

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shift is
 Port (input :in std_logic_vector(7 downto 0);
 step : in std_logic_vector(2 downto 0); 
 output : out std_logic_vector(7 downto 0)
 );
end shift;

architecture Behavioral of shift is

component mux8to1 is
port ( i0, i1, i2, i3,i4, i5, i6, i7, a, b ,c : in std_logic;
q : out std_logic);
end component  mux8to1;
signal sig0,sig1,sig2,sig3,sig4,sig5,sig6,sig7,outsig : std_logic_vector(7 downto 0);
begin
sig0 <= input;
sig1 <= input(0) & input(7 downto 1);
sig2 <= input(1) & input(0) & input(7 downto 2);
sig3 <= input(2) & input(1) & input(0) & input(7 downto 3);
sig4 <= input(3) & input(2) & input(1) & input(0) & input(7 downto 4);
sig5 <= input(4) & input(3) & input(2) & input(1) & input(0) & input(7 downto 5);
sig6 <= input(5) & input(4) & input(3) & input(2) & input(1) & input(0) & input(7 downto 6);
sig7 <= input(6) & input(5) & input(4) & input(3) & input(2) & input(1) & input(0) & input(7);


m : mux8to1 port map(sig0(0),sig1(0),sig2(0),sig3(0),sig4(0),sig5(0),sig6(0),sig7(0),step(2),step(1),step(0),outsig(0));
m2 : mux8to1 port map(sig0(1),sig1(1),sig2(1),sig3(1),sig4(1),sig5(1),sig6(1),sig7(1),step(2),step(1),step(0),outsig(1));
m3 : mux8to1 port map(sig0(2),sig1(2),sig2(2),sig3(2),sig4(2),sig5(2),sig6(2),sig7(2),step(2),step(1),step(0),outsig(2));
m4 : mux8to1 port map(sig0(3),sig1(3),sig2(3),sig3(3),sig4(3),sig5(3),sig6(3),sig7(3),step(2),step(1),step(0),outsig(3));
m5 : mux8to1 port map(sig0(4),sig1(4),sig2(4),sig3(4),sig4(4),sig5(4),sig6(4),sig7(4),step(2),step(1),step(0),outsig(4));
m6 : mux8to1 port map(sig0(5),sig1(5),sig2(5),sig3(5),sig4(5),sig5(5),sig6(5),sig7(5),step(2),step(1),step(0),outsig(5));
m7 : mux8to1 port map(sig0(6),sig1(6),sig2(6),sig3(6),sig4(6),sig5(6),sig6(6),sig7(6),step(2),step(1),step(0),outsig(6));
m8 : mux8to1 port map(sig0(7),sig1(7),sig2(7),sig3(7),sig4(7),sig5(7),sig6(7),sig7(7),step(2),step(1),step(0),outsig(7));

output<= outsig;

end Behavioral;
