#!/bin/bash

echo -n "Enter Number "
read num

echo "Table of $num"
i=1
while [ $i -le 10 ]
	do 
		res=`expr $i \* $num`
		echo "$res"
		i=`expr $i + 1`
	done

