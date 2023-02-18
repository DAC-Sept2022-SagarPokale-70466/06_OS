#! /bin/bash

arr=(1 2 3 4 5 6 7   8 9 10)

echo "Array of Elements = ${arr[*]}"

echo "Numbers of Elements = ${#arr[*]}"

echo "arr[0] = ${arr[0]}"

sum=0
i=0
 
while [ $i -lt ${#arr[*]} ]
do
	sum=`expr $sum + ${arr[$i]}`
	i=`expr $i + 1`
done

echo "Sum of all the Elements in array is $sum"
