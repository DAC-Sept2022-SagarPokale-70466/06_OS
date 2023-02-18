#! /bin/bash

echo -n "Enter two No : "
read num1 num2

echo -e "1. Add\n2. Sub\n3. Mul\n 4. Div"
echo -n "Enter Your Choice :: "
read choice

case $choice in
	1)
		res=`expr $num1 + $num2`
		;;
	2)
		res=`expr $num1 - $num2`
		;;
	3)
		res=`expr $num1 \* $num2`
		;;
	4)
		res=`expr $num1 / $num2`
		;;
	*)
		echo "Invalid Choice"

esac
echo "Result = $res"
