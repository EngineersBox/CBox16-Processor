--  A testbench for manual_cpu_Manual_CPU_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity manual_cpu_Manual_CPU_tb is
end manual_cpu_Manual_CPU_tb;

architecture behav of manual_cpu_Manual_CPU_tb is
  component main
    port (
      CLK: in std_logic;
      RS1: in std_logic_vector(2 downto 0);
      RS2: in std_logic_vector(2 downto 0);
      WS: in std_logic_vector(2 downto 0);
      STR: in std_logic;
      LDR: in std_logic;
      WE: in std_logic;
      p_IN: in std_logic_vector(15 downto 0);
      ALUOP: in std_logic_vector(1 downto 0);
      DMUX: in std_logic_vector(1 downto 0);
      Z: out std_logic;
      N: out std_logic;
      C: out std_logic;
      V: out std_logic);
  end component;

  signal CLK : std_logic;
  signal RS1 : std_logic_vector(2 downto 0);
  signal RS2 : std_logic_vector(2 downto 0);
  signal WS : std_logic_vector(2 downto 0);
  signal STR : std_logic;
  signal LDR : std_logic;
  signal WE : std_logic;
  signal p_IN : std_logic_vector(15 downto 0);
  signal ALUOP : std_logic_vector(1 downto 0);
  signal DMUX : std_logic_vector(1 downto 0);
  signal Z : std_logic;
  signal N : std_logic;
  signal C : std_logic;
  signal V : std_logic;
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
    CLK => CLK,
    RS1 => RS1,
    RS2 => RS2,
    WS => WS,
    STR => STR,
    LDR => LDR,
    WE => WE,
    p_IN => p_IN,
    ALUOP => ALUOP,
    DMUX => DMUX,
    Z => Z,
    N => N,
    C => C,
    V => V );
  process
    type pattern_type is record
      CLK : std_logic;
      ALUOP : std_logic_vector(1 downto 0);
      RS1 : std_logic_vector(2 downto 0);
      RS2 : std_logic_vector(2 downto 0);
      WS : std_logic_vector(2 downto 0);
      WE : std_logic;
      STR : std_logic;
      LDR : std_logic;
      p_IN : std_logic_vector(15 downto 0);
      DMUX : std_logic_vector(1 downto 0);
