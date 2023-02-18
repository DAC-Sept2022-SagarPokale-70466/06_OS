file_cnt=0
dir_cnt=0

echo "Enter the dir path "
read path

if [ -e $path ]
then 
	cd $path

	for entry in `ls`

	do 
		if [ -f $entry ]
		then
			file_cnt=`expr $file_cnt + 1`

		elif [ -d $entry ] 
		then 
			dir_cnt=`expr $dir_cnt + 1`

		else
			echo "Entry is not a file or a folder"

		fi

	done

echo "File Count = $file_cnt"
echo "Directory Count = $dir_cnt"

else
	echo "Invalid Path"
fi
