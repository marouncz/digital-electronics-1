# Lab 2: Marek Coufal

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

<table>
   <tr>
    <td></td>
    <td>SoP</td>
    <td>PoS</td>

   </tr> 

  <tr>
    <td>B > A</td>
    <td> <img src="images/greaterSoP.jpg"  alt="1" width = 360px  ></td>
    <td> <img src="images/greaterPoS.jpg"  alt="1" width = 360px  ></td>

   </tr> 
   <tr>
      <td> B < A </td>
      <td><img src="images/lowerSop.jpg" alt="3" width = 360px></td>
      <td><img src="images/lowerPoS.jpg" alt="3" width = 360px></td>

  </td>
  </tr>
</table>

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/CodeCogsEqn%20(1).gif)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx98**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- First test case
        s_b <= "1001";
        s_a <= "1000";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination b=9, a=8 FAILED" severity error;
        
        

        s_b <= "0001";
        s_a <= "1000";
        wait for 100 ns;
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        report "Input combination b=1, a=8 FAILED" severity error;
        
        
        
        s_b <= "0010";
        s_a <= "0010";
        wait for 100 ns;
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        report "Input combination b=2, a=2 FAILED" severity error;
        
        --Intentional mistake:
        s_b <= "0011";
        s_a <= "1000";
        wait for 100 ns;
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        report "Input combination b=1, a=8 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   4bit comparator: 
   [https://www.edaplayground.com/...](https://edaplayground.com/x/8r37)

   2bit comparator: 
   [https://www.edaplayground.com/...](https://edaplayground.com/x/pfbn)