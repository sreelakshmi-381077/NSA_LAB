

echo "Enter coefficient a:"
read a

echo "Enter coefficient b:"
read b

echo "Enter coefficient c:"
read c

# Check if a is zero
if [ "$a" -eq 0 ]; then
    echo "This is not a quadratic equation."
    exit 1
fi

# Calculate discriminant
d=$((b*b - 4*a*c))

echo "Discriminant = $d"

if [ $d -gt 0 ]; then
    # Two real and distinct roots
    root1=$(echo "scale=2; (-$b + sqrt($d)) / (2*$a)" | bc -l)
    root2=$(echo "scale=2; (-$b - sqrt($d)) / (2*$a)" | bc -l)
    echo "Roots are real and distinct:"
    echo "Root 1 = $root1"
    echo "Root 2 = $root2"

elif [ $d -eq 0 ]; then
    # Real and equal roots
    root=$(echo "scale=2; -$b / (2*$a)" | bc -l)
    echo "Roots are real and equal:"
    echo "Root = $root"

else
   
    real=$(echo "scale=2; -$b / (2*$a)" | bc -l)
    imag=$(echo "scale=2; sqrt(-$d) / (2*$a)" | bc -l)
    echo "Roots are complex:"
    echo "Root 1 = $real + ${imag}i"
    echo "Root 2 = $real - ${imag}i"
fi
