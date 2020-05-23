library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Env_gen is
    Port ( Key_Pressed : in  STD_LOGIC;
           Att_Val : in  STD_LOGIC_VECTOR (19 downto 0);
           Rel_Val : in  STD_LOGIC_VECTOR (19 downto 0);
           Reset : in STD_LOGIC;
           Clk : in  STD_LOGIC;
           Factor : out  STD_LOGIC_VECTOR (7 downto 0);
           Play : out  STD_LOGIC;
           Env_On : out  STD_LOGIC);
end Env_gen;

architecture Behavioral of Env_gen is

   type state_type is (Silence, Attack, Sustain, Release);
   signal state : state_type := Silence;
   signal next_state : state_type := Silence;
	
	signal count : UNSIGNED(19 downto 0) := (others => '0');
	signal output : UNSIGNED(7 downto 0) := (others => '0');
	
	constant OUTPUT_MAX : UNSIGNED(7 downto 0) := X"7F";
	constant COUNT_ZERO : UNSIGNED(19 downto 0) := (others => '0');

begin
	
	clk_proc : process( Clk )
   begin
		if rising_edge( Clk ) then
			if Reset = '1' then
				state <= Silence;
			else
				state <= next_state;
			end if;
		end if;
   end process clk_proc;

	state_proc : process( state, Key_Pressed, Att_Val, Rel_Val, output )
   begin
		next_state <= state;
		
		if state = Silence and Key_Pressed = '1' then
			next_state <= Attack;
			
		elsif state = Attack then
			if Key_Pressed = '0' then
				next_state <= Release;
			elsif output >= OUTPUT_MAX then
				next_state <= Sustain;
			end if;
			
		elsif state = Sustain and Key_Pressed = '0' then
			next_state <= Release;
			
		elsif state = Release then
			if Key_Pressed = '1' then
				next_state <= Attack;
			elsif output = X"00" then
				next_state <= Silence;
			end if;
		end if;
   end process state_proc;
	
	counter_proc : process( Clk, next_state )
   begin
		if rising_edge(Clk) then
			if state = Silence and next_state = Attack then
				count <= UNSIGNED(Att_Val);
			elsif state = Attack then
				if next_state = Release then
					count <= UNSIGNED(Rel_Val);
				elsif output <= OUTPUT_MAX then
					if count = COUNT_ZERO then
						count <= UNSIGNED(Att_Val);
					else
						count <= count - 1;
					end if;
				end if;
			elsif state = Sustain and next_state = Release then
				count <= unsigned(Rel_Val);
			elsif state = Release and output > X"00" then
				if next_state = Attack then
					count <= UNSIGNED(Att_Val);
				elsif count = COUNT_ZERO then
					count <= UNSIGNED(Rel_Val);
				else
					count <= count - 1;
				end if;
			end if;
		end if;
   end process counter_proc;
	
	output_proc : process( Clk, count )
	begin
		if rising_edge(Clk) then
			if state = Silence and next_state = Attack then
				output <= X"00";
			elsif state = Attack and output <= OUTPUT_MAX and count = COUNT_ZERO then
				output <= output + 1;
			elsif state = Sustain and next_state = Release then
				output <= OUTPUT_MAX;
			elsif state = Release and output > X"00" and count = COUNT_ZERO then
				output <= output - 1;
			end if;
		end if;
	end process output_proc;

   Factor <= STD_LOGIC_VECTOR(output);
	
	with state select
		Play <= '0' when Silence,
				  '1' when Attack | Sustain | Release,
				  'X' when others;
					
	with state select
		Env_On <= '0' when Silence | Sustain,
					 '1' when Attack | Release,
					 'X' when others;

end Behavioral;
