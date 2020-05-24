LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestEnv_control IS
END TestEnv_control;
 
ARCHITECTURE behavior OF TestEnv_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Env_control
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         DO_Rdy : IN  std_logic;
         F0 : IN  std_logic;
         Clk : IN  std_logic;
         Att_Val : OUT  std_logic_vector(19 downto 0);
         Rel_Val : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    
   type STD_LOGIC_MATRIX is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal DO_Rdy : std_logic := '0';
   signal F0 : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Att_Val : std_logic_vector(19 downto 0);
   signal Rel_Val : std_logic_vector(19 downto 0);

	signal f_key : STD_LOGIC_MATRIX( 4 DOWNTO 1) := (
		X"0C", -- F4
		X"04", -- F3
		X"06", -- F2
		X"05"  -- F1
	);
	
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Env_control PORT MAP (
          DO => DO,
          DO_Rdy => DO_Rdy,
          F0 => F0,
          Clk => Clk,
          Att_Val => Att_Val,
          Rel_Val => Rel_Val
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
      wait for 10 ns;	
		
			DO <= f_key(3);
			F0 <= '0';
			DO_Rdy <= '1';
			wait for clk_period * 10;
			DO_Rdy <= '0';
			wait for clk_period;
			F0 <= '1';
			DO_Rdy <= '1';
			wait for clk_period;
			DO_Rdy <= '0';
			wait for clk_period;
			DO <= f_key(4);
			F0 <= '0';
			DO_Rdy <= '1';
			wait for clk_period * 15;
			F0 <= '1';
			wait for clk_period;
			DO_Rdy <= '0';
		
--		signal_loop: for i in 10 downto 1 loop
--			DO <= f_key(1);
--			DO_Rdy <= '1';
--			F0 <= '0';
--			wait for clk_period;
--			DO_Rdy <= '0';
--			wait for 200 ms;
--			DO_Rdy <= '1';
--			F0 <= '1';
--			wait for clk_period;
--			DO_Rdy <= '0';
--			wait for 100 ms;
--		end loop signal_loop;
		
      wait;
   end process;

END;
