#!/bin/bash

for i in 0 1 2 3 4 5 6 7;
do gpio mode $i out;
done;

for i in 0 1 2 3 4 5;
do gpio write $i 1;
done;

i="0"
p="0"
p2="0"
while [ $i -lt 30 ]
do
    p=$(( $RANDOM % 6 ));
    p2=$(( $RANDOM % 6 ));
    gpio write $p 0;
    #gpio write $p2 0;
    sleep .15;
    gpio write $p 1;
	#gpio write $p2 1;
    
    i=$[$i+1]
done

for i in 0 1 2 3 4 5;
do gpio write $i 0;
done;
