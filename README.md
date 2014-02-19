ECE281_Lab2
===========

Lab 2 Repository 

# Truth Table

|Ain|Bin|Cin|S|Cout|
|:-:|:-:|:-:|:-:|:-:|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

# Boolean Expressions

![alt text](https://raw.github.com/aaronstolze/ECE281_Lab2/master/BooleanExpressions.jpg "Testbench Simulation")

# Schematic 

![alt text](https://raw.github.com/aaronstolze/ECE281_Lab2/master/Schematic.jpg "Circuit Schematic")

# Testbench Simulation Waveform 

![alt text](https://raw.github.com/aaronstolze/ECE281_Lab2/master/Waveform.PNG "Testbench Simulation")

# Prelab Analysis

The waveform simulation matches the truth table created ensuring that the simulation was coded correctly.

# Four Bit Adder Schematic 

![alt text](https://raw.github.com/aaronstolze/ECE281_Lab2/master/FourBitAdder.jpg "Schematic")

# Analysis

The combination of the adders to create a four-bit adder was the goal of this project.  The VHDL code in the module shows the combination of the four full adders in order to make a complete four-bit adder.  A testbench was then created which will run through all the combinations of the newly created multiplexer.  A .ucf file was then created which was used to implement the code onto the NEXYS2 board.    

