#!/bin/bash 

echo "Enter the range between which you want find out the prime numbers."

read -p "Enter 1st number : " n1

read -p "Enter 2nd number : " n2

for ((n=$n1; n<=$n2; n++))
do
	count=1
	for ((a=1; a<=$n; a++))
	do
		if [ $(($n%$a)) -eq 0 ]
		then
			c=$(( count ++ ))
		fi
	done

	if [ $c -eq 2 ]
	then
		echo "$n "
	fi
done
