#!/bin/bash

TIME1=`date +%s%N`

mysql -u root -p123soleil employees_only < delete.sql

TIME2=`date +%s%N`

TIME3=`expr ${TIME2} - ${TIME1}`

# Use expr to do the math, let's say TIME1 was the start and TIME2 was the finish
DIFFSEC=`expr ${TIME3} / 1000000`

echo Start ${TIME1}
echo Finish ${TIME2}

echo Took ${DIFFSEC} miliseconds.


