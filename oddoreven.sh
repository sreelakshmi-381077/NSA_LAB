check_odd_even() {
   if  [ (($1 %2))  -eq 0  ]
then
     echo "$s1 is even"
else
     echo "$s1 is odd"
fi
}
echo "please enter a number:" 
read number
check_odd_even "$number"
