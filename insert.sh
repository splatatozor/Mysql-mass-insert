#!/bin/bash
# Create database + table + time to insert datas

mysql -u root -p123soleil employees_only < employees_only.sql
echo "Table has been created"
mysql -u root -p123soleil employees_only < delete.sql
echo "Data has been deleted"

TIME1=`date +%s%N`

mysql -u root -p123soleil employees_only < load_employees.dump

TIME2=`date +%s%N`

TIME3=`expr ${TIME2} - ${TIME1}`

# Use expr to do the math, let's say TIME1 was the start and TIME2 was the finish
DIFFSEC=`expr ${TIME3} / 1000000`

echo Start ${TIME1}
echo Finish ${TIME2}

echo Took ${DIFFSEC} miliseconds.





