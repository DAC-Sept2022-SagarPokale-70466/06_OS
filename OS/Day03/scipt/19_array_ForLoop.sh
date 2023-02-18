#! /bin/bash

declare -a arr

i=0

while [ $i -lt 5 ]
do
	echo -n "Enter arr[$i] : "
	read arr[$i]
	i=$(expr $i + 1)
done

echo "Array of elements are : ${arr[*]}"

max=0
echo "Max = $max"
for element in ${arr[*]}
do
	if [ $element -gt $max ]
		then 
			max=$element
	fi
done

echo "Max value is : $max"
