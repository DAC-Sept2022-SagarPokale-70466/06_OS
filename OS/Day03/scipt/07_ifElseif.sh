echo "Enter two numbers :: "
read n1 n2

max=0

if [ $n1 -eq $n2 ]
then 
	echo "Num1 And Num2 are Equal"
	max=$n1

elif [ $n1 -gt $n2 ]
then 
	echo "Num1 is Greater"
	max=$n1
else
	echo "Num2 Is Greater"
	max=$n2
fi

echo "MAX = $max"
