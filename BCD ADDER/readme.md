# **BCD ADDER**
<p>BCD adder is the arithmetic addition of two decimal digits in BCD, together with an input carry from a previous stage. Since each input digit does not exceed 9, the output sum 
cannot be greater than 9 + 9 + 1 = 19, the 1 in the sum being an input carry. </p>
<br>

## TRUTH TABLE
![Screenshot 2024-08-24 220335](https://github.com/user-attachments/assets/d4cb680e-be9e-4c21-a5c1-ff63a5e81c51)
<br>
<p>From the above table, it is clear that if the produced sum is between 1 to 9, the Binary and the BCD code is the same. But for 10 to 19 decimal numbers, both the codes are different. In the above table, the binary sum combinations from 10 to 19 give invalid BCD. There are the following points that help the circuit to identify the invalid BCD.
</p>
<p>
  1.It is obvious from the table that a correction is needed when the 'Binary Sum' has an output carry K=1.
 2.The other six combinations from 10 to 15 need correction in which the bit on the Z8 position is 1.
 3. In the Binary sum of 8 and 9, the bit on the Z8 position is also 1. So, the second step fails, and we need to modify it.
 4. To distinguish these two numbers, we specify that the bit on the Z4 or Z2 position also needs to be 1 with the bit of Z8
 5. The condition for a correction and an output carry can be expressed by the Boolean function:
C=K+Z8.Z4+Z8.Z2</p>
