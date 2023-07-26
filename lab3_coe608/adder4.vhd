library ieee;
use ieee.std_logic_1164.all;
entity adder4 is
port(

Cin :in std_logic;
x,y :in std_logic_vector(3 downto 0);
s :out std_logic_vector(3 downto 0);
Cout :out std_logic
);
end adder4;
architecture Behavior of adder4 is
component fulladd
port(

Cin,x,y :in std_logic;
s,Cout :out std_logic
);
end component;
signal c :std_logic_vector(1 to 3);
begin
stage0: fulladd port map(Cin, x(0), y(0), s(0), c(1));
stage1: fulladd port map(c(1), x(1), y(1), s(1), c(2));
stage2: fulladd port map(c(2), x(2), y(2), s(2), c(3));
stage3: fulladd port map(c(3), x(3), y(3), s(3), Cout);
end Behavior;