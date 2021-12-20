----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/16/2021 02:55:08 PM
-- Design Name: 
-- Module Name: SNGtb - Behavioral
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

entity SNGtb is
--  Port ( );
end SNGtb;

architecture Behavioral of SNGtb is


component SNG is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Sout: out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal Sout: std_logic_vector(15 downto 0);
signal clk,reset:std_logic;

constant clk_period: time:= 10 ns;

begin

ldsng:SNG port map(clk=>clk, reset=>reset, Sout=>Sout);
--btostest: btos port map(bn=>bn,clk=>clk,nout=>nout,reset=>reset);


clk_process:process
begin
clk <='1';
wait for clk_period/2;
clk <='0';
wait for clk_period/2;
end process;

sim:process
begin

--bn <= "0010100111101110";
reset <='1';
wait for clk_period;
reset <='0';
wait for clk_period *100;

wait;

end process;

end Behavioral;
