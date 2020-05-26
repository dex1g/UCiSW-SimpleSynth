LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE STD.textio.all;
USE ieee.std_logic_textio.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY TestScheme_Freq_calcAndOscillator_TestScheme_Freq_calcAndOscillator_sch_tb IS
END TestScheme_Freq_calcAndOscillator_TestScheme_Freq_calcAndOscillator_sch_tb;

ARCHITECTURE behavioral OF 
      
      TestScheme_Freq_calcAndOscillator_TestScheme_Freq_calcAndOscillator_sch_tb IS 

   COMPONENT TestScheme_Freq_calcAndOscillator
   PORT( Clk	:	IN	STD_LOGIC; 
          DI	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          DI_Rdy	:	IN	STD_LOGIC; 
          F0	:	IN	STD_LOGIC; 
          DO	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          DO_Rdy	:	OUT	STD_LOGIC);
   END COMPONENT;
	 
   type VECTOR_VECTOR is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);
	
	-- inputs
   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL DI	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
   SIGNAL DI_Rdy	:	STD_LOGIC := '0';
   SIGNAL F0	:	STD_LOGIC := '0';
	
	-- outputs
   SIGNAL DO	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL DO_Rdy	:	STD_LOGIC;
	
   file file_RESULTS : text;
	
	SIGNAL seq : VECTOR_VECTOR( 4 DOWNTO 0) := (
		X"32", -- B - None
		X"15", -- Q - C1
		X"24", -- E - E1
		X"45", -- 0 - D#2
		X"35"  -- Y - A1
	);
	
   -- Clock period definitions
   constant Clk_period : time := 20 ns;

BEGIN

   UUT: TestScheme_Freq_calcAndOscillator PORT MAP(
		Clk => Clk, 
		DI => DI, 
		DI_Rdy => DI_Rdy, 
		F0 => F0, 
		DO => DO, 
		DO_Rdy => DO_Rdy
   );

   -- Clock process definitions
   Clk_process : process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
	
	log_proc : process
		variable v_OLINE : line;
	begin
		wait for 10 us;
		file_open(file_RESULTS, "output_results.txt", write_mode);
		
		signal_loop: for i in 30000 downto 1 loop
			write(v_OLINE, DO, right, 12);
			writeline(file_RESULTS, v_OLINE);
			wait for 10 us;
		end loop signal_loop;
		
		file_close(file_RESULTS);
		wait;
	end process;
 

   -- Stimulus process
   stim_proc : process
   begin
	
		signal_loop: for i in 4 downto 0 loop
			DI <= seq(i);
			DI_Rdy <= '1';
			F0 <= '0';
			wait for clk_period;
			DI_Rdy <= '0';
			wait for 50 ms;
			DI_Rdy <= '1';
			F0 <= '1';
			wait for clk_period;
			DI_Rdy <= '0';
			wait for 10 ms;
		end loop signal_loop;
	
		--signal_loop2: for i in 1 downto 0 loop
		--	DI <= seq(i);
		--	DI_Rdy <= '1';
		--	F0 <= '0';
		--	wait for clk_period;
		--	DI_Rdy <= '0';
		--	wait for 50 ms;
		--end loop signal_loop2;
	
		--signal_loop3: for i in 1 downto 0 loop
		--	DI <= seq(i);
		--	DI_Rdy <= '1';
		--	F0 <= '1';
		--	wait for clk_period;
		--	DI_Rdy <= '0';
		--	wait for 50 ms;
		--nd loop signal_loop3;
		
	wait;
   end process;

END;
