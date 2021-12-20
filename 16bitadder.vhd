Library ieee;
Use ieee.std_logic_1164.all;

 
Entity adder8 is
  port ( Cin		:	In	Std_logic;
		x : in std_logic_vector(15 downto 0);
		y : in std_logic_vector(15 downto 0);
        s : Out std_logic_vector(15 downto 0);	
		Cout		:	Out	Std_logic);	
end adder8;
 
Architecture adder8_structure of adder8 is
	signal c1, c2, c3, c4	:		Std_logic;
	signal c5, c6, c7, c8	:		Std_logic;
	signal c9, c10, c11, c12	:		Std_logic;
	signal c13, c14, c15		:		Std_logic;
	component fulladder
	port (	Cin, x, y	:	In	Std_logic;
		s, Cout		:	Out	Std_logic);
	end component;
begin
	stage0: fulladder port map (Cin=>Cin, x=>x(0), y=>y(0), s=>s(0), Cout=>c1);
	stage1: fulladder port map (Cin=>c1, x=>x(1), y=>y(1), s=>s(1), Cout=>c2);
	stage2: fulladder port map (Cin=>c2, x=>x(2), y=>y(2), s=>s(2), Cout=>c3);
	stage3: fulladder port map (Cin=>c3, x=>x(3), y=>y(3), s=>s(3), Cout=>c4);
	stage4: fulladder port map (Cin=>c4, x=>x(4), y=>y(4), s=>s(4), Cout=>c5);
	stage5: fulladder port map (Cin=>c5, x=>x(5), y=>y(5), s=>s(5), Cout=>c6);
	stage6: fulladder port map (Cin=>c6, x=>x(6), y=>y(6), s=>s(6), Cout=>c7);
	stage7: fulladder port map (Cin=>c7, x=>x(7), y=>y(7), s=>s(7), Cout=>c8);
	stage8: fulladder port map (Cin=>c8, x=>x(8), y=>y(8), s=>s(8), Cout=>c9);
	stage9: fulladder port map (Cin=>c9, x=>x(9), y=>y(9), s=>s(9), Cout=>c10);
	stage10: fulladder port map (Cin=>c10, x=>x(10), y=>y(10), s=>s(10), Cout=>c11);
	stage11: fulladder port map (Cin=>c11, x=>x(11), y=>y(11), s=>s(11), Cout=>c12);
	stage12: fulladder port map (Cin=>c12, x=>x(12), y=>y(12), s=>s(12), Cout=>c13);
	stage13: fulladder port map (Cin=>c13, x=>x(13), y=>y(13), s=>s(13), Cout=>c14);
	stage14: fulladder port map (Cin=>c14, x=>x(14), y=>y(14), s=>s(14), Cout=>c15);
	stage15: fulladder port map (Cin=>c15, x=>x(15), y=>y(15), s=>s(15), Cout=>Cout);
	
end Architecture;