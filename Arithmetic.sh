#!/bin/bash -x

printf "----------------Arithmetic Computation and Sorting---------------\n"

read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c

x=$(( $a + $b * $c ))
printf "First Operation: $x \n"

u=$((	$a * $b + $c ))
printf "Second Operation: $u \n"

z=$(( $c + $a / $b ))
printf "Third Operation: $z \n"

y=$(( $a % $b + $c ))
printf "Fourth Operation: $y \n"
