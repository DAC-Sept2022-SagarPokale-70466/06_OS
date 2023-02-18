#! bin/bash

cnt=0

for entry in `ls`
do 
	echo "$entry "
	cnt=`expr $cnt + 1`
done

echo "Numbers Of Files = $cnt"
