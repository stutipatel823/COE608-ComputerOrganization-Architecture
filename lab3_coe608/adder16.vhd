library ieee;
use ieee.std_logic_1164.all;
entity adder16 is
port(

Cin :in std_logic;
x,y :in std_logic_vector(15 downto 0);
s :out std_logic_vector(15 downto 0);
Cout :out std_logic
);
end adder16;
architecture Behavior of adder16 is
component adder4
port(

Cin :in std_logic;
x,y :in std_logic_vector(3 downto 0);
s :out std_logic_vector(3 downto 0);
Cout :out std_logic
);
end component;
signal c :std_logic_vector(1 to 3);
begin
stage0: adder4 port map (Cin, x(3 downto 0), y(3 downto 0), s(3 downto 0), c(1));
stage1: adder4 port map (c(1), x(7 downto 4), y(7 downto 4), s(7 downto 4), c(2));
stage2: adder4 port map (c(2), x(11 downto 8), y(11 downto 8), s(11 downto 8), c(3));
stage3: adder4 port map (c(3), x(15 downto 12), y(15 downto 12), s(15 downto 12), Cout);
end Behavior;