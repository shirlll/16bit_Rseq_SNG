----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2021 03:58:51 PM
-- Design Name: 
-- Module Name: btos - Behavioral
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

entity btos is
    Port ( bn : in STD_LOGIC_VECTOR (15 downto 0);
           clk,reset : in STD_LOGIC;
           nout : out STD_LOGIC_VECTOR (15 downto 0));
end btos;

architecture Behavioral of btos is


signal sn : STD_LOGIC_VECTOR (15 downto 0);

component and_test is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           clk: in std_logic;
           r : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component SNG is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Sout: out STD_LOGIC_VECTOR (15 downto 0));
end component;

begin

ldgenerator: SNG port map(clk=>clk,reset=>reset, Sout => sn);
sngenerator: and_test port map (a=>sn, b=>bn, r=>nout, clk=>clk);

end Behavioral;
