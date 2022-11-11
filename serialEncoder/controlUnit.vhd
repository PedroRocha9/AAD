LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY contMem IS
  PORT (add:  in std_logic_vector (2 downto 0);
        dOut: out std_logic_vector (10 downto 0));
END contMem;

ARCHITECTURE behavior OF contMem IS
BEGIN
	PROCESS (add)
		-- 8 Kvalues, nRst, nSet0, nEnClk, busy
		TYPE CMem IS ARRAY(0 TO 7) OF std_logic_vector (10 DOWNTO 0);
		VARIABLE prog: CMem := ("00000000101",  	-- K:  00000000	nRst = 1		nSetO = 0	nEnClk = 1
										"01010101111",		-- K0: 10101010   nRst = 1		nSetO = 1	nEnClk = 1
										"00110011111",  	-- K1: 11001100	nRst = 1		nSetO = 1	nEnClk = 1
										"00001111111",  	-- K2: 11110000	nRst = 1		nSetO = 1	nEnClk = 1
										"11111111111",  	-- K3: 11111111	nRst = 1		nSetO = 1	nEnClk = 1
										"00000000110",  	-- K:  00000000	nRst = 1		nSetO = 1	nEnClk = 0
										"00000000011",  	-- K:  00000000	nRst = 1		nSetO = 1	nEnClk = 1
										"00000000111");  	-- K:  00000000	nRst = 1		nSetO = 1	nEnClk = 1
	VARIABLE pos: INTEGER;
	BEGIN
		pos := CONV_INTEGER (add);
		dOut <= prog(pos);
	END PROCESS;
END behavior;

-- Control Unit 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY logic;
USE logic.all;

ENTITY controlUnit IS
	PORT (nGRst, clk: in std_logic;
			add: in std_logic_vector(2 downto 0);
			kVals: out std_logic_vector(7 downto 0);
			nRst, nSetO, clkO: out std_logic);
END controlUnit;

ARCHITECTURE structure OF controlUnit IS

	COMPONENT contMem
		PORT (add:  IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				dOut: OUT STD_LOGIC_VECTOR (10 DOWNTO 0));
	END COMPONENT;

	COMPONENT NAND_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;
	
	COMPONENT AND_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;

	COMPONENT NOR_2
		PORT (A, B : in std_logic;
				Y : out std_logic);
	END COMPONENT;

	SIGNAL cLines : std_logic_vector(10 DOWNTO 0);
	SIGNAL sig_nrst, sig_nsetO : std_logic;
BEGIN
	cMem: contMem   PORT MAP (add, cLines);
	nad1: NAND_2 PORT MAP (nGRst, cLines(2), sig_nrst);
	nad2: NAND_2 PORT MAP (clk, sig_nrst, nRst);
	nad3: NAND_2 PORT MAP (nGRst, cLines(1), sig_nsetO);
	nad4: NAND_2 PORT MAP (clk, sig_nsetO, nSetO);
	nord: NOR_2 PORT MAP (clk, cLines(0), clkO);

	kVals <= cLines(10 downto 3);
END structure;