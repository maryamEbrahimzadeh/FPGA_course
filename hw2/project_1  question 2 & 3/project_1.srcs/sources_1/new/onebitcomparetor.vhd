

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity onebitcomparetor is
  Port ( a_in :in std_logic;
       b_in : in std_logic;
       eq_in : in std_logic;
       gt_in : in std_logic;
       lt_in : in std_logic;
       eq_out : out std_logic;
       gt_out : out std_logic;
       lt_out  : out std_logic);
end onebitcomparetor;

architecture Behavioral of onebitcomparetor is

begin

eq_out <=  (eq_in and(not a_in) and (not b_in)) or (eq_in and a_in and b_in) ;
gt_out <= (gt_in) or (eq_in and a_in and (not b_in));
lt_out <= (lt_in) or (eq_in and b_in and (not a_in));


end Behavioral;
