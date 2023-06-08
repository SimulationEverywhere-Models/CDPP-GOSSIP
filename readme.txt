Cell-DEVS Gossip Model!

Cell-DEVS model by David Tudino.
Cellular Automata from http://www.uni-koblenz.de/~kgt/Learn/Textbook/node74.html


The files and directories provided will be explained here.

run.bat will run the model and then run drawlog.


The two directories cdModeler_pal and VRMLGUI_pal contain the pal files for the gossip 
model for each of the respective applications.

The two directories Moore and Neumann contain a complete drawlog .drw file for the 
gossip model run with a Moore and Neumann neighborhood, respectively.

The neighbourhoods.txt file contains the neighborhoods and modified rules for the
two neighborhoods the model was tested with. Rather than have two .ma files, I have
the required information avialable to be cut-and-pasted into the gossip.ma file.


A note on probablilities. In the [people] rules the probability of the gossip spreading
are the opposite of the decimal number supplied in the file. For example, to run with a
probability of 25%, the first rule would need to show the numbers checking for random
values above 0.75. Conversely, if looking for a 75% proability then set to check for 
numbers above 0.25. Though slightly counter-intuitive, this method made writing the 
rules slightly easier.

For the probability of an active cell forgetting the gossip, I have set it to check for 
a value less than the desired percentage. For exmaple, to forget with a 10% probability, 
check for a random number less than 0.10. There should be no difference in result if it
is changed to look for a value above a number, as in the previous case. 
