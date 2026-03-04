echo enter the string
read s
echo $s>temp
rvs="$(rev temp)"
if [ $s = $rvs ]
then
echo "it is a plaindrome"
else
echo "it is not palndrome"
fi
