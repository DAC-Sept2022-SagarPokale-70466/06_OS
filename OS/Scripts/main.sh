#!/bin/bash

function check_armstrong(){
	echo " Enter the number"
	read num

t=$num
s=0
c=10
while [ $num -gt 0 ]
do
	r=$((num % c))
	i=$((r * r * r))
	s=$((s + i))
	num=$((num / c))
done

	echo $s
if [ $s == $t ]
then
	echo "ArmStrong Number"
else
	echo "Not An Armstrong number"
fi
}


function print_armstrong(){
function ams {
	num=$1
	t=$num
	s=0
	c=10

	while [ $num -gt 0 ]
	do
		r=$((num % c))
        	i=$((r * r * r))
        	s=$((s + i))
       		num=$((num / c))
	done

	if [ $s == $t ]
	then
        	echo "$t, "
	fi
}
	echo "Enter min and max number"
	read min max

	z=$min

while [ $z -lt $max ]
do
	ams $z
	z=`expr $z + 1`
done

}

function prime {
for((i=2; i<=num/2; i++))
do
	if [ $((num%i)) -eq 0 ]
 	then
    		echo "$num is not a prime number."
    	exit
  	fi
done
echo "$num is a prime number."
}

function primecheck {
	for((i=2; i<=min/2; i++))
	do
		if [ $((min%i)) -eq 0 ]
		then
			exit
		fi
	done
	echo "$min"
}


# menu Driven :

while [ true ]
do
	echo "Enter your choice"
   	echo "0.Exit"
   	echo "1.Print all Armstrong numbers between given range"
   	echo "2.Check Armstrong number or not"
   	echo "3.Print Pattern"
   	echo "4.Print addtition of two floating point numbers"
   	echo "5.Add execute permission for user of file"
   	echo "6.Convert Upper Case letters of given string to lower case"
   	echo "7.Find file with name in your home directory"
   	echo "8.Count number of occurrences of a word in file"
	echo "9.Find Max Number in Array"
	echo "10.Temp Celsius to fahrenheit"
	echo "11.String palindrome or not"
   	echo "12.Calculate Gross Salary"
   	echo "13.print fibonacci series by taking input of  how many terms print"
   	echo "14.print factorial of given number"
   	echo "15.find  given  year is leapyear or not"
   	echo "16.To find given Number is Positive or Not"
   	echo "17.To Print Number Table"
  	echo "18.To Find Greatest of 3 Numbers"
   	echo "19.To find number is Prime or Not"
   	echo "20.To find last modification time of any file"
   	echo "21.To Display hidden files in current directory"
	echo "22.display your LOGIN NAME and HOME directory"
	echo "23.display menu like 1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit"
	echo "24.if file display it's size and if directory display it's contetnts"
	echo "25.prime numbers in given limit"
	echo "26.check whether is is perfect square or not"
	echo "27.display only executable files of current directory"
	echo "28.Accept the two file names from user and append the contents in reverse case of first file into second file"
	read choice

	if [ $choice -eq 0 ]
	then
		exit
	fi

	case $choice in 
	1)
		#1. Print all Armstrong numbers between given range
		print_armstrong $1 $2
		;;

	2)
		#2.Check Armstrong number or not
		check_armstrong $1 $2
		;;
	3)
		#3.Print Pattern
		# *
		# * *
		# * * *
		# * * * *
		# * * * * *
		# assignment Q17
		num=5
		for((i=1;i<=num;i++))
		do
			for((j=1;j<=i;j++))
			do
				echo -n "* "
			done
			echo " "
		done
		;;


	4)
		#4.Print addtition of two floating point numbers
			echo "Enter float num1"
			read n1
			echo "Enter float num2"
			read n2
			sum=`echo "$n1 + $n2" | bc`
			echo "addition = $sum"
			;;

	5)
		#5.Add execute permission for user of file
			echo  "Enter File Name : "
			read filename
			if [ -e $filename ]
			then
				if [ -f $filename ]
				then
					chmod +x $filename
					echo " success"
				fi
			else
				echo "FILE is either directory or invalid filename"
			fi
			;;
	

	6)
		#6.Convert Upper Case letters of given string to lower case
			echo "Enter String"
			read string
			echo $string | tr [:upper:] [:lower:]
			;;	

	7)
		#7.Find file with name in your home directory
			echo "Enter file name to search in home directory : "
			read file
			find -name $file
			;;

	8)
		#8.Count number of occurrences of a word in file
			echo "Enter full name of file : "
			read f
			echo "Enter word to count occurences "
			read key
			echo "$key occcured `grep -o -i $key $f | wc -l` times in given file"
			;;

	9)
		#9.Find Max Number in Array
			declare -a arr
			i=0
			while [ $i -lt 5 ]
			do
				echo -n "Enter arr[$i] : "
				read arr[$i]
				i=`expr $i + 1`
			done
			
			echo "Array elements : ${arr[*]}"

			max=0
			for ele in ${arr[*]}
			do
				if [ $ele -gt $max ]
				then
					max=$ele
				fi
			done
			echo "MAX value = $max"
			;;

	10)
		#10.Temp Celsius to fahrenheit
			echo -n "Enter degree celsius temperature : "
			read celsius
			fahrenheit=`echo "$celsius*1.8 + 32" | bc`
			echo "$celsius degree celcius is equal to $fahrenheit degree fahrenheit"
			;;

	11)
		#11. String is palidrome or not 
			echo "Enter the String to check for palidrome : "
			read str
			rev=`echo $str | rev`

			if [ $str = $rev ]
			then 
				echo "$str is palidrome"
			else
				echo "$str is not a palidrome"
			fi
			;;

	12)
	#12.Calculate Gross Salary
			#DA 40% and HRA 20%
			 echo "enter the basic salary:"
			read basic
			gross=$(echo "$basic+((40/100)*$basic)+((20/100)*$basic)" | bc -l)
			echo "The gross salary : $gross"
			;;

	13)
	#13.print fibonacci series by taking input of how many terms print
			echo -n "Enter number of terms to find fibonacci : "
			read n
			x=0
			y=1
			i=2
			echo "Fibonacci Series upto $n terms : "
			echo "$x"
			echo "$y"
			while [ $i -lt $n ]
			do
				i=`expr $i + 1`
				z=`expr $x + $y`
				echo "$z"
				x=$y
				y=$z
			done
			;;


	14)
	#print factorial of given number

		echo "Enter the number"
		read num

		fact=1
		while [ $num -gt 1 ]
		do
			fact=$((fact*num))
			num=$((num-1))
		done
		echo $fact
		;;

	15)
		#15.find given year is leapyear or not

			echo -n "Enter year : "
   			read year

			if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
			then
      				echo "$year is leap year"
			else
      				echo "$year is not a leap year"
			fi
			;;


	16)
		#16.To find given Number is Positive or Not
			echo "Enter a Number"
			read num

			if [ $num -lt 0 ]
			then
    				echo "Negative Number"
			elif [ $num -gt 0 ]
			then
    				echo "Positive Number"
			else
  	  			echo "Neither Positive Nor Negative"
			fi
			;;

	17)
	#Table 
		echo -n "Enter Number :: "
		read num
		echo "Table of $num :  "
		i=1
		until [ $i -eq 11 ]
		do
			res=`expr $num \* $i`
			echo "$res"
			i=`expr $i + 1`
		done
		;;

	18)
	#18.To Find Greatest of 3 Numbers
		echo "Enter Three Numbers : "
		read a b c
		if [ $a -gt $b -a $a -gt $c ]
		then 
			echo "$a is greatest"
		elif [ $b -gt $a -a $b - $c ]
		then
			echo "$b is greatest"
		else
			echo "$c is greatest"
		fi
		;;
	
	19)
	#19.To find number is Prime or Not
		echo "Enter Number to check prime or not : "
		read num
		r=`prime $num`
		echo "$r"
		;;

	20)
	#20.To find last modification time of any file
		echo -n "Enter a filename to see last modification time : "
		read fileName

		# make sure file exits
		if [ ! -f $fileName ]
		then
			echo "$fileName not a file"
			exit 1
		fi

		# use stat command to display
		echo "$fileName was last modified on $(stat -c %x $fileName)"
		;;


	21)
	#21. To Display hidden files in current directory
		echo "Enter dierctory"
		read directory
		# /home ( to search in home directory )

		if [ -e $directory -a -d $directory ]
   		then
    		echo "Hidden files are.."
    			ls -ld .* | grep -v ^d
				# -v invert the find output
  			else
    			echo "Directory does not exist"
  			fi
			;;

	22)
	#22.display your LOGIN NAME and HOME directory
		echo "Login Name : $USER"
		echo "Login Name : `whoami`"
		echo "Home Directory : $HOME"
		;;

	*)
		#Default Case : 
		echo "Enter Valid Choice"

	esac
done

