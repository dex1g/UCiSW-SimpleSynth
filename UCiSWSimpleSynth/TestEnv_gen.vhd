LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE STD.textio.all;
USE ieee.std_logic_textio.all;
 
ENTITY TestEnv_gen IS
END TestEnv_gen;
 
ARCHITECTURE behavior OF TestEnv_gen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Env_gen
    PORT(
         Key_Pressed : IN  std_logic;
         Att_Val : IN  std_logic_vector(19 downto 0);
         Rel_Val : IN  std_logic_vector(19 downto 0);
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Factor : OUT  std_logic_vector(7 downto 0);
         Play : OUT  std_logic;
         Env_On : OUT  std_logic);
    END COMPONENT;
    

   --Inputs
   signal Key_Pressed : std_logic := '0';
   signal Att_Val : std_logic_vector(19 downto 0) := X"17D7C";
   signal Rel_Val : std_logic_vector(19 downto 0) := X"2FAF8";
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Play : std_logic;
   signal Factor : std_logic_vector(7 downto 0);
   signal Env_On : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
	
--   file file_RESULTS : text;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Env_gen PORT MAP (
          Key_Pressed => Key_Pressed,
          Att_Val => Att_Val,
          Rel_Val => Rel_Val,
			 Reset => Reset,
          Clk => Clk,
          Play => Play,
          Factor => Factor,
          Env_On => Env_On
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
	
	
--	log_proc : process
--		variable v_OLINE : line;
--	begin
--		wait for 2 us;
--		file_open(file_RESULTS, "output_results.txt", write_mode);
--		
--		signal_loop: for i in 30000 downto 1 loop
--			write(v_OLINE, Factor, right, 8);
--			writeline(file_RESULTS, v_OLINE);
--			wait for 10 us;
--		end loop signal_loop;
--		
--		file_close(file_RESULTS);
--		wait;
--	end process;

 

   -- Stimulus process
   stim_proc: process
   begin		
	
		wait for 3 ns;
		Key_pressed <= '1';
		wait for 150 ms;
		Key_pressed <= '0';
		wait for 150 ms;
		Key_pressed <= '1';
		wait for 200 ms;
		Key_pressed <= '0';

      wait;
   end process;

END;
