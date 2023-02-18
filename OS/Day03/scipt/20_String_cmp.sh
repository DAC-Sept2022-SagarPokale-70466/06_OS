

str="dac"
#str1="sunbeam"
str1="dac"

echo "str = $str"
echo "another str = $str1"

str3=$str$str1

echo "Comparision = $str3"

if [ $str = $str1 ]
then 
	echo "Both are Equal"
else 
	echo "NOT Equal"

fi

echo "Substring From 3th Character = ${str1:3}"
