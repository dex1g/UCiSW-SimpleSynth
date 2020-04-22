LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE STD.textio.all;
USE ieee.std_logic_textio.all;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY Module_Generation_Module_Generation_sch_tb IS
END Module_Generation_Module_Generation_sch_tb;
ARCHITECTURE behavioral OF Module_Generation_Module_Generation_sch_tb IS 

   COMPONENT Module_Generation
    PORT( DI	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          DI_Rdy	:	IN	STD_LOGIC; 
          F0	:	IN	STD_LOGIC; 
          DO_Rdy	:	OUT	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC;
          Att_Val	:	IN	STD_LOGIC_VECTOR (17 DOWNTO 0); 
          Rel_Val	:	IN	STD_LOGIC_VECTOR (17 DOWNTO 0); 
          Cmd	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Addr	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          DO	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0));
   END COMPONENT;
	 
   type VECTOR_VECTOR is array (NATURAL range <>) of STD_LOGIC_VECTOR(7 downto 0);

	-- inputs
   SIGNAL DI	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
   SIGNAL DI_Rdy	:	STD_LOGIC := '0';
   SIGNAL F0	:	STD_LOGIC := '0';
   SIGNAL DO_Rdy	:	STD_LOGIC := '0';
   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL Reset	:	STD_LOGIC := '0';
   SIGNAL Att_Val	:	STD_LOGIC_VECTOR (17 DOWNTO 0) := "00" & X"4C4B"; -- daje ok. 100ms
   SIGNAL Rel_Val	:	STD_LOGIC_VECTOR (17 DOWNTO 0) := "00" & X"9896";
	
	-- outputs
   SIGNAL Cmd	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := (others => '0');
   SIGNAL Addr	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := (others => '0');
   SIGNAL DO	:	STD_LOGIC_VECTOR (11 DOWNTO 0) := (others => '0');
	
   file file_RESULTS : text;
	
	SIGNAL seq : VECTOR_VECTOR( 3 DOWNTO 0) := (
		--X"32", -- B - None
		X"15", -- Q - C1
		X"24", -- E - E1
		X"45", -- 0 - D#2
		X"35"  -- Y - A1
	);
	
   -- Clock period definition
   constant Clk_period : time := 10 ns;

BEGIN

   UUT: Module_Generation PORT MAP(
		DI => DI, 
		DI_Rdy => DI_Rdy, 
		F0 => F0, 
		DO_Rdy => DO_Rdy, 
		Clk => Clk, 
		Reset => Reset, 
		Att_Val => Att_Val, 
		Rel_Val => Rel_Val, 
		Cmd => Cmd, 
		Addr => Addr, 
		DO => DO
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
		
		signal_loop: for i in 50000 downto 1 loop
		-- wait until rising edge(clk) and do_rdy = 1
			write(v_OLINE, DO, right, 12);
			writeline(file_RESULTS, v_OLINE);
			wait for 10 us; -- usunac
			-- zapisanie biezacego czasu - funkcja now()
		end loop signal_loop;
		
		file_close(file_RESULTS);
		wait;
	end process;
 

   -- Stimulus process
   stim_proc : process
   begin
	
		signal_loop: for i in 3 downto 0 loop
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
			wait for 50 ms;
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
