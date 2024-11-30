#!/bin/bash

#set mode to output
 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;

i="0"

while [ $i -lt 5 ]
 do

	gpio write 0 1; # turn pin 0 off 
	sleep .15;
	gpio write 1 1; # turn pin 1 off
	sleep .15;
	gpio write 2 1; # turn pin 2 off
	sleep .15;
	gpio write 3 1; # turn pin 3 off
	sleep .15;
	gpio write 4 1; # turn pin 4 off
	sleep .15;
	gpio write 5 1; # turn pin 5 off
	sleep .15;
	gpio write 5 0; # turn pin 5 on
	sleep .15;
	gpio write 4 0; # turn pin 4 on
	sleep .15;
	gpio write 3 0; # turn pin 3 on
	sleep .15;
	gpio write 2 0; # turn pin 2 on
	sleep .15;
	gpio write 1 0; # turn pin 1 on
	sleep .15;
	gpio write 0 0; # turn pin 0 on
	sleep .15;
	gpio write 5 1; # turn pin 5 off
	sleep .15;
	gpio write 4 1; # turn pin 4 off
	sleep .15;
	gpio write 3 1; # turn pin 3 off
	sleep .15;
	gpio write 2 1; # turn pin 2 off
	sleep .15;
	gpio write 1 1; # turn pin 1 off
	sleep .15;
	gpio write 0 1; # turn pin 0 off
	sleep .15;
	gpio write 0 0; # turn pin 0 on
	sleep .15;
	gpio write 1 0; # turn pin 1 on
	sleep .15;
	gpio write 2 0; # turn pin 2 on
	sleep .15;
	gpio write 3 0; # turn pin 3 on
	sleep .15;
	gpio write 4 0; # turn pin 4 on
	sleep .15;
	gpio write 5 0; # turn pin 5 on
	sleep .15;

	i=$[$i+1]
done

 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
