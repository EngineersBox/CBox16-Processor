-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DECODER_2 is
  port (
    out_0: out std_logic;
    out_1: out std_logic;
    out_2: out std_logic;
    out_3: out std_logic;
    sel: in std_logic_vector (1 downto 0) );
end DECODER_2;

architecture Behavioral of DECODER_2 is
begin
  out_0 <= '1' when sel = "00" else '0';
  out_1 <= '1' when sel = "01" else '0';
  out_2 <= '1' when sel = "10" else '0';
  out_3 <= '1' when sel = "11" else '0';
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX_GATE_1 is
  port (
    p_out: out std_logic;
    sel: in std_logic;
    
    in_0: in std_logic;
    in_1: in std_logic );
end MUX_GATE_1;

architecture Behavioral of MUX_GATE_1 is
begin
  with sel select
    p_out <=
      in_0 when '0',
      in_1 when '1',
      '0' when others;
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX_GATE_2 is
  port (
    p_out: out std_logic;
    sel: in std_logic_vector (1 downto 0);
    
    in_0: in std_logic;
    in_1: in std_logic;
    in_2: in std_logic;
    in_3: in std_logic );
end MUX_GATE_2;

architecture Behavioral of MUX_GATE_2 is
begin
  with sel select
    p_out <=
      in_0 when "00",
      in_1 when "01",
      in_2 when "10",
      in_3 when "11",
      '0' when others;
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    A3: in std_logic;
    B3: in std_logic;
    A2: in std_logic;
    B2: in std_logic;
    A1: in std_logic;
    B1: in std_logic;
    A0: in std_logic;
    B0: in std_logic;
    Sel1: in std_logic;
    Sel0: in std_logic;
    Cin: in std_logic;
    V3: out std_logic;
    Cout: out std_logic;
    V2: out std_logic;
    V1: out std_logic;
    V0: out std_logic);
end main;

architecture Behavioral of main is
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
  signal s3: std_logic;
  signal s4: std_logic;
  signal s5: std_logic;
  signal s6: std_logic;
  signal s7: std_logic;
  signal s8: std_logic_vector(1 downto 0);
  signal s9: std_logic;
  signal s10: std_logic;
  signal s11: std_logic;
  signal s12: std_logic;
  signal s13: std_logic;
  signal s14: std_logic;
  signal s15: std_logic;
  signal s16: std_logic;
  signal s17: std_logic;
  signal s18: std_logic;
  signal s19: std_logic;
  signal s20: std_logic;
  signal s21: std_logic;
  signal s22: std_logic;
  signal s23: std_logic;
  signal s24: std_logic;
  signal s25: std_logic;
  signal s26: std_logic;
  signal s27: std_logic;
  signal s28: std_logic;
  signal s29: std_logic;
  signal s30: std_logic_vector(1 downto 0);
  signal s31: std_logic;
  signal s32: std_logic;
begin
  s7 <= NOT B3;
  s15 <= NOT B2;
  s22 <= NOT B1;
  s29 <= NOT B0;
  s30(0) <= Sel0;
  s30(1) <= Sel1;
  gate0: entity work.DECODER_2
    port map (
      sel => s30,
      out_1 => s6,
      out_2 => s31,
      out_3 => s32);
  gate1: entity work.MUX_GATE_1
    port map (
      sel => s6,
      in_0 => B3,
      in_1 => s7,
      p_out => s0);
  gate2: entity work.MUX_GATE_1
    port map (
      sel => s6,
      in_0 => B2,
      in_1 => s15,
      p_out => s9);
  gate3: entity work.MUX_GATE_1
    port map (
      sel => s6,
      in_0 => B1,
      in_1 => s22,
      p_out => s16);
  gate4: entity work.MUX_GATE_1
    port map (
      sel => s6,
      in_0 => B0,
      in_1 => s29,
      p_out => s23);
  s8(0) <= s31;
  s8(1) <= s32;
  s25 <= (Cin OR s6);
  s1 <= (A3 XOR s0);
  s4 <= (s0 AND A3);
  s10 <= (A2 XOR s9);
  s13 <= (s9 AND A2);
  s17 <= (A1 XOR s16);
  s20 <= (s16 AND A1);
  s24 <= (A0 XOR s23);
  s27 <= (s23 AND A0);
  s5 <= (s1 OR s4);
  s14 <= (s10 OR s13);
  s21 <= (s17 OR s20);
  s26 <= (s25 XOR s24);
  s28 <= (s24 OR s27);
  s18 <= ((s25 AND s24) OR s27);
  s19 <= (s18 XOR s17);
  s11 <= ((s18 AND s17) OR s20);
  gate5: entity work.MUX_GATE_2
    port map (
      sel => s8,
      in_0 => s26,
      in_1 => s27,
      in_2 => s28,
      in_3 => s28,
      p_out => V0);
  s12 <= (s11 XOR s10);
  s2 <= ((s11 AND s10) OR s13);
  gate6: entity work.MUX_GATE_2
    port map (
      sel => s8,
      in_0 => s19,
      in_1 => s20,
      in_2 => s21,
      in_3 => s21,
      p_out => V1);
  s3 <= (s2 XOR s1);
  Cout <= ((s2 AND s1) OR s4);
  gate7: entity work.MUX_GATE_2
    port map (
      sel => s8,
      in_0 => s12,
      in_1 => s13,
      in_2 => s14,
      in_3 => s14,
      p_out => V2);
  gate8: entity work.MUX_GATE_2
    port map (
      sel => s8,
      in_0 => s3,
      in_1 => s4,
      in_2 => s5,
      in_3 => s5,
      p_out => V3);
end Behavioral;
