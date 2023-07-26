library ieee;
use ieee.std_logic_1164.all;

entity adder16 is
port(
   	Cin    :  in std_logic;
 	   X,Y    :  in std_logic_vector(15 downto 0);
		S    :  out  std_logic_vector(15 downto 0);
		Cout :  out  std_logic
		);
end adder16;


architecture Behaviour of adder16 is
	component adder4
	port(
		Cin    :  in std_logic;
		X,Y    :  in std_logic_vector(3 downto 0);
		S    :  out  std_logic_vector(3 downto 0);
		Cout :  out  std_logic
	   );
end component;
	
	signal C : std_logic_vector(1 to 3);
begin
	stage0: adder4 port map(Cin,  X(3 downto 0), Y(3 downto 0), S(3 downto 0), C(1));
	stage1: adder4 port map(C(1), X(7 downto 4), Y(7 downto 4), S(7 downto 4), C(2));
	stage2: adder4 port map(C(2), X(11 downto 8), Y(11 downto 8), S(11 downto 8), C(3));
	stage3: adder4 port map(C(3), X(15 downto 12), Y(15 downto 12), S(15 downto 12), Cout);
end Behaviour;