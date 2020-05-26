LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestMultiplier IS
END TestMultiplier;
 
ARCHITECTURE behavior OF TestMultiplier IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplier
    PORT(
         Data : IN  std_logic_vector(11 downto 0);
         Ratio : IN  std_logic_vector(7 downto 0);
         Enable : IN  std_logic;
         DO : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(11 downto 0) := (others => '0');
   signal Ratio : std_logic_vector(7 downto 0) := (others => '0');
   signal Enable : std_logic := '0';

 	--Outputs
   signal DO : std_logic_vector(11 downto 0);
	
   signal Clk : std_logic := '0';
 
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplier PORT MAP (
          Data => Data,
          Ratio => Ratio,
          Enable => Enable,
          DO => DO
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      wait for Clk_period*2;
		Data <= X"4AA";
		Ratio <= X"40";
      wait for Clk_period*2;
		Enable <= '1';
      wait for Clk_period*4;
		Ratio <= X"20";
      wait for Clk_period*4;
		Ratio <= X"40";
      wait for Clk_period*4;
		Ratio <= X"10";
      wait for Clk_period*4;
		Enable <= '0';
		Data <= X"9AA";
		Ratio <= X"40";
      wait for Clk_period*2;
		Enable <= '1';
      wait for Clk_period*4;
		Ratio <= X"20";
      wait for Clk_period*4;
		Ratio <= X"40";
      wait for Clk_period*4;
		Ratio <= X"10";
      wait for Clk_period*4;
		Ratio <= X"00";
		Enable <= '0';
		
      wait;
   end process;

END;
