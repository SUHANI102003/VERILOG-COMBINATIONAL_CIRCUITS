# **CARRY LOOK AHEAD ADDER**

<p>The adder produce carry propagation delay while performing other arithmetic operations like multiplication and divisions as it uses several additions or subtraction steps. This is a major problem for the adder and hence improving the speed of addition will improve the speed of all other arithmetic operations. Hence reducing the carry propagation delay of adders is of great importance. There are different logic design approaches that have been employed to overcome the carry propagation problem. One widely used approach is to employ a carry look-ahead which solves this problem by calculating the carry signals in advance, based on the input signals. This type of adder circuit is called a carry look-ahead adder.</p>

## BOOLEAN EXPRESSIONS
<p>Pi = Ai ^ Bi
   Gi = AiBi
  the output sum and carry can respectively be expressed as 
                      Si = Pi { Ci
                     Ci+1 = Gi + PiCi
Gi is called a carry generate , and it produces a carry of 1 when both Ai and Bi are 1, regardless of the input carry Ci. Pi is called a carry propagate , because it determines whether a carry into stage i will propagate into stage i + 1 (i.e., whether an assertion of Ci will propagate to an assertion of Ci+1 ).  We now write the Boolean functions for the carry outputs of each stage and substitute the value of each Ci from the previous equations: 
C0 = input carry
C1 = G0 + P0C0
C2 = G1 + P1C1 = G1 + P1 1G0 + P0C02 = G1 + P1G0 + P1P0C0
C3 = G2 + P2C2 = G2 + P2G1 + P2P1G0 = P2P1P0C</p>
