----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2021 03:40:01 PM
-- Design Name: 
-- Module Name: and_test - Behavioral
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

entity and_test is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           clk,reset: in std_logic;
           rout : out std_logic);
end and_test;



architecture Behavioral of and_test is
component comparator is
    Port ( a,b : in STD_LOGIC;
           clk,reset : in STD_LOGIC;
           rm,rl,re : out STD_LOGIC);
end component;

component bitcomp4 is
    Port ( rein,rlin,rmin : in STD_LOGIC_VECTOR (3 downto 0);
           clk,reset:in std_logic;
           reout : out STD_LOGIC;
           rmout : out STD_LOGIC;
           rlout : out STD_LOGIC);
end component;



signal rm16,rl16,re16 : STD_LOGIC_VECTOR (15 downto 0);
signal r:std_logic_vector(3 downto 0);

begin

g1:for i in 0 to 15 generate
reg: component comparator port map (a=>a(i),b=>b(i),clk=>clk,rm=>rm16(i),rl=>rl16(i),re=>re16(i),reset=>reset);
end generate g1;

comp41: component bitcomp4 port map ()


   


end Behavioral;
