----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2021 08:53:50 PM
-- Design Name: 
-- Module Name: lfsr_tb - Behavioral
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

entity lfsr_tb is
--  Port ( );
end lfsr_tb;

architecture Behavioral of lfsr_tb is

component lfsr_n is
port (clk			:in  std_logic;                    
		reset			:in  std_logic;                    
		lfsr_out		:out std_logic_vector (15 downto 0));
end component;

signal clk,reset: std_logic;
signal lfsr_out: std_logic_vector(15 downto 0);
constant clk_period: time:= 10 ns;


begin

lfsr: lfsr_n port map(clk=>clk,reset=>reset,lfsr_out=>lfsr_out);

clk_process:process
begin
clk <='1';
wait for clk_period/2;
clk <='0';
wait for clk_period/2;
end process;

sim:process
begin

reset <='1';
wait for clk_period;
reset <='0';
wait for clk_period *100;

wait;

end process;

end Behavioral;
