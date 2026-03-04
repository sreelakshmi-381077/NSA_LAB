

echo "Enter a number:"
read num

# Check if number is less than or equal to 1
if [ $num -le 1 ]; then
    echo "$num is NOT a prime number."
    exit 0
fi

i=2
flag=0

while [ $i -le $((num / 2)) ]
do
    if [ $((num % i)) -eq 0 ]; then
        flag=1
        break
    fi
    i=$((i + 1))
done

if [ $flag -eq 0 ]; then
    echo "$num is a prime number."
else
    echo "$num is NOT a prime number."
fi
