

echo "Prime numbers between 1 and 50 are:"

for num in {2..50}
do
    flag=0

    for ((i=2; i<=num/2; i++))
    do
        if [ $((num % i)) -eq 0 ]; then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]; then
        echo -n "$num "
    fi
done

echo
