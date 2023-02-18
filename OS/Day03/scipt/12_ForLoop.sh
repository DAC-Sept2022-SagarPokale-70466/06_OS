num=3

for (( i=1; i<11; i++));
do 
	res=`expr $i \* $num`
	echo "$res"
done
