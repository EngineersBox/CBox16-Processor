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
      CLK: in std_logic;
      FL_IN: in std_logic_vector(15 downto 0); -- The value to be saved into the register specified by WS if WE is high,
      FL_EN: in std_logic; -- Whether the register selected by WS should save the value from IN on the next cycle.
      PC_IN: in std_logic_vector(15 downto 0);
      HE: in std_logic;
      OUT1: out std_logic_vector(15 downto 0); -- The value in the register specified by RS1.
      OUT2: out std_logic_vector(15 downto 0) -- The value in the register specified by RS2.
      );
  end component;

  signal RS1 : std_logic_vector(2 downto 0);
  signal RS2 : std_logic_vector(2 downto 0);
  signal WS : std_logic_vector(2 downto 0);
  signal WE : std_logic;
  signal p_IN : std_logic_vector(15 downto 0);
  signal CLK : std_logic;
  signal FL_IN : std_logic_vector(15 downto 0);
  signal FL_EN : std_logic;
  signal PC_IN : std_logic_vector(15 downto 0);
  signal HE : std_logic;
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
    CLK => CLK,
    FL_IN => FL_IN,
    FL_EN => FL_EN,
    PC_IN => PC_IN,
    HE => HE,
    OUT1 => OUT1,
    OUT2 => OUT2 );
  process
    type pattern_type is record
