-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX_GATE_BUS_1 is
  generic ( Bits : integer ); 
  port (
    p_out: out std_logic_vector ((Bits-1) downto 0);
    sel: in std_logic;
    
    in_0: in std_logic_vector ((Bits-1) downto 0);
    in_1: in std_logic_vector ((Bits-1) downto 0) );
end MUX_GATE_BUS_1;

architecture Behavioral of MUX_GATE_BUS_1 is
begin
  with sel select
    p_out <=
      in_0 when '0',
      in_1 when '1',
      (others => '0') when others;
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    D_HIGH: in std_logic_vector(15 downto 0);
    D: in std_logic_vector(15 downto 0);
    EN: in std_logic;
    Q: out std_logic_vector(15 downto 0));
end main;

architecture Behavioral of main is
  signal s0: std_logic_vector(15 downto 0);
begin
  s0(7 downto 0) <= D(7 downto 0);
  s0(15 downto 8) <= D_HIGH(7 downto 0);
  gate0: entity work.MUX_GATE_BUS_1
    generic map (
      Bits => 16)
    port map (
      sel => EN,
      in_0 => D_HIGH,
      in_1 => s0,
      p_out => Q);
end Behavioral;