#!/bin/bash

#set mode to output
 for i in 1;
 do gpio mode $i out;
 done;

 for i in 1;
 do gpio write $i 0;
 done; 
