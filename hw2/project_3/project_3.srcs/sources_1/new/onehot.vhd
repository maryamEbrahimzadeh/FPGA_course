

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity onehot is
  Port (input :in  STD_LOGIC_VECTOR(7 downto 0);
        valid:out  STD_LOGIC;
        Output:out   STD_LOGIC_VECTOR(2 downto 0) );
end onehot;

architecture Behavioral of onehot is
signal s : std_logic_vector(5 downto 0);
begin
s(0) <= input(0) xor input(1);
s(1) <= input(2) xor input(3);
s(2) <= input(4) xor input(5);
s(3) <= input(6) xor input(7);
s(4) <= s(0) xor s(1);
s(5) <= s(2) xor s(3);
Valid <= s(4) xor s(5);

Output(2) <= input(7) or input(6) or input(5) or input(4);
Output(1) <= input(7) or input(6) or input(3) or input(2);
Output(0) <= input(7) or input(5) or input(3) or input(1);


end Behavioral;
