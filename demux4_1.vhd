library ieee;
use ieee.std_logic_1164.all;

entity demux4_1 is
	Port(
		ent: in std_logic_vector(3 downTo 0);
		s:	in std_logic_vector(1 downTo 0);
		En0, En1, En2, En3: out std_logic_vector(3 downTo 0));
end demux4_1;

Architecture sol of demux4_1 is
begin
	En0 <= ent when s = "00" else "0000";
	En1 <= ent when s = "01" else "0000";
	En2 <= ent when s = "10" else "0000";
	En3 <= ent when s = "11" else "0000";
end sol;