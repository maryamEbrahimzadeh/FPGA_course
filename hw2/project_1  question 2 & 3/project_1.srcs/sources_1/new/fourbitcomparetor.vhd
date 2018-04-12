

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity fourbitcomparetor is
  Port ( 
             a : in std_logic_vector(3 downto 0);
             b : in std_logic_vector(3 downto 0);
             eq_in : in std_logic;
             gt_in : in std_logic;
             lt_in : in std_logic;
             greater : out std_logic;
             smaller : out std_logic;
             equal : out std_logic
  );
end fourbitcomparetor;

architecture Behavioral of fourbitcomparetor is
component onebitcomparetor is
  Port ( a_in :in std_logic;
       b_in : in std_logic;
       eq_in : in std_logic;
       gt_in : in std_logic;
       lt_in : in std_logic;
       eq_out : out std_logic;
       gt_out : out std_logic;
       lt_out  : out std_logic);
end component onebitcomparetor;
signal sig : std_logic_vector(8 downto 0);


begin
u1: onebitcomparetor port map(a(3), b(3), eq_in, gt_in, lt_in,sig(0),sig(1),sig(2));
u2: onebitcomparetor port map(a(2), b(2) ,sig(0),sig(1),sig(2),sig(3),sig(4),sig(5));
u3: onebitcomparetor port map(a(1), b(1) ,sig(3),sig(4),sig(5),sig(6),sig(7),sig(8));
u4: onebitcomparetor port map(a(0), b(0) ,sig(6),sig(7),sig(8),equal,greater,smaller);


end Behavioral;
