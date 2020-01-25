library ieee;
use ieee.std_logic_1164.all;

entity demux3_2 is
	Port(
		ent: in std_logic_vector(2 downTo 0);
		s:	in std_logic;
		En0, En1: out std_logic_vector(2 downTo 0));
end demux3_2;

Architecture sol of demux3_2 is
begin
	En0 <= ent when s = '0' else "000";
	En1 <= ent when s = '1' else "000";
end sol;