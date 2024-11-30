
#!/bin/bash

#set mode to output
 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5;
 do gpio write $i 1;
 done;

i="0"
s=".005"
while [ $i -lt 15 ]
 do
	gpio write 1 1;
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
	gpio write 4 0;
	gpio write 5 1;
	sleep $s;
	gpio write 3 0;
	gpio write 4 1;
	sleep $s;
	gpio write 2 0;
	gpio write 3 1;
	sleep $s;
	gpio write 1 0;
	gpio write 2 1;
	sleep $s;

	i=$[$i+1]
done

 for i in 0 1 2 3 4 5;
 do gpio write $i 0;
 done;
