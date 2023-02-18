#! /bin/bash

file_cnt=0
dir_cnt=0

for entry in `ls`
do
	if [ -f $entry ]
	# -e for path check
	then 
		file_cnt=`expr $file_cnt + 1`
	
	elif [ -d $entry ]
	then 
		dir_cnt=`expr $dir_cnt + 1`
	else
		echo "Entry is not a filr or directory"
	fi
done

echo "File Count = $file_cnt"
echo "Dir Count = $dir_cnt"
