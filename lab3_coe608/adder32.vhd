library ieee;
use ieee.std_logic_1164.all;
entity adder32 is
port(

Cin :in std_logic;
x,y :in std_logic_vector(31 downto 0);
s :out std_logic_vector(31 downto 0);
Cout :out std_logic
);
end adder32;
architecture Behavior of adder32 is
component adder16
port(

Cin :in std_logic;
x,y :in std_logic_vector(15 downto 0);
s :out std_logic_vector(15 downto 0);
Cout :out std_logic
);
end component;
signal c :std_logic;
begin
stage0: adder16 port map(Cin, x(15 downto 0), y(15 downto 0), s(15 downto 0), c);
stage1: adder16 port map(c, x(31 downto 16),y(31 downto 16), s(31 downto 16),Cout);
end Behavior;