
#!/bin/bash

killall -9 bounceloop.sh
killall -9 cycleloop.sh
killall -9 inneroutloop.sh

 for i in 0 1 2 3 4 5 6 7;
 do gpio mode $i out;
 done;

 for i in 0 1 2 3 4 5 6 7;
 do gpio write $i 0;
 done;
