--  A testbench for reg_file_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity reg_file_tb is
end reg_file_tb;

architecture behav of reg_file_tb is
  component main
    port (
      RS1: in std_logic_vector(2 downto 0); -- The index of the register which should output its value to OUT1.
      RS2: in std_logic_vector(2 downto 0); -- The index of the register which should output its value to OUT2.
      WS: in std_logic_vector(2 downto 0); -- The index of the register which should save the value on IN on the next clock cycle (if WE is high).
      WE: in std_logic; -- Whether the register selected by WS should save the value from IN on the next cycle.
      p_IN: in std_logic_vector(15 downto 0); -- The value to be saved into the register specified by WS if WE is high,
      clk: in std_logic;
      FL_IN: in std_logic_vector(15 downto 0); -- The value to be saved into the register specified by WS if WE is high,
      FL_EN: in std_logic; -- Whether the register selected by WS should save the value from IN on the next cycle.
      OUT1: out std_logic_vector(15 downto 0); -- The value in the register specified by RS1.
      OUT2: out std_logic_vector(15 downto 0) -- The value in the register specified by RS2.
      );
  end component;

  signal RS1 : std_logic_vector(2 downto 0);
  signal RS2 : std_logic_vector(2 downto 0);
  signal WS : std_logic_vector(2 downto 0);
  signal WE : std_logic;
  signal p_IN : std_logic_vector(15 downto 0);
  signal clk : std_logic;
  signal FL_IN : std_logic_vector(15 downto 0);
  signal FL_EN : std_logic;
  signal OUT1 : std_logic_vector(15 downto 0);
  signal OUT2 : std_logic_vector(15 downto 0);
  function to_string ( a: std_logic_vector) return string is
      variable b : string (1 to a'length) := (others => NUL);
      variable stri : integer := 1; 
  begin
      for i in a'range loop
          b(stri) := std_logic'image(a((i)))(2);
      stri := stri+1;
      end loop;
      return b;
  end function;
begin
  main_0 : main port map (
    RS1 => RS1,
    RS2 => RS2,
    WS => WS,
    WE => WE,
    p_IN => p_IN,
    clk => clk,
    FL_IN => FL_IN,
    FL_EN => FL_EN,
    OUT1 => OUT1,
    OUT2 => OUT2 );
  process
    type pattern_type is record
      clk : std_logic;
      RS1 : std_logic_vector(2 downto 0);
      RS2 : std_logic_vector(2 downto 0);
      WS : std_logic_vector(2 downto 0);
      WE : std_logic;
      p_IN : std_logic_vector(15 downto 0);
      OUT1 : std_logic_vector(15 downto 0);
      OUT2 : std_logic_vector(15 downto 0);
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', "000", "000", "000", '1', "0001001000110100", "----------------", "----------------"), -- i=0
      ('1', "000", "000", "000", '1', "0001001000110100", "----------------", "----------------"), -- i=1
      ('0', "000", "000", "000", '1', "0001001000110100", "0000000000000000", "0000000000000000"), -- i=2
      ('0', "001", "001", "001", '1', "0001001000110100", "----------------", "----------------"), -- i=3
      ('1', "001", "001", "001", '1', "0001001000110100", "----------------", "----------------"), -- i=4
      ('0', "001", "001", "001", '1', "0001001000110100", "0001001000110100", "0001001000110100"), -- i=5
      ('0', "010", "001", "010", '1', "1011111011101111", "----------------", "----------------"), -- i=6
      ('1', "010", "001", "010", '1', "1011111011101111", "----------------", "----------------"), -- i=7
      ('0', "010", "001", "010", '1', "1011111011101111", "1011111011101111", "0001001000110100"), -- i=8
      ('0', "011", "010", "011", '1', "1101111010101101", "----------------", "----------------"), -- i=9
      ('1', "011", "010", "011", '1', "1101111010101101", "----------------", "----------------"), -- i=10
      ('0', "011", "010", "011", '1', "1101111010101101", "1101111010101101", "1011111011101111"), -- i=11
      ('0', "100", "011", "100", '1', "1111111111111111", "----------------", "----------------"), -- i=12
      ('1', "100", "011", "100", '1', "1111111111111111", "----------------", "----------------"), -- i=13
      ('0', "100", "011", "100", '1', "1111111111111111", "1111111111111111", "1101111010101101"), -- i=14
      ('0', "100", "011", "100", '0', "1010101111001101", "----------------", "----------------"), -- i=15
      ('1', "100", "011", "100", '0', "1010101111001101", "----------------", "----------------"), -- i=16
      ('0', "100", "011", "100", '0', "1010101111001101", "1111111111111111", "1101111010101101"), -- i=17
      ('0', "100", "011", "011", '0', "1010101111001101", "----------------", "----------------"), -- i=18
      ('1', "100", "011", "011", '0', "1010101111001101", "----------------", "----------------"), -- i=19
      ('0', "100", "011", "011", '0', "1010101111001101", "1111111111111111", "1101111010101101"), -- i=20
      ('0', "010", "001", "010", '0', "1010101111001101", "----------------", "----------------"), -- i=21
      ('1', "010", "001", "010", '0', "1010101111001101", "----------------", "----------------"), -- i=22
      ('0', "010", "001", "010", '0', "1010101111001101", "1011111011101111", "0001001000110100"), -- i=23
      ('0', "010", "001", "001", '0', "1010101111001101", "----------------", "----------------"), -- i=24
      ('1', "010", "001", "001", '0', "1010101111001101", "----------------", "----------------"), -- i=25
      ('0', "010", "001", "001", '0', "1010101111001101", "1011111011101111", "0001001000110100"), -- i=26
      ('0', "010", "001", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=27
      ('1', "010", "001", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=28
      ('0', "010", "001", "011", '1', "1011101011011110", "1011111011101111", "0001001000110100"), -- i=29
      ('0', "001", "011", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=30
      ('1', "001", "011", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=31
      ('0', "001", "011", "011", '1', "1011101011011110", "0001001000110100", "1011101011011110"), -- i=32
      ('0', "001", "001", "011", '0', "0001001000110100", "----------------", "----------------"), -- i=33
      ('1', "001", "001", "011", '0', "0001001000110100", "----------------", "----------------"), -- i=34
      ('0', "001", "001", "011", '0', "0001001000110100", "0001001000110100", "0001001000110100"), -- i=35
      ('0', "011", "100", "001", '1', "0000000000000000", "----------------", "----------------"), -- i=36
      ('1', "011", "100", "001", '1', "0000000000000000", "----------------", "----------------"), -- i=37
      ('0', "011", "100", "001", '1', "0000000000000000", "1011101011011110", "1111111111111111"), -- i=38
      ('0', "001", "001", "011", '0', "0001001000110100", "----------------", "----------------"), -- i=39
      ('1', "001", "001", "011", '0', "0001001000110100", "----------------", "----------------"), -- i=40
      ('0', "001", "001", "011", '0', "0001001000110100", "0000000000000000", "0000000000000000"), -- i=41
      ('0', "011", "100", "000", '1', "1011101011011110", "----------------", "----------------"), -- i=42
      ('1', "011", "100", "000", '1', "1011101011011110", "----------------", "----------------"), -- i=43
      ('0', "011", "100", "000", '1', "1011101011011110", "1011101011011110", "1111111111111111"), -- i=44
      ('0', "000", "000", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=45
      ('1', "000", "000", "011", '1', "1011101011011110", "----------------", "----------------"), -- i=46
      ('0', "000", "000", "011", '1', "1011101011011110", "0000000000000000", "0000000000000000"));
  begin
    for i in patterns'range loop
      RS1 <= patterns(i).RS1;
      RS2 <= patterns(i).RS2;
      WS <= patterns(i).WS;
      WE <= patterns(i).WE;
      p_IN <= patterns(i).p_IN;
      clk <= patterns(i).clk;
      FL_IN <= patterns(i).FL_IN;
      FL_EN <= patterns(i).FL_EN;
      wait for 10 ns;
      assert std_match(OUT1, patterns(i).OUT1) OR (OUT1 = "ZZZZZZZZZZZZZZZZ" AND patterns(i).OUT1 = "ZZZZZZZZZZZZZZZZ")
        report "wrong value for OUT1, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).OUT1) & ", found " & to_string(OUT1) severity error;assert std_match(OUT2, patterns(i).OUT2) OR (OUT2 = "ZZZZZZZZZZZZZZZZ" AND patterns(i).OUT2 = "ZZZZZZZZZZZZZZZZ")
        report "wrong value for OUT2, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).OUT2) & ", found " & to_string(OUT2) severity error;end loop;
    wait;
  end process;
end behav;
