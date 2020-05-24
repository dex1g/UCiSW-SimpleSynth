library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Env_control is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           DO_Rdy : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Att_Val : out  STD_LOGIC_VECTOR (19 downto 0);
           Rel_Val : out  STD_LOGIC_VECTOR (19 downto 0));
end Env_control;

architecture Behavioral of Env_control is

	signal att_len : UNSIGNED(19 downto 0) := X"17D7C"; --  125 ms
	signal rel_len : UNSIGNED(19 downto 0) := X"2FAF8"; --  250 ms
	
	constant STEP  : UNSIGNED(19 downto 0) := X"17D7C"; --  125 ms
	constant LIMIT : UNSIGNED(19 downto 0) := X"EE6D8"; -- 1250 ms

begin

	main_proc : process( Clk, DO, DO_Rdy, F0 )
	begin
		if rising_edge(Clk) and DO_Rdy = '1' and F0 = '0' then
			if DO = X"05" and att_len < LIMIT then
				att_len <= att_len + STEP;
			elsif DO = X"06" and att_len > 0 then
				att_len <= att_len - STEP;
			elsif DO = X"04" and rel_len < LIMIT then
				rel_len <= rel_len + STEP;
			elsif DO = X"0C" and rel_len > 0 then
				rel_len <= rel_len - STEP;
			end if;
		end if;
	end process main_proc;
	
	Att_Val <= STD_LOGIC_VECTOR(att_len);
	
	Rel_Val <= STD_LOGIC_VECTOR(rel_len);

end Behavioral;

