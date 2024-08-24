
# **FULL ADDER**
<p>Full Adder is the adder that adds three inputs and produces two outputs. The first two inputs are A and B and the third input is an input carry as C-IN. The output carry is designated as C-OUT and the normal output is designated as S which is SUM. The C-OUT is also known as the majority 1’s detector, whose output goes high when more than one input is high.</p> 
<p>A full adder logic is designed in such a manner that can take eight inputs together to create a byte-wide adder and cascade the carry bit from one adder to another. we use a full adder because when a carry-in bit is available, another 1-bit adder must be used since a 1-bit half-adder does not take a carry-in bit. A 1-bit full adder adds three operands and generates 2-bit results.</p>
<p>Logical Expression for SUM: = A’ B’ C-IN + A’ B C-IN’ + A B’ C-IN’ + A B C-IN = C-IN (A’ B’ + A B) + C-IN’ (A’ B + A B’) = C-IN XOR (A XOR B) = (1,2,4,7) 

Logical Expression for C-OUT: = A’ B C-IN + A B’ C-IN + A B C-IN’ + A B C-IN = A B + B C-IN + A C-IN = (3,5,6,7) </p>
