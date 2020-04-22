library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is
    Port ( Data : in  STD_LOGIC_VECTOR (11 downto 0);
           Ratio : in  STD_LOGIC_VECTOR (7 downto 0);
           Enable : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (11 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

   signal result: UNSIGNED(12 downto 0) := (others => '0');
	signal factor: UNSIGNED(7 downto 0) := (others => '0');

begin

	result <= UNSIGNED(Data(11 downto 7)) * UNSIGNED(Ratio);
	
	process(Enable, result)
	begin
	
		if Enable = '1' then
			DO <= STD_LOGIC_VECTOR(result(11 downto 0));
		else
			DO <= Data;
		end if;
		
	end process;
	
end Behavioral;

