LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestFreq_calc IS
END TestFreq_calc;
 
ARCHITECTURE behavior OF TestFreq_calc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Freq_calc
    PORT( DO : IN  std_logic_vector(7 downto 0);
          F0 : IN  std_logic;
          DO_Rdy : IN  std_logic;
			 Clk : in std_logic;
			 Reset : in std_logic;
          Freq : OUT  std_logic_vector(11 downto 0));
    END COMPONENT;
	 
   type VECTOR_VECTOR is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal F0 : std_logic := '0';
   signal DO_Rdy : std_logic := '0';
	signal Clk : std_logic := '0';
	signal Reset : std_logic := '0';

 	--Outputs
   signal Freq : std_logic_vector(11 downto 0);
	
	signal seq : VECTOR_VECTOR( 4 downto 0) := (
		X"32", -- B
		X"15", -- Q
		X"24", -- E
		X"45", -- 0
		X"35"  -- Y
	);
	
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Freq_calc PORT MAP (
          DO => DO,
          F0 => F0,
          Clk => Clk,
			 Reset => Reset,
          DO_Rdy => DO_Rdy,
          Freq => Freq
        );

   -- Clock process definitions
   Clk_process : process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc : process
   begin
	
		signal_loop: for i in 4 downto 0 loop
			DO <= seq(i);
			DO_Rdy <= '1';
			F0 <= '0';
			wait for clk_period;
			DO_Rdy <= '0';
			wait for clk_period*3;
			DO_Rdy <= '1';
			F0 <= '1';
			wait for clk_period;
			DO_Rdy <= '0';
			wait for clk_period*7;
		end loop signal_loop;
	
		signal_loop2: for i in 1 downto 0 loop
			DO <= seq(i);
			DO_Rdy <= '1';
			F0 <= '0';
			wait for clk_period;
			DO_Rdy <= '0';
			wait for clk_period*7;
		end loop signal_loop2;
	
		signal_loop3: for i in 1 downto 0 loop
			DO <= seq(i);
			DO_Rdy <= '1';
			F0 <= '1';
			wait for clk_period;
			DO_Rdy <= '0';
			wait for clk_period*7;
		end loop signal_loop3;
		
	wait;
   end process;

END;
