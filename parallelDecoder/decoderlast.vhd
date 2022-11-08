library ieee;
use ieee.std_logic_1164.all;

library logic;
use logic.all;

ENTITY decoderlast IS
	PORT (Y0, Y1, Y2 : in std_logic;
			m1, m2 : in std_logic;
			B : out std_logic);
END decoderlast;

ARCHITECTURE structure OF decoderlast IS

	COMPONENT AND_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT OR_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT XOR_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	SIGNAL sig_y, sig_z, sig_aux1, sig_aux2, sig_aux3: std_logic;
	
BEGIN
	y: XOR_2 PORT MAP (Y1, m1, sig_y);
	z: XOR_2 PORT MAP (Y2, m2, sig_z);
	and0: AND_2 PORT MAP (Y0, sig_y, sig_aux1);			-- sig_aux1 = xy
	or0: OR_2 PORT MAP (Y0, sig_z, sig_aux2);				-- sig_aux2 = x+y
	and1: AND_2 PORT MAP (sig_z, sig_aux2, sig_aux3);  -- sig_aux3 = z(x+y)
	or1: OR_2 PORT MAP (sig_aux3, sig_aux2, B);
END structure;