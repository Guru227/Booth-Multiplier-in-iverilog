# Booth-Multiplier-in-iverilog

## Modules and sub-modules
    
1. booth_multiplier(): This module takes in two signed 8-bit inputs, the multiplicand and the multiplier, and generates one signed 16-bit output, the product.
Inputs: two 8-bit signed binary numbers
Outputs: one 16-bit signed binary number
This module implements one sub-module: booth_substep().
       
2. booth_substep(): By considering the Q[0] and q0, this module performs one iteration of the Booth’s multiplication process.
Inputs: 8-bit signed accumulator, 8-bit signed multiplier, 8-bit signed multiplicand, q0.
Outputs: 8-bit signed next-value-of-accumulator, 8-bit signed next-value-of-multiplier, next_q0
This module implements one sub-module: eight_bit_adder_subtractor().
       
3. eight_bit_adder_subtractor(): Depending on cin (0 for add, 1 for sub), the two 8 bit numbers passed to it are either added or subtracted.
Inputs: cin, 8-bit signed input ‘a’, 8-bit signed input’b’.
Outputs: 8-bit signed output ‘sum’
This module implements two sub-modules: (defined in lib.v)
a) xor2 (performs xor on two 1-bit inputs and results in one 1-bit output)
b) fa (full-adder module for two 1-bit inputs and one carry-in input and results in one sum output and one carry-out output).
