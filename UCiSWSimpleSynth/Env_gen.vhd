library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Env_gen is
    Port ( Key_Pressed : in  STD_LOGIC;
           Att_Val : in  STD_LOGIC_VECTOR (17 downto 0);
           Rel_Val : in  STD_LOGIC_VECTOR (17 downto 0);
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
	
	--signal count : UNSIGNED(17 downto 0) := "10" & X"FAF0";
	signal count : UNSIGNED(17 downto 0) := (others => '0');
	signal output : UNSIGNED(7 downto 0) := (others => '0');
	
	constant OUTPUT_MAX : UNSIGNED(7 downto 0) := X"7F";
	constant COUNT_ZERO : UNSIGNED(17 downto 0) := (others => '0');

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

	state_proc : process( Key_Pressed, Att_Val, Rel_Val, Clk )
   begin
		next_state <= state;
		
		if state = Silence and Key_Pressed = '1' then
			next_state <= Attack;
			count <= UNSIGNED(Att_Val);
			output <= X"00";
			
		elsif state = Attack then
			if Key_Pressed = '0' then
				count <= UNSIGNED(Rel_Val);
				next_state <= Release;
			elsif output >= OUTPUT_MAX then
				next_state <= Sustain;
			end if;
			
		elsif state = Sustain and Key_Pressed = '0' then
			count <= unsigned(Rel_Val);
			output <= OUTPUT_MAX;
			next_state <= Release;
			
		elsif state = Release then
			if Key_Pressed = '1' then
				count <= UNSIGNED(Att_Val);
				next_state <= Attack;
			elsif output = X"00" then
				next_state <= Silence;
			end if;
		end if;
		
		if falling_edge( Clk ) then
			if state = Attack and output <= OUTPUT_MAX then
				if count = COUNT_ZERO then
					count <= UNSIGNED(Att_Val);
					output <= output + 1;
				else
					count <= count - 1;
				end if;
			elsif state = Release and output > X"00" then
				if count = COUNT_ZERO then
					count <= UNSIGNED(Rel_Val);
					output <= output - 1;
				else
					count <= count - 1;
				end if;
			end if;
		end if;
   end process state_proc;
	
	--counter_proc : process( Clk )
   --begin
	
   --end process counter_proc;

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

