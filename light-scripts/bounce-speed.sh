#!/bin/bash

#set mode to output
 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 1;
 done;

i="0"
# same loop as above but increase speed each iteration
s=".5"
while [ $i -lt 10 ]
 do

	gpio write 0 0; # pin 0 on
	sleep $s;
	gpio write 1 0; # pin 1 on
	gpio write 0 1; # pin 0 off
	sleep $s;
	gpio write 2 0; # pin 2 on
	gpio write 1 1; # pin 1 off
	sleep $s;
	gpio write 3 0; # pin 3 on
	gpio write 2 1; # pin 2 off
	sleep $s;
	gpio write 4 0; # pin 4 on
	gpio write 3 1; # pin 3 off
	sleep $s;
	gpio write 5 0; # pin 5 on
	gpio write 4 1; # pin 4 off
	sleep $s;
	gpio write 5 1; # pin 5 off
	
	i=$[$i+1]
	s=$(echo $s-.05 | bc) # decrease sleep time by 0.05
done
i="0"
while [ $i -lt 20 ]
 do

	gpio write 0 0; # pin 0 on
	sleep $s;
	gpio write 1 0; # pin 1 on
	gpio write 0 1; # pin 0 off
	sleep $s;
	gpio write 2 0; # pin 2 on
	gpio write 1 1; # pin 1 off
	sleep $s;
	gpio write 3 0; # pin 3 on
	gpio write 2 1; # pin 2 off
	sleep $s;
	gpio write 4 0; # pin 4 on
	gpio write 3 1; # pin 3 off
	sleep $s;
	gpio write 5 0; # pin 5 on
	gpio write 4 1; # pin 4 off
	sleep $s;
	gpio write 5 1; # pin 5 off
	
	i=$[$i+1]
done
i="0"
while [ $i -lt 10 ]
 do

	gpio write 0 0; # pin 0 on
	sleep $s;
	gpio write 1 0; # pin 1 on
	gpio write 0 1; # pin 0 off
	sleep $s;
	gpio write 2 0; # pin 2 on
	gpio write 1 1; # pin 1 off
	sleep $s;
	gpio write 3 0; # pin 3 on
	gpio write 2 1; # pin 2 off
	sleep $s;
	gpio write 4 0; # pin 4 on
	gpio write 3 1; # pin 3 off
	sleep $s;
	gpio write 5 0; # pin 5 on
	gpio write 4 1; # pin 4 off
	sleep $s;
	gpio write 5 1; # pin 5 off
	
	i=$[$i+1]
	s=$(echo $s+.05 | bc) # decrease sleep time by 0.05
done

# turn off all pins
 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
