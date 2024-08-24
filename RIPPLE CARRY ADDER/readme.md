# ** BINARY ADDER / RIPPLE CARRY ADDER**
<p> A binary adder is a digital circuit that produces the arithmetic sum of two binary numbers. It can be constructed with full adders connected in cascade, with the output carry from each full adder connected to the input carry of the next full adder in the chain. </p>

<p>Addition of n-bit numbers requires a chain of n full adders or a chain of one-half adder and n 9 1 full adders.The augend bits of A and the addend bits 
of B are designated by subscript numbers from right to left, with subscript 0 denoting the least significant bit. The carries are connected in a chain through the full adders. The input carry to the adder is C0, and it ripples through the full adders to the output carry C4. The S outputs generate the required sum bits. An n -bit adder requires n full adders, with each output carry connected to the input carry of the next higher order full adder. </p>

## EXAMPLE
To demonstrate with a specific example, consider the two binary numbers A = 1011 and B = 0011. Their sum S = 1110 is formed with the four-bit adder as follows:
<br>
![ex](https://github.com/user-attachments/assets/a053f07e-d160-4265-94f8-9b98c97b5bce)

## BLOCK DIAGRAM
![Screenshot 2024-08-24 193436](https://github.com/user-attachments/assets/95cdd6a6-528d-4928-a536-7ca88b1bcd21)

