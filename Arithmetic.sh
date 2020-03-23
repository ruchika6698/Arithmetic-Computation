#!/bin/bash -x

printf "----------------Arithmetic Computation and Sorting---------------\n"

#Initialise Dictionary
declare -A dictionary
dictionary=( ["Firstoperation"]=0 ["Secondoperation"]=0 ["Thirdoperation"]=0 ["Forthoperation"]=0 )

read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c

x=$(( $a + $b * $c ))
printf "First Operation: $x \n"
dictionary[Firstoperation]=$x

u=$((	$a * $b + $c ))
printf "Second Operation: $u \n"
dictionary[Secondoperation]=$u

z=$(( $c + $a / $b ))
printf "Third Operation: $z \n"
dictionary[Thirdoperation]=$z

y=$(( $a % $b + $c ))
printf "Fourth Operation: $y \n"
dictionary[Forthoperation]=$y

echo ${!dictionary[@]} ' : ' ${dictionary[@]}

#Initialise Array
declare -a Array
count=0
for var in ${dictionary[@]}
do
	Array[$count]=$var
	(( count++ ))
done
echo "Array: ${Array[@]}"

function Descending(){
	for((i=0; i < ${#Array[@]}; i++))
	do
		for((j=$i+1; j<${#Array[@]}; j++))
		do
			if [[ ${Array[i]} -lt ${Array[j]} ]]
  			then
				temp=${Array[i]}
				Array[i]=${Array[j]}
				Array[j]=$temp
			fi
		done
	done
	echo "Descending Order:${Array[@]}"
}

Descending
