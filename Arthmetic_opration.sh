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
