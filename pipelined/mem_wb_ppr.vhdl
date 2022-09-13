-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DIG_Register is
  
  port (
    Q: out std_logic;
    D: in std_logic;
    C: in std_logic;
    en: in std_logic );
end DIG_Register;

architecture Behavioral of DIG_Register is
  signal state : std_logic := '0';
begin
   Q <= state;

   process ( C )
   begin
      if rising_edge(C) and (en='1') then
        state <= D;
      end if;
   end process;
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DIG_Register_BUS is
  generic ( Bits: integer ); 
  port (
    Q: out std_logic_vector ((Bits-1) downto 0);
    D: in std_logic_vector ((Bits-1) downto 0);
    C: in std_logic;
    en: in std_logic );
end DIG_Register_BUS;

architecture Behavioral of DIG_Register_BUS is
  signal state : std_logic_vector ((Bits-1) downto 0) := (others => '0');
begin
   Q <= state;

   process ( C )
   begin
      if rising_edge(C) and (en='1') then
        state <= D;
      end if;
   end process;
end Behavioral;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    CLK: in std_logic;
    PCSrcM: in std_logic;
    RegWriteM: in std_logic;
    MemToRegM: in std_logic;
    ReadDataM: in std_logic_vector(15 downto 0);
    ALUResultM: in std_logic_vector(15 downto 0);
    WA3M: in std_logic_vector(2 downto 0);
    SethM: in std_logic;
    PCSrcW: out std_logic;
    RegWriteW: out std_logic;
    MemToRegW: out std_logic;
    ReadDataW: out std_logic_vector(15 downto 0);
    ALUResultW: out std_logic_vector(15 downto 0);
    WA3W: out std_logic_vector(2 downto 0);
    SethW: out std_logic);
end main;

architecture Behavioral of main is
begin
  gate0: entity work.DIG_Register -- PCSrc
    port map (
      D => PCSrcM,
      C => CLK,
      en => '1',
      Q => PCSrcW);
  gate1: entity work.DIG_Register -- RegWrite
    port map (
      D => RegWriteM,
      C => CLK,
      en => '1',
      Q => RegWriteW);
  gate2: entity work.DIG_Register -- MemToReg
    port map (
      D => MemToRegM,
      C => CLK,
      en => '1',
      Q => MemToRegW);
  gate3: entity work.DIG_Register_BUS -- ReadData
    generic map (
      Bits => 16)
    port map (
      D => ReadDataM,
      C => CLK,
      en => '1',
      Q => ReadDataW);
  gate4: entity work.DIG_Register_BUS -- ALUResult
    generic map (
      Bits => 16)
    port map (
      D => ALUResultM,
      C => CLK,
      en => '1',
      Q => ALUResultW);
  gate5: entity work.DIG_Register_BUS -- WA3
    generic map (
      Bits => 3)
    port map (
      D => WA3M,
      C => CLK,
      en => '1',
      Q => WA3W);
  gate6: entity work.DIG_Register -- Seth
    port map (
      D => SethM,
      C => CLK,
      en => '1',
      Q => SethW);
end Behavioral;