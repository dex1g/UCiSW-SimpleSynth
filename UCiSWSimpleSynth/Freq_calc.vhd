library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Freq_calc is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           F0 : in  STD_LOGIC;
           DO_Rdy : in  STD_LOGIC;
			  Clk : in STD_LOGIC;
			  Reset : in STD_LOGIC;
           Freq : out  STD_LOGIC_VECTOR (11 downto 0);
			  Key_Pressed : out STD_LOGIC);
end Freq_calc;

architecture Behavioral of Freq_calc is

   type state_type is (None, C1, Cis1, D1, Dis1, E1, F1, Fis1, G1, Gis1, A1, Ais1, B1, C2, Cis2, D2, Dis2, E2);
   signal state      : state_type := None;
   signal next_state : state_type := None;
	
   signal key_state  : STD_LOGIC  := '0';

begin
	
	clk_proc : process( Clk )
   begin
		if rising_edge( Clk ) then
			if Reset = '1' then
				state <= None;
			else
				state <= next_state;
			end if;
		end if;
   end process clk_proc;
	
	state_proc : process( state, DO, F0, DO_Rdy )
	begin
		next_state <= state;
		
		if DO_Rdy = '1' and F0 = '0' then
			case DO is
				when X"15" => 
					next_state <= C1;
				when X"1E" => 
					next_state <= Cis1;
				when X"1D" => 
					next_state <= D1;
				when X"26" => 
					next_state <= Dis1;
				when X"24" => 
					next_state <= E1;
				when X"2D" => 
					next_state <= F1;
				when X"2E" => 
					next_state <= Fis1;
				when X"2C" => 
					next_state <= G1;
				when X"36" => 
					next_state <= Gis1;
				when X"35" => 
					next_state <= A1;
				when X"3D" => 
					next_state <= Ais1;
				when X"3C" => 
					next_state <= B1;
				when X"43" => 
					next_state <= C2;
				when X"46" => 
					next_state <= Cis2;
				when X"44" => 
					next_state <= D2;
				when X"45" => 
					next_state <= Dis2;
				when X"4D" => 
					next_state <= E2;
				when others =>
					next_state <= state;
			end case;
		end if;
	end process state_proc;
	
	keystate_proc : process( Clk, DO_Rdy, F0, DO, state ) 
	begin
		if rising_edge(Clk) and DO_Rdy = '1' then
			if F0 = '0' then
				key_state <= '1';
			elsif F0 = '1' then
				if (state = C1   and DO = X"15") 
				or (state = Cis1 and DO = X"1E")
				or (state = D1   and DO = X"1D")
				or (state = Dis1 and DO = X"26")
				or (state = E1   and DO = X"24")
				or (state = F1   and DO = X"2D")
				or (state = Fis1 and DO = X"2E")
				or (state = G1   and DO = X"2C")
				or (state = Gis1 and DO = X"36")
				or (state = A1   and DO = X"35")
				or (state = Ais1 and DO = X"3D")
				or (state = B1   and DO = X"3C")
				or (state = C2   and DO = X"43")
				or (state = Cis2 and DO = X"46")
				or (state = D2   and DO = X"44")
				or (state = Dis2 and DO = X"45")
				or (state = E2   and DO = X"4D") then
					key_state <= '0';
				end if;
			end if;
		end if;
	end process keystate_proc;
	
	with state select
      Freq <= X"BBA" when C1,
              X"B02" when Cis1,
              X"A64" when D1,
              X"9CF" when Dis1,
              X"942" when E1,
              X"8BD" when F1,
              X"83F" when Fis1,
              X"7C9" when G1,
              X"759" when Gis1,
              X"6EF" when A1,
              X"68B" when Ais1,
              X"62D" when B1,
              X"5D5" when C2,
              X"581" when Cis2,
              X"532" when D2,
              X"4E7" when Dis2,
              X"4A1" when E2,
              X"000" when others;
				  
	Key_Pressed <= key_state;

end Behavioral;

