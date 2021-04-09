library IEEE;
use IEEE.std_logic_1164.all;

ENTITY majority_detector IS
PORT (
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	D: in std_logic;
	X: out std_logic
      );

END majority_detector;

ARCHITECTURE logic_function OF majority_detector IS
BEGIN

	X<= (A OR B)
	AND (A OR C)
	AND (B OR C)
	AND (A OR D)
	AND (B OR D)
	AND (C OR D)
	AND (NOT A OR NOT B OR NOT C OR NOT D);

END logic_function;