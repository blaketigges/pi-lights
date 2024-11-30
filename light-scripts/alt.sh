#!/bin/bash

 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 1;
 done;

i="0"

while [ $i -lt 15 ]
 do

	gpio write 1 0;
	gpio write 3 0;
	gpio write 5 0;
	sleep .25;
	gpio write 1 1;
	gpio write 3 1;
	gpio write 5 1;
	gpio write 0 0;
	gpio write 2 0;
	gpio write 4 0;
	sleep .25;
	gpio write 0 1
	gpio write 2 1
	gpio write 4 1

	i=$[$i+1]
done

for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
