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

echo "Read The Values From The Dictionary Into The Array"

for((index=0; index<=${#arithmetic[@]}; index++))
do
	array[index]=${arithmetic[result$((index+1))]}
done

echo "${array[@]}"

echo "Sort the Computation Results In Descending Order"

for(( i=0; i<${#array[@]}; i++ ))
do
	for(( j=0; j<${#array[@]}-1; j++ ))
	do
		if [[ ${array[j+1]} -gt ${array[j]} ]]
		then
			temp=${array[j]}
			array[j]=${array[j+1]}
			array[j+1]=$temp
		fi
	done
done

echo "Sorted Array -" ${array[@]}

echo "Sort The Computed Results In Ascending Order"

for(( i=0; i<${#array[@]}; i++ ))
do
        for(( j=0; j<${#array[@]}-1; j++ ))
        do
                if [[ ${array[j+1]} -lt ${array[j]} ]]
                then
                        temp=${array[j]}
                        array[j]=${array[j+1]}
                        array[j+1]=$temp
                fi
        done
done

echo "Sorted Array -" ${array[@]}
