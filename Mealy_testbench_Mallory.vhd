----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Nolan Mallory
--
-- Create Date:   19:27:42 03/06/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Nolan.Mallory/Documents/ECE281/CE3_Mallory/Mealy_testbench_Mallory.vhd
-- Project Name:  CE3_Mallory
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MealyElevatorController_Shell
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Mealy_testbench_Mallory IS
END Mealy_testbench_Mallory;
 
ARCHITECTURE behavior OF Mealy_testbench_Mallory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MealyElevatorController_Shell
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         stop : IN  std_logic;
         up_down : IN  std_logic;
         floor : OUT  std_logic_vector(3 downto 0);
         nextfloor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal stop : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal floor : std_logic_vector(3 downto 0);
   signal nextfloor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MealyElevatorController_Shell PORT MAP (
          clk => clk,
          reset => reset,
          stop => stop,
          up_down => up_down,
          floor => floor,
          nextfloor => nextfloor
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

-- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 200 ns.
      wait for 200 ns;	

     -- wait for clk_period*1;

      -- insert stimulus here 
			--Starting at 1st
			reset <= '1';
			wait for clk_period*1;
			
			--Going up to the 2nd
			reset <= '0';
			up_down <= '1';
			stop <= '0';
			wait for clk_period*1;
			--Staying at 2nd
			reset <= '0';
			up_down <= '1';
			stop <= '1';
			wait for clk_period*2;
			
			--Going up to the 3rd
			reset <= '0';
			up_down <= '1';
			stop <= '0';
			wait for clk_period*1;
			--Staying at 3rd
			reset <= '0';
			up_down <= '1';
			stop <= '1';
			wait for clk_period*2;
			
			--Going up to the 4th
			reset <= '0';
			up_down <= '1';
			stop <= '0';
			wait for clk_period*1;
			--Staying at 4th
			reset <= '0';
			up_down <= '0';
			stop <= '1';
			wait for clk_period*2;
			
			--Going all the way down to 1st
			reset <= '0';
			up_down <= '0';
			stop <= '0';
			wait for clk_period*4;
			
			
      wait;
   end process;


END;
