

str="NitiN"

rev=`echo $str | rev`

if [ $str = $rev ]
then
	echo "str is palidrome"
else
	echo "str is not a palidrome"
fi
