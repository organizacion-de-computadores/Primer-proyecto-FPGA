-- OR de n bits
-- Autores: Santiago Márquez
--				Brayan Pedraza
--				Sebastián Parrado
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY nBitsOR IS
	GENERIC (MAX_WIDTH	:	integer := 8);
	PORT(		x_OR	:	IN		STD_LOGIC_VECTOR(MAX_WIDTH-1 DOWNTO 0);
				y_OR	:	IN		STD_LOGIC_VECTOR(MAX_WIDTH-1 DOWNTO 0);
				q_OR	:	OUT	STD_LOGIC_VECTOR(MAX_WIDTH-1 DOWNTO 0)); 
END ENTITY nBitsOR;
-------------------------------------------------------
ARCHITECTURE gateLevel OF nBitsOR IS
BEGIN
	ANDs:	FOR i IN 0 TO MAX_WIDTH-1 GENERATE 
	q_OR(i) <= (x_OR(i)) OR y_OR(i);		-- ORs
	END GENERATE;
END ARCHITECTURE gateLevel;