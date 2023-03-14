# Lab 5: Marek Coufal


### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure](images/DandTFlipFlops.PNG)

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture behavioral of jk_ff_rst is

signal sig_q : std_logic;

begin
    --------------------------------------------------------
    -- p_jk_ff_rst:
    -- JK type flip-flop 

    --------------------------------------------------------
    p_jk_ff_rst : process (clk) is
    begin
        if rising_edge(clk) then  -- Synchronous process
            if rst = '1' then
              sig_q <= '0';
              q_bar <= not(sig_q);
            elsif j = '0' and k = '0' then
                sig_q <= sig_q;
                q_bar <= not(sig_q);
            elsif j = '1' and k = '0' then
                sig_q <= '1';
                q_bar <= not(sig_q);
            elsif j = '0' and k = '1' then
                sig_q <= '0';
                q_bar <= not(sig_q);
            else
            sig_q <= not(sig_q);
            q_bar <= not(sig_q);
                       
             
              end if;
        end if;
    end process p_jk_ff_rst;
end architecture behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![your figure](images/shiftReg.png)