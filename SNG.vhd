


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SNG is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Sout: out STD_LOGIC_VECTOR (15 downto 0));
end SNG;

architecture Behavioral of SNG is

Component adder8 is
  port ( Cin		:	In	Std_logic;
		x : in std_logic_vector(15 downto 0);
		y : in std_logic_vector(15 downto 0);
        s : Out std_logic_vector(15 downto 0);	
		Cout		:	Out	Std_logic);	
end component;

signal S1in: std_logic_vector(15 downto 0):="1001111000110111";
--signal S2in: bit_vector(15 downto 0):="0011110001101110";
--signal S3in: bit_vector(15 downto 0):="1101101010100110";
signal Smid,S: std_logic_vector(15 downto 0):=X"0000";
signal Cout:std_logic;
signal Cin:std_logic:='0';

begin

adder:adder8 port map(Cin=>Cin,x=>S1in,y=>Smid,s=>S,Cout=>Cout); 

process(clk,reset)
begin
if reset ='1' then
Smid <= X"8000";
elsif(rising_edge(clk))then
Smid <=S;
end if;
end process;

Sout<=Smid;

end Behavioral;
