#!/bin/bash

#set mode to output
 for i in 0 1 2 3 4 5;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 1;
 done;

 i="0"

while [ $i -lt 5 ]
 do

	gpio write 0 0;
	sleep .25;
	gpio write 0 1;
	gpio write 1 0;
	sleep .25;
	gpio write 1 1;
	gpio write 2 0;
	sleep .25;
	gpio write 2 1;
	gpio write 3 0;
	sleep .25;
	gpio write 3 1;
	gpio write 4 0
	sleep .25;
	gpio write 4 1;
	gpio write 5 0;
	sleep .25;
	gpio write 5 1;
	#gpio write 6 1;
	#sleep .5;
	#gpio write 6 0;
	#gpio write 7 1;
	#sleep .5;
	#gpio write 7 0;

	i=$[$i+1]
done

 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
