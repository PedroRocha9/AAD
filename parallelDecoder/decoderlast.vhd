library ieee;
use ieee.std_logic_1164.all;

library logic;
use logic.all;

ENTITY decoderlast IS
	PORT (Ys: in std_logic_vector(7 downto 0);
			m1, m2: in std_logic;
			B: out std_logic);
END decoderlast;

ARCHITECTURE structure OF decoderlast IS

	COMPONENT AND_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT OR_3
		PORT (A, B, C : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT XOR_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	SIGNAL sig_y, sig_z, sig_aux1, sig_aux2, sig_aux3: std_logic;
	
BEGIN
	y: XOR_2 PORT MAP (Ys(1), m1, sig_y);
	z: XOR_2 PORT MAP (Ys(2), m2, sig_z);
	andxy: AND_2 PORT MAP (Ys(0), sig_y, sig_aux1);
	andxz: AND_2 PORT MAP (Ys(0), sig_z, sig_aux2);
	andyx: AND_2 PORT MAP (sig_y, sig_z, sig_aux3);
	
	orxyxzyz: OR_3 PORT MAP (sig_aux1, sig_aux2, sig_aux3, B);
END structure;