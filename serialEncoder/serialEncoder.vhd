library ieee;
use ieee.std_logic_1164.all;

library logic;
use logic.all;

library storeDev;
use storeDev.all;

library bitEncoder;
use bitEncoder.all;

ENTITY serialEncoder is
	PORT (mIn, nGRst, clk : in std_logic;
			busy : out std_logic;
			Y : out std_logic_vector(7 downto 0));
END serialEncoder;

ARCHITECTURE structure OF serialEncoder IS
	
	COMPONENT flipFlopDPET
		PORT (clk, D, nSet, nRst: in std_logic;
				Q, nQ: out std_logic);
	END COMPONENT;
	
	COMPONENT bitEncoder
		PORT (bIn, mult, clk, nRst : in std_logic;
				bOut : out std_logic);
	END COMPONENT;
	
	COMPONENT parReg_8bit
		PORT (nSet, clk: in std_logic;
				D: in std_logic_vector(7 downto 0);
				Q: out std_logic_vector(7 downto 0));
	END COMPONENT;
	
	SIGNAL sig_mIn, sig_nreset, sig_busy : std_logic;
	SIGNAL sig_control, sig_out : std_logic_vector(7 downto 0);
BEGIN
	ff0: flipFlopDPET PORT MAP (clk, mIn, '1', sig_nreset, sig_mIn);

	-- Encode each bit
	be0: bitEncoder PORT MAP (mIn, sig_control(0), clk, sig_nreset, sig_out(0));
	be1: bitEncoder PORT MAP (mIn, sig_control(1), clk, sig_nreset, sig_out(1));
	be2: bitEncoder PORT MAP (mIn, sig_control(2), clk, sig_nreset, sig_out(2));
	be3: bitEncoder PORT MAP (mIn, sig_control(3), clk, sig_nreset, sig_out(3));
	be4: bitEncoder PORT MAP (mIn, sig_control(4), clk, sig_nreset, sig_out(4));
	be5: bitEncoder PORT MAP (mIn, sig_control(5), clk, sig_nreset, sig_out(5));
	be6: bitEncoder PORT MAP (mIn, sig_control(6), clk, sig_nreset, sig_out(6));
	be7: bitEncoder PORT MAP (mIn, sig_control(7), clk, sig_nreset, sig_out(7));
	
	-- Store bits to Register
	pr : parReg_8bit PORT MAP ('1', clk, sig_out, Y);
	
	busy <= sig_busy;
END structure;