-- VHDL Entity bonus3a_lib.schemas_tsest.symbol
--
-- Created:
--          by - hp.UNKNOWN (LAPTOP-RSPOQ668)
--          at - 16:27:49 19.12.2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY schemas_tsest IS
   PORT( 
      din0 : IN     std_logic;
      pre  : IN     std_logic;
      dout : OUT    std_logic
   );

-- Declarations

END schemas_tsest ;

--
-- VHDL Architecture bonus3a_lib.schemas_tsest.struct
--
-- Created:
--          by - hp.UNKNOWN (LAPTOP-RSPOQ668)
--          at - 16:27:49 19.12.2021
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF schemas_tsest IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL clk    : std_logic;
   SIGNAL din2   : std_logic;
   SIGNAL dout1  : std_logic;
   SIGNAL dout10 : std_logic;
   SIGNAL dout11 : std_logic;
   SIGNAL dout12 : std_logic;
   SIGNAL dout13 : std_logic;
   SIGNAL dout14 : std_logic;
   SIGNAL dout15 : std_logic;
   SIGNAL dout2  : std_logic;
   SIGNAL dout3  : std_logic;
   SIGNAL dout4  : std_logic;
   SIGNAL dout5  : std_logic;
   SIGNAL dout6  : std_logic;
   SIGNAL dout7  : std_logic;
   SIGNAL dout8  : std_logic;
   SIGNAL dout9  : std_logic;
   SIGNAL q      : std_logic;
   SIGNAL q1     : std_logic;
   SIGNAL q2     : std_logic;
   SIGNAL qb1    : std_logic;
   SIGNAL qbb    : std_logic;


   -- ModuleWare signal declarations(v1.9) for instance 'U_3' of 'clk'
   SIGNAL mw_U_3clk : std_logic;
   SIGNAL mw_U_3disable_clk : boolean := FALSE;

   -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'jkff'
   SIGNAL mw_U_0reg_cval : std_logic;

   -- ModuleWare signal declarations(v1.9) for instance 'U_1' of 'jkff'
   SIGNAL mw_U_1reg_cval : std_logic;

   -- ModuleWare signal declarations(v1.9) for instance 'U_2' of 'jkff'
   SIGNAL mw_U_2reg_cval : std_logic;


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_3' of 'clk'
   u_3clk_proc: PROCESS
   BEGIN
      WHILE NOT mw_U_3disable_clk LOOP
         mw_U_3clk <= '0', '1' AFTER 50 ns;
         WAIT FOR 100 ns;
      END LOOP;
      WAIT;
   END PROCESS u_3clk_proc;
   mw_U_3disable_clk <= TRUE AFTER 1000 ns;
   clk <= mw_U_3clk;

   -- ModuleWare code(v1.9) for instance 'U_0' of 'jkff'
   q <= mw_U_0reg_cval;
   u_0seq_proc: PROCESS (clk, pre)
   BEGIN
      IF (pre = '1') THEN
         mw_U_0reg_cval <= '1';
      ELSIF (clk'EVENT AND clk='1') THEN
         IF ((dout10 = '0') AND (dout9 = '0')) THEN
            mw_U_0reg_cval <= mw_U_0reg_cval;
         ELSIF ((dout10 = '0') AND (dout9 = '1')) THEN
            mw_U_0reg_cval <= '0';
         ELSIF ((dout10 = '1') AND (dout9 = '0')) THEN
            mw_U_0reg_cval <= '1';
         ELSIF ((dout10 = '1') AND (dout9 = '1')) THEN
            mw_U_0reg_cval <= NOT(mw_U_0reg_cval);
         END IF;
      END IF;
   END PROCESS u_0seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_1' of 'jkff'
   q1 <= mw_U_1reg_cval;
   qbb <= NOT(mw_U_1reg_cval);
   u_1seq_proc: PROCESS (clk, pre)
   BEGIN
      IF (pre = '1') THEN
         mw_U_1reg_cval <= '1';
      ELSIF (clk'EVENT AND clk='1') THEN
         IF ((dout12 = '0') AND (dout15 = '0')) THEN
            mw_U_1reg_cval <= mw_U_1reg_cval;
         ELSIF ((dout12 = '0') AND (dout15 = '1')) THEN
            mw_U_1reg_cval <= '0';
         ELSIF ((dout12 = '1') AND (dout15 = '0')) THEN
            mw_U_1reg_cval <= '1';
         ELSIF ((dout12 = '1') AND (dout15 = '1')) THEN
            mw_U_1reg_cval <= NOT(mw_U_1reg_cval);
         END IF;
      END IF;
   END PROCESS u_1seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_2' of 'jkff'
   q2 <= mw_U_2reg_cval;
   qb1 <= NOT(mw_U_2reg_cval);
   u_2seq_proc: PROCESS (clk, pre)
   BEGIN
      IF (pre = '1') THEN
         mw_U_2reg_cval <= '1';
      ELSIF (clk'EVENT AND clk='1') THEN
         IF ((dout14 = '0') AND (dout13 = '0')) THEN
            mw_U_2reg_cval <= mw_U_2reg_cval;
         ELSIF ((dout14 = '0') AND (dout13 = '1')) THEN
            mw_U_2reg_cval <= '0';
         ELSIF ((dout14 = '1') AND (dout13 = '0')) THEN
            mw_U_2reg_cval <= '1';
         ELSIF ((dout14 = '1') AND (dout13 = '1')) THEN
            mw_U_2reg_cval <= NOT(mw_U_2reg_cval);
         END IF;
      END IF;
   END PROCESS u_2seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'nand'
   dout1 <= NOT(q AND q1);

   -- ModuleWare code(v1.9) for instance 'U_5' of 'nand'
   dout <= NOT(dout1 AND dout1);

   -- ModuleWare code(v1.9) for instance 'U_6' of 'nand'
   dout2 <= NOT(din0 AND din0);

   -- ModuleWare code(v1.9) for instance 'U_7' of 'nand'
   dout11 <= NOT(dout2 AND q1 AND q2);

   -- ModuleWare code(v1.9) for instance 'U_8' of 'nand'
   dout9 <= NOT(dout2 AND qbb);

   -- ModuleWare code(v1.9) for instance 'U_9' of 'nand'
   dout7 <= NOT(din0 AND q);

   -- ModuleWare code(v1.9) for instance 'U_10' of 'nand'
   dout8 <= NOT(dout2 AND q2);

   -- ModuleWare code(v1.9) for instance 'U_11' of 'nand'
   dout10 <= NOT(dout11 AND dout11);

   -- ModuleWare code(v1.9) for instance 'U_12' of 'nand'
   dout12 <= NOT(dout7 AND dout8);

   -- ModuleWare code(v1.9) for instance 'U_13' of 'nand'
   dout6 <= NOT(dout2 AND q2);

   -- ModuleWare code(v1.9) for instance 'U_14' of 'nand'
   din2 <= NOT(din0 AND q2);

   -- ModuleWare code(v1.9) for instance 'U_15' of 'nand'
   dout15 <= NOT(dout6 AND q1 AND din2);

   -- ModuleWare code(v1.9) for instance 'U_16' of 'nand'
   dout5 <= NOT(q AND qbb AND qb1);

   -- ModuleWare code(v1.9) for instance 'U_17' of 'nand'
   dout14 <= NOT(dout5 AND dout2);

   -- ModuleWare code(v1.9) for instance 'U_18' of 'nand'
   dout3 <= NOT(dout2 AND q1);

   -- ModuleWare code(v1.9) for instance 'U_19' of 'nand'
   dout4 <= NOT(dout2 AND qbb AND q2);

   -- ModuleWare code(v1.9) for instance 'U_20' of 'nand'
   dout13 <= NOT(dout3 AND dout4);

   -- Instance port mappings.

END struct;
