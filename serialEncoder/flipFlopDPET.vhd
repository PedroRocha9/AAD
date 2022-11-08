-- FlipFlopD Positive Edge Trigger
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopDPET IS
	PORT (clk, D, nSet, nRst: in std_logic;
			Q, nQ: out std_logic);
END flipFlopDPET;

ARCHITECTURE behavior OF flipFlopDPET IS
BEGIN
	PROCESS (clk, nSet, nRst)
	BEGIN
		IF (nRst = '0')
			THEN Q <= '0';
				nQ <= '1';
		ELSIF (nSet = '0')
			THEN Q <= '1';
				nQ <= '0';
		ELSIF (clk = '1') AND (clk'EVENT)
			THEN Q <= D;
				nQ <= NOT D;
		END IF;
	END PROCESS;
END behavior;