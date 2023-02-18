echo -n "Enter two numbers :: "
read num1 num2

max=0
if [ $num1 -gt $num2 ]
then
	echo "Num1 is Greater"
	max=$num1
else
	echo "Num2 is Greater"
	max=$num2
fi

echo "MAX = $max"
