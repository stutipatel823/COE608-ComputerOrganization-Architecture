library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity right_shift_32bit is
	port (
		a_in 	 :in std_logic_vector(7 downto 0);
		result :out std_logic_vector(7 downto 0) -- result
		);
end right_shift_32bit;

architecture right_shift_32bitImp of right_shift_32bit is
begin
	result(6 downto 0) <= a_in(7 downto 1);
	result(7) <= '0';
end right_shift_32bitImp;