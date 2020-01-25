LIBRARY IEEE;
     USE IEEE.STD_LOGIC_1164.all;
     USE IEEE.NUMERIC_STD.all;
	
     ENTITY contador_a_7 IS
       GENERIC (width:POSITIVE:=7);
       PORT (clk   : IN std_logic; 
             reset : IN std_logic; 
             enable: IN std_logic; 
				 ok: OUT std_logic;
				 salida : OUT std_logic_vector (width-1 downto 0));
     END contador_a_7;

     ARCHITECTURE arch1 OF contador_a_7 IS
       SIGNAL cnt : UNSIGNED(width-1 DOWNTO 0);
		 SIGNAL count : std_logic_vector(width-1 DOWNTO 0);
		 

     BEGIN

       pSeq : PROCESS (clk, reset) IS
       BEGIN
         IF reset = '1' THEN
           cnt <= (others => '0');
         ELSIF clk'event AND clk='1' THEN
           IF enable='1' THEN
             cnt <= cnt + 1;
           END IF;
         END IF;
       END PROCESS;

       count <= std_logic_vector(cnt);
		 ok <= '1' when count = "111" else '0';
		salida <= count;
     END arch1;