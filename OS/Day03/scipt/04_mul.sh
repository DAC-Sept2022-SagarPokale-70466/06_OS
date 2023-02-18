echo -n "Enter length of Rectangle : "
read l

echo -n "Enter Breath of rectange : "
read b

#area=`expr $l \* $b`
area=$(expr $l \* $b)

echo "Area = $area"
