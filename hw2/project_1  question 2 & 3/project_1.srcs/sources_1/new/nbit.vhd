

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--suppose n is 4
entity nbit is
generic (N : integer := 4);
  Port (       a : in std_logic_vector(15 downto 0);
               b : in std_logic_vector(15 downto 0);
			   
               greater : out std_logic;
               smaller : out std_logic;
               equal : out std_logic
                );
end nbit;

architecture Behavioral of nbit is
component  fourbitcomparetor is
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
end component fourbitcomparetor;

signal sig : std_logic_vector(14 downto 0):="000000000000001";

begin

 g_GENERATE_FOR: for i in 0 to N-1 generate
    m : fourbitcomparetor port map(
    a => a((N-i)*4 -1 downto (N-i)*4 -1 - 3) 
   ,b => b((N-i)*4 -1 downto (N-i)*4 -1 - 3)
   ,eq_in => sig(i*3)
   ,gt_in => sig(i*3+1)
   ,lt_in => sig(i*3+2)
   ,greater => sig(i*3+3)
   ,smaller => sig(i*3+4)
   ,equal => sig(i*3+5) 
   );
   
end generate ;
greater <= sig(12);
smaller <= sig(13);
equal <= sig(14);

end Behavioral;
