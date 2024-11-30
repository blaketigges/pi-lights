
#!/bin/bash

#set mode to output
 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 1;
 done;

i="0"
o="0"
while [ $i -lt 30 ]
 do
	for i in 0 1 2 3 4 5;
	do gpio write $i 1;
	done;
	for i in 0 1 2 3 4 5;
	do gpio write $i 0;
	done;
	i=$[$i+1]
done

 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
