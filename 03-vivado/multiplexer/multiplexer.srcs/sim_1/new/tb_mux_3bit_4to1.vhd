----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 12:15:53 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is

  signal sig_a_i         : std_logic_vector(2 downto 0);
  signal sig_b_i         : std_logic_vector(2 downto 0);
  signal sig_c_i         : std_logic_vector(2 downto 0);
  signal sig_d_i         : std_logic_vector(2 downto 0);
  signal sig_y_o         : std_logic_vector(2 downto 0);
  signal sig_sel         : std_logic_vector(1 downto 0);

  
begin
  -- entity (Unit Under Test)
  uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
    port map (
      a_i           => sig_a_i,
      b_i           => sig_b_i,
      c_i           => sig_c_i,
      d_i           => sig_d_i,
      sel           => sig_sel,
      y_o           => sig_y_o

    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    -- Report a note at the beginning of stimulus process
    report "Stimulus process started";

    -- First test case ...
    
    sig_a_i <= "000";
    sig_b_i <= "100";
    sig_c_i <= "010";
    sig_d_i <= "011";
    sig_sel <= "00";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (sig_y_o = "000")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=a FAILED"
      severity error;
      
    sig_a_i <= "000";
    sig_b_i <= "100";
    sig_c_i <= "010";
    sig_d_i <= "011";
    sig_sel <= "01";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (sig_y_o = "100")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=b FAILED"
      severity error;
      
      
      
      
    sig_a_i <= "000";
    sig_b_i <= "100";
    sig_c_i <= "010";
    sig_d_i <= "011";
    sig_sel <= "10";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (sig_y_o = "010")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=c FAILED"
      severity error;
      
      
      
    sig_a_i <= "000";
    sig_b_i <= "100";
    sig_c_i <= "010";
    sig_d_i <= "011";
    sig_sel <= "11";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (sig_y_o = "011")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=d FAILED"
      severity error;


    -- Report a note at the end of stimulus process
    report "Stimulus process finished";

    wait; -- Data generation process is suspended forever

  end process p_stimulus;

--end architecture testbench;
end Behavioral;


