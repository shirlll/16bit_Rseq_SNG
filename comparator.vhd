----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2021 03:47:47 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator is
    Port ( a,b : in STD_LOGIC;
           clk,reset : in STD_LOGIC;
           rm,rl,re : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin

process(clk,reset)
begin
if reset = '1' then
rm<='0';
rl<='0';
re<='0';
elsif (rising_edge(clk)) then

if a='0' and b='1' then

rl <= '1';
rm<='0';
re<='0';

elsif a='1' and b='0' then

rm <= '1';
rl<='0';
re<='0';

else 
re<='1';
rl<='0';
rm<='0';


end if;
end if;

end process; 





end Behavioral;
