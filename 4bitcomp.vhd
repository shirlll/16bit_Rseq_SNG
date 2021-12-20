----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2021 06:27:02 PM
-- Design Name: 
-- Module Name: 4bitcomp - Behavioral
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

entity bitcomp4 is
    Port ( rein,rlin,rmin : in STD_LOGIC_VECTOR (3 downto 0);
           clk,reset:in std_logic;
           reout : out STD_LOGIC;
           rmout : out STD_LOGIC;
           rlout : out STD_LOGIC);
end bitcomp4;

architecture Behavioral of bitcomp4 is

begin

process(clk)
begin
if reset = '1' then
reout <='0';
rmout <='0';
rlout <='0';
elsif rising_edge(clk) then
if rlin(3) = '1' then 
rlout <='1';
rmout <= '0';
reout <='0';
elsif rmin(3) = '1' then 
rmout <='1';
rlout <= '0';
reout <='0';
else 
    if rlin(2) = '1' then 
    rlout <='1';
    rmout <= '0';
    reout <='0';
    elsif rmin(2) = '1' then 
    rmout <='1';
    rlout <= '0';
    reout <='0';
    else
        if rlin(1) = '1' then 
        rlout <='1';
        rmout <= '0';
        reout <='0';
        elsif rmin(1) = '1' then 
        rmout <='1';
        rlout <= '0';
        reout <='0';
        else
            if rlin(0) = '1' then 
            rlout <='1';
            rmout <= '0';
            reout <='0';
            elsif rmin(0) = '1' then 
            rmout <='1';
            rlout <= '0';
            reout <='0';
            else  
            reout<='1';
            rlout<='0';
            rmout<='0';
            end if;
        end if;
    end if;
end if;

end if;  
end process;



end Behavioral;
