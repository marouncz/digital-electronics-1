----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 11:31:29 AM
-- Design Name: 
-- Module Name: tb_cnt_up_down - Behavioral
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

entity tb_cnt_up_down is
--  Port ( );
end tb_cnt_up_down;

architecture Behavioral of tb_cnt_up_down is

  constant g_MAX               : natural := 5;
  constant g_CNT_WIDTH : natural := 4;
  constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

  -- Local signals
  signal sig_clk_100mhz : std_logic;
  signal sig_rst        : std_logic;
  signal sig_cnt         : std_logic_vector(g_CNT_WIDTH - 1 downto 0);
  signal sig_en         : std_logic;
  signal sig_cntup         : std_logic;

begin

  -- Connecting testbench signals with clock_enable entity
  -- (Unit Under Test)
  uut_ce : entity work.cnt_up_down
    generic map (
      g_CNT_WIDTH => g_MAX 
    ) -- Note that there is NO comma or semicolon between
      -- generic map section and port map section
    port map (
      clk => sig_clk_100mhz,
      rst => sig_rst,
      cnt  => sig_cnt,
      en  => sig_en,
      cnt_up  => sig_cntup
      
    );

  --------------------------------------------------------
  -- Clock generation process
  --------------------------------------------------------
  p_clk_gen : process is
  begin

    while now < 750 ns loop             -- 75 periods of 100MHz clock

      sig_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      sig_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;

    end loop;
    wait;                               -- Process is suspended forever

  end process p_clk_gen;

  --------------------------------------------------------
  -- Reset generation process
  --------------------------------------------------------
  p_reset_gen : process is
  begin

    sig_rst <= '0';
    wait for 28 ns;

    -- Reset activated
    sig_rst <= '1';
    wait for 153 ns;

    -- Reset deactivated
    sig_rst <= '0';

    wait;

  end process p_reset_gen;

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    report "Stimulus process started";
    -- No other input data is needed
    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end Behavioral;
