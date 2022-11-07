library ieee;
use ieee.std_logic_1164.all;

library logic;
use logic.all;

ENTITY decoder1bit IS
	PORT (C0, C1, C2, C3: in std_logic;
			B: out std_logic;							-- bit value
			V: out std_logic);						-- valid flag
END decoder1bit;

ARCHITECTURE structure OF decoder1bit IS

	COMPONENT NOT_1
		PORT (A : in std_logic;
				Y : out std_logic);
	END COMPONENT;

	COMPONENT AND_3
		PORT (A, B, C : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT OR_4
		PORT (A, B, C, D : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT XOR_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	SIGNAL sig_and10, sig_and11, sig_and12, sig_and13, sig_and00, sig_and01, sig_and02, sig_and03, notc0, notc1, notc2, notc3, sig_f, sig_b : std_logic;
	
BEGIN
	-- For better reading of comments C0, C1, C2 and C3 is A, B, C, D respectfully
	-- Equation to know if the correct bit value is 1 
 	and10: AND_3 PORT MAP (C1, C2, C3, sig_and10);									-- sig_and10 = B and C and D 
	and11: AND_3 PORT MAP (C0, C2, C3, sig_and11);									-- sig_and11 = A and C and D
	and12: AND_3 PORT MAP (C0, C1, C3, sig_and12);									-- sig_and12 = A and B and D
	and13: AND_3 PORT MAP (C0, C1, C2, sig_and13);									-- sig_and13 = A and B and C
	orb: OR_4 PORT MAP (sig_and10, sig_and11, sig_and12, sig_and13, sig_b);	-- B = BCD + ACD + ABD + ABC
	
	-- Equation to know if the correct bit value is 0
	not0: NOT_1 PORT MAP (C0, notc0);
	not1: NOT_1 PORT MAP (C1, notc1);
	not2: NOT_1 PORT MAP (C2, notc2);
	not3: NOT_1 PORT MAP (C3, notc3);
	and00: AND_3 PORT MAP (notc1, notc2, notc3, sig_and00);						-- sig_and00 = B' and C' and D' 
	and01: AND_3 PORT MAP (notc0, notc2, notc3, sig_and01);						-- sig_and01 = A' and C' and D'
	and02: AND_3 PORT MAP (notc0, notc1, notc3, sig_and02);						-- sig_and02 = A' and B' and D'
	and03: AND_3 PORT MAP (notc0, notc1, notc2, sig_and03);						-- sig_and03 = A' and B' and C'
	orf: OR_4 PORT MAP (sig_and00, sig_and01, sig_and02, sig_and03, sig_f);	-- sig_f = A'B'C' + A'B'D' + A'C'D' + B'C'D'
	
	-- If the message is valid equation for 0 must be the reciprocal of equation for 1
	valid: XOR_2 PORT MAP (sig_b, sig_f, V);												-- V = B xor sig_f
	
	B <= sig_b;
END structure;