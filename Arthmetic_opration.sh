#!/bin/bash  

echo "Welcome Arithmetic Computation And Sorting"

echo "To Take Three Inputs"

read -p "Enter first number  - " a
read -p "Enter first number  - " b
read -p "Enter first number  - " c

echo "To Compute Arithmetic Operation"

result1=$((a+b*c))
echo "$result1"

result2=$((a*b+c))
echo "$result2"

result3=$((c+a/b))
echo "$result3"

result4=$((a%b+c))
echo "$result4"

echo "Store the results in a Dictionary for every Computation"

declare -i arithmetic

arithmetic[result1]=$result1
arithmetic[result2]=$result2
arithmetic[result3]=$result3
arithmetic[result4]=$result4

echo "Results from all computations - "  ${arithmetic[@]}
