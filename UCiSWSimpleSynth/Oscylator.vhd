library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Oscillator is
    Port ( Freq : in STD_LOGIC_VECTOR (11 downto 0);
			  Enabled : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
           Data : out  STD_LOGIC_VECTOR (11 downto 0);
           Cmd : out  STD_LOGIC_VECTOR (3 downto 0);
           Addr : out  STD_LOGIC_VECTOR (3 downto 0);
			  Start : out  STD_LOGIC);
end Oscillator;

architecture Behavioral of Oscillator is

   signal count : UNSIGNED(11 downto 0) := X"000";
   signal sample : UNSIGNED(4 downto 0) := X"0"&'0';
	
begin

   process(Clk, Freq)
   begin
      Start <= '0';
      if Enabled = '1' and Freq /= X"000" and rising_edge(Clk) then
         count <= count + 1;
         if STD_LOGIC_VECTOR(count) >= Freq then
            count <= X"000";
            sample <= sample + 1;
            Start <= '1';
         end if;
      end if;
		
   end process;

   Data <= STD_LOGIC_VECTOR(sample)&"0000000";
   Cmd <= "0011";
   Addr <= "1111";

end Behavioral;
