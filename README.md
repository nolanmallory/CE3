CE3
===

###Moore Simulation
![alt text][logo1]

[logo1]: /Moore_simulation.JPG

The above simulation is correct as compared to the provided image in the Computer Exercise instructions. Additionally, it is correct as the inputs produce the expected outcome. The corresponding floor numbers start at 0001 and increase to 0100, with a pause of 2 clock cycles at each floor. Once at the top, it sequentially decreases back down to 0001, the first floor, as expected.

###Mealy Simulation
![alt text][logo2]

[logo2]: /Mealy_simulation.JPG

The above simulation is very similar to the Moore as most of the code is identical. What makes the Mealy different from the Moore is the 2nd output of nextfloor. The nextfloor as define in the output logic, can be seen to be correct by looking at the above image. For each current floor and input (up_down), the expected next floor is outputed.


Answers:

1.50 MHz is equal to 20 ns cycle length

2.Synchronous, dependent on the clock
