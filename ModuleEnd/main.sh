#! bin/bash

function primecheck {
	i=0
	for((i=2; i<=min/2; i++))
	do
		if [ $((min%i)) -eq 0 ]
		then
			exit
		fi
	
	done
	echo "$min"
}


while [ true ]
do
	echo "********************************"
	echo "Enter your choice"
    	echo "0.Exit"
    	echo "1. Write a shell script function which will return the count of prime numbers in a range of given two 
numbers"
    	echo "2. Write a shell script function Print pattern"
    	echo "3 .Compose a command which will print 5 digits roll Nos only, from file Number.txt."
    	echo "4. Compose a command which will print the lines which are ends with fullstop (.) from linux.txt."
    	echo "5. Count of lines in which is word not present in file linux.txt"
		echo "6. Write a command to convert upper case letters of given string to lower case."
		echo "7. Write a command to find file with name in your home directory."
		echo "********************************************************************"
  		echo -e "Enter choice "

 read choice

if [ $choice -eq 0 ]
	then
		exit
	fi

	case $choice in
	1)
		echo "Enter a limit min and max"
			read min max
				i=0
    			while [ $min -le $max ]
    			do
				r=`primecheck $min`
				if [ ! -z "$r" ]
				then
					echo "$r"
					i=`expr $i + 1`
				fi
				min=`expr $min + 1`
              # echo "Total Prime = $i"
			done
			echo "Total Prime = $i"
			;;

	
	2)
	#Pattern
	#2.Print pattern
			echo -n "Enter number of Rows : "
			read num
			
			for((i=1;i<=num;i++))
			do
				for((k=1;k<=num-i;k++))
				do
					echo -n " "
				done

				for((j=1;j<=i;j++))
				do
					echo -n "$j "
				done
			
			echo " "
			done
			echo " "
			;;

	3)
#	#3.command which will print 5 digits roll Nos only, from file Number.txt
	#3.command which will print 5 digits roll Nos only, from file Number.txt
			
			echo "Enter filename to print 5 digits roll Nos only from file : " 
                        read filename

			#echo " `sed -n '1,5p' $filename` "
			echo " `grep -Eo "[0-9]{5}" $filename` "
			echo ""
			;;			
	
	4)
		echo "Lines ending with '.' : "
		grep '[.]$' linux.txt 

	;;

	5)
	#5.command which will give only the count of lines in which is word not present in file linux.txt

			echo "Enter full name of file : "
			read f

		grep -vc "is" $f
			echo " IS not present in File $f"
                        ;;


	6)
	echo "Enter String You want to convert"
			read string
			echo $string | tr [:upper:] [:lower:]
			;;

	7)
	#Find file with name in your home directory
	#7.command to find file with name in your home directory
			echo "Enter filename to find file with name in your home directory : " 
                        read filename

			find /home/osboxes -name $filename
			echo ""
                        ;;

	*)
		echo "Enter a valid choice"
	esac
done
