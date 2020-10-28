# RISC-V_MYTH_Core

Made The Microarchitecture for a RISCV core, which has support of base interger RV32I instruction format using TL Verilog and Makerchip IDE. This also has a sub-project which involved making a pipelined Calculator. This was done as a part of a 5-day workshop.

Day1-2 was focussed on how an application written in higher level language communicates with the processor

Day3-5 was all about Computer Architecture, the RISCV ISA and Implementing a 3 stage pipelined RISCV Core

The order of desgining the logic for the core was as follows:

1) Fetch Logic
  a) Program Counter
  b) Instruction Memory
  
2) Decode Logic
  a) The type of instruction ( R-type, S-type, U-type, I-type, B-type ,J-type)
  b) decoding individual instructions
  
3) Register File Read and Write Logic

4) Execute
  a) Making the ALU
  b) Executing the instructions based on the instruction field

5) Control Logic
  a) branch and jump target caulculation after branch and jump condition
  
6) Pipelining the CPU using the timing abstract feature of TL Verilog

7) Load and store instructions for accessing the data memory

Apart from this, hazards like Control flow hazard and read after write hazard were addressed by analysing the waterfall logic diagram and solutions like Register File Bypass.

The slides used can be found here : [1]: https://drive.google.com/file/d/1tqvXmFru31-tezDX30jTNJoLcQk308UM/view
