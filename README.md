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

  The first thing I had to do for this lab was create a 3 bit truth table where inputs "A,B,C" represented the values 0-7 in binary while outputs "X,Y,Z" represent the two's complement component of the binary input (which ranges from -4 to 3).  When making this truthtable I got it on my first try and ran into no errors.  I simply wrote out the binary for the decimal numbers 0-7 in order then used the "flipping method" we learned where you change flip all the 1s to 0 and the 0s to 1 then add one to the answer.  I then used my Truth Table to create three separate K-Maps (one for each output X,Y,Z).  The K-Maps that I created are listed above under my "Truth Table" title.  Looking at the first K-Map, we can see that the vertical column has the values for "A and A'" while the horizontal row represents all possibilities for "B" and "C" which comes out to "B'C' , B'C , BC , BC' ." Next we want to look at the "X" column on the truthtable and see where it equals "1." Next we can use the coordinating Binary inputs to fill in our K-map.  After the K-Map is filled out we want to group the ones and write out the K-map equation which comes to "x=AB'C'+A'(B+C)."  The SOP for this is also very easy to write because all we have to do is write out the binary for where "X=1" which would give us "x=A'B'C+A'BC'+A'BC+AB'C' ."  Using the K-map equations we found, we can also easily draw a schematic.  Starting with the inputs, and working out the outputs one by one.  For example, I started with output "Z" which has a K-map equation of "Z=C ."  This means that I was able to connect Input "C" to Output "Z" right away.  The rest were also easy to figure out and I just went one step at a time reading the K-map equations and then completing more of the schematic. Once the schematic was done, I was able to start writing my VHDL.  Writing the VHDL was exactly the same thing as the first computer exercise.  For the actual lab, I created a new source and chose the "Implement Constraints File" choice to open up a new blank ucf file.  The ucf file basically is the code that will be downloaded onto the "nexys" chip and tell it what to do.  The first thing I did for the ucf file was write the switches which define the inputs I will be using (ex. NET "one" LOC = "G18").  Next I can program the chip to work in such a way by writing the LED output constraints (ex. NET "A" LOC = "J14" ;).  Once the ucf file is completed all I had to do was go to Generate programming file, connect and turn on the Nexys 2, click configure target device, then right click and say initialize JTAG chain.  Once this is done the last thing is to program the chip by right clicking on the device and then selecting "Initialize Chain." The chip is now programmed!!  I learned a lot from this lab; for instance, I learned the difference between the programming files (vdf) and the ucf files which program the actual chip.  
