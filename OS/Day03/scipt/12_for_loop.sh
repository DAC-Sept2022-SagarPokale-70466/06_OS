#! /bin/bash

echo "Collection of the values"
sum=0
for var in 1 2 3 4 5 6 7 8 9 0
do 
	echo -n "$var "
	sum=`expr $var + $sum`

done

echo "SUM = $sum"
