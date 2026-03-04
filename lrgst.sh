echo "enter three numbers : "
read-p "enter the first number : " a
read-p "enter the srcond number : " b
read-p "enter the third number : " c
then
if[$a -gt $b]&&[$a -gt $c]
echo "a is largest"
elif[$b -gt $c]
echo "b is largest"
else
echo "c is largest"
fi 
