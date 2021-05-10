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
