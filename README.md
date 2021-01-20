## MIPS Assembly
For being a good MIPS assmebly programmer, first we have to know about the architecture of MIPS processors. So, first of all, I am going to summarize the architecture of MIPS precisely below.

MIPS architecture is a 32-bit structure, which means that data are 32-bit wide in this architecture. In the following [figure](https://en.wikipedia.org/wiki/MIPS_architecture_processors#/media/File:MIPS_Architecture_(Pipelined).svg), the overview of the pipelined MIPS architecture can be seen.

![MIPS Architecture](img/MIPS_architecture_overview.png)

Additionally, there are 3 instruction categories which can be checked in the following figure.

![instruction categories](img/MIPS_instruction_types.gif)

Besides RF (Register File, which contains 32 registers of 32-bit wide), there are **PC** (Program Counter) register, which points the instruction which is going to be fetched for the next time, and **HI** and **LO** (HI and LO are called multiply/ divide registers), which store the higher and lower order bits of the result of the multiplication.

![MIPS RF](img/RF.gif)

R-type (Register Access) instructions

![R-Type Instrctions](img/Rtype.jpg)

I-type (Immediate) instructions

![I type instructions](img/Itype.jpg)

J- Type (Jump) instructions

In the following figures, you can get a complete knowledge of the MIPS instructions.

![insts 1](img/inst1.jpg)

![insts 2](img/inst2.jpg)

