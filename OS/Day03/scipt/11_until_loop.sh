#! /bin/bash

echo -n "Enter the Number " 
read num

i=1
until [ $i -eq 11 ] 
do 
	res=`expr $i \* $num`
	echo $res
	i=`expr $i + 1`
done

