ECE281_Lab1
===========


# Truth Table (Expected Values)

![Picture_1][picture_1] 

  Pictured above is the truth table that I made by hand where the inputs are in binary and the outputs are the expected values for the 2's complement.  By looking over this truth table and double checking my values, it looks like they are correct. However, I can't know that these are correct for sure until I check the converter in VHDL using ISIM which is pictured below.
  Also listed above are my K-Maps which allowed me to easily make simplified SOP equations for each output function.  This also helped me draw my schematic which especially came in handy for output "X."

[picture_1]: https://raw2.github.com/AnthonyEcheverry/ECE281_Lab1/master/Lab1_truthtable.PNG "Truth Table"

# Testbench Waveform (Actual Values)

![Picture_2][picture_2]

  Yes! After inputting the truthtable and schematic into VHDL I was able to check the values in ISIM and see that they are indeed correct with my predicted values.  To implement this into VHDL all I did was look at my schematic (pictured below) and interpreted it into signals in my main code before creating a test bench which built off of it.  We can see that it checks out when you look at the value for "001" in unsigned, the chart shows us that it becomes "111" for 2's compliment which is exactly the value we wanted.  The testbench wavform shows as a full block when the value is equal to 1, and a line when it is equal to 0.

[picture_2]: https://raw2.github.com/AnthonyEcheverry/ECE281_Lab1/master/Lab1_testbench.PNG "ISIM"

# Final Schematic of Circuit

![Picture_3][picture_3]

  This is the schematic that I created through looking at my truthtable and using my simplified boolean equations.  It allowed me to easily insert the right signals into VHDL to be simulated in ISIM. For example, we can see on the schematic that the combination of "001," or "A'B'C" should give us an output of "XYZ," or "111."  By looking at the schematic we can see that this checks out.  

[picture_3]:https://raw2.github.com/AnthonyEcheverry/ECE281_Lab1/master/Lab1_Schematic.png "Schematic"

#Testing and Debugging

  The first thing I had to do for this lab was create a 3 bit truth table where inputs "A,B,C" represented the values 0-7 in binary while outputs "X,Y,Z" represent the two's complement component of the binary input.  When making this truthtable I got it on my first try and ran into no errors.
