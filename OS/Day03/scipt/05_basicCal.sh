echo -n "Enter radius : "
read rad

echo "Radius of Circle = $rad"

area=`echo "3.14 * $rad * $rad" | bc`
echo "Area of Circle = $area"

