library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
  
ENTITY Convertidor_BCD_7seg IS   
	port   ( BCD : in std_logic_vector(3 downto 0);	
				Display : out std_logic_vector(6 downto 0));  
END Convertidor_BCD_7seg;
 
ARCHITECTURE solucion  OF Convertidor_BCD_7seg IS 
BEGIN 
	with BCD select 
    Display <= "0111111" when "0000", 
					"0000011" when "0001", 
					"1101101" when "0010", 
					"1100111" when "0011", 
					"1010011" when "0100", 
					"1110110" when "0101", 
					"1111110" when "0110", 
					"1100011" when "0111", 
					"1111111" when "1000", 
					"1110111" when "1001", 
					"1111011" when "1010", 
					"1011110" when "1011", 
					"0111100" when "1100", 
					"1001111" when "1101", 
					"1111100" when "1110", 
					"1111000" when others; 
END solucion;