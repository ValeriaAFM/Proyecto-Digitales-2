library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_sostenimiento_found is
	Port ( D: in STD_LOGIC_VECTOR(2 downto 0);
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR(2 downto 0));
end registro_sostenimiento_found;

Architecture sol of registro_sostenimiento_found is
SIGNAL Q1: STD_LOGIC_VECTOR(2 downto 0);
Begin
	Q <= Q1;
	process (CLK, RESET)
	begin
		if reset ='1' then Q1 <= "000";
		elsif (clk'event and clk='1' and enable='1') then
		case enable is
			when '0'=>  Q1<=Q1;
			when '1'=>  Q1<=D (2 downto 0);
		end case;
		end if;
	end process;	
end sol;