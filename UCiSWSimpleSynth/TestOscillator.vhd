LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestOscillator IS
END TestOscillator;
 
ARCHITECTURE behavior OF TestOscillator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Oscillator
    PORT(
         Freq : IN  std_logic_vector(11 downto 0);
			Enabled : in  STD_LOGIC;
         Clk : IN  std_logic;
         Data : OUT  std_logic_vector(11 downto 0);
         Cmd : OUT  std_logic_vector(3 downto 0);
         Addr : OUT  std_logic_vector(3 downto 0);
         Start : OUT  std_logic
        );
    END COMPONENT;
	 
    type VECTOR_VECTOR is array (NATURAL range <>) of STD_LOGIC_VECTOR(11 downto 0);

   --Inputs
   signal Freq : std_logic_vector(11 downto 0) := (others => '0');
   signal Enabled : std_logic := '1';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Data : std_logic_vector(11 downto 0);
   signal Cmd : std_logic_vector(3 downto 0);
   signal Addr : std_logic_vector(3 downto 0);
   signal Start : std_logic;
	
	signal seq : VECTOR_VECTOR( 5 downto 0) := (
		X"000",
		X"9CF",
		X"62D",
		X"000",
		X"8BD",
		X"000"
	);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Oscillator PORT MAP (
          Freq => Freq,
          Enabled => Enabled,
          Clk => Clk,
          Data => Data,
          Cmd => Cmd,
          Addr => Addr,
          Start => Start
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
	
		signal_loop: for i in 5 downto 0 loop
			Freq <= seq(i);
			wait for clk_period * 100000;
		end loop signal_loop;
		
	wait;
   end process;

END;
