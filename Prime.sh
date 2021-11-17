#!/bin/bash

read -p " Enter the Number to check it is prime or not : " n 

count=1

for (( i=1;i<=$n;i++ ))
do

	if [ $(($n%$i)) -eq 0 ]
	then
		temp=$((count++))
	fi
done

	if [ $temp -eq 2 ]
	then
		echo " $n is Prime Number "
	else
		echo " $n is not Prime Number "
	fi
