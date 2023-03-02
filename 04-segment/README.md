# Lab 4: Marek Coufal

## Pre-Lab preparation
| **Hex** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** |
   | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0000 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
   | 1 | 0001 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
   | 2 | 0010 | 0 | 0 | 1 | 0 | 0 | 1 | 0 |
   | 3 | 0011 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
   | 4 | 0100 | 1 | 0 | 0 | 1 | 1 | 0 | 0 |
   | 5 | 0101 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
   | 6 | 0110 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
   | 7 | 0111 | 0 | 0 | 0 | 1 | 1 | 1 | 1 |
   | 8 | 1000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
   | 9 | 1001 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
   | A | 1010 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
   | b | 1011 | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
   | C | 1100 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
   | d | 1101 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
   | E | 1110 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
   | F | 1111 | 0 | 1 | 1 | 1 | 0 | 0 | 0 |

### Pinout:
+ CA - T10
+ CB - R10
+ CC - K16
+ CD - K13
+ CE - P15
+ CF - T11
+ CG - L18
+ CDP - H15
+ AN0 - J17
+ AN1 - J18
+ AN2 - T9
+ AN3 - J14
+ AN4 - P14
+ AN5 - T14
+ AN6 - K2
+ AN7 - U13




### LED(7:4) indicators

1. Complete the truth table for LEDs[7:4] according to comments in source code.

   | **Hex** | **Inputs** | **LED4** | **LED5** | **LED6** | **LED7** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0000 |  |  |  |  |
   | 1 | 0001 |  |  |  |  |
   | 2 | 0010 |  |  |  |  |
   | 3 | 0011 |  |  |  |  |
   | 4 | 0100 |  |  |  |  |
   | 5 | 0101 |  |  |  |  |
   | 6 | 0110 |  |  |  |  |
   | 7 | 0111 |  |  |  |  |
   | 8 | 1000 |  |  |  |  |
   | 9 | 1001 |  |  |  |  |
   | A | 1010 |  |  |  |  |
   | b | 1011 |  |  |  |  |
   | C | 1100 |  |  |  |  |
   | d | 1101 |  |  |  |  |
   | E | 1110 |  |  |  |  |
   | F | 1111 |  |  |  |  |

2. Listing of LEDs[7:4] part of VHDL architecture from source file `top.vhd`. Try to write logic functions as simple as possible. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   ```vhdl
   -- Turn LED(4) on if input value is equal to 0, ie "0000"
   LED(4) <= '1' when (SW = "0000") else '0';


   -- Turn LED(5) on if input value is greater than "1001", ie 10, 11, 12, ...
   LED(5) <= '1' when (SW > "1001") else '0';

   -- Turn LED(6) on if input value is odd, ie 1, 3, 5, ...
   --LED(6) <= '1' when (SW(0) = '1') else '0';
   LED(6) <= SW(0);

   -- Turn LED(7) on if input value is a power of two, ie 1, 2, 4, or 8

   LED(7) <= SW(0) xor SW(1) xor SW(2) xor SW(3);
   ```