#!/bin/bash 

function checkPalindrom() 
{
	result=0
	q=$n
	while [ $q -gt 0 ]
	do
		remainder=$(($q%10))
		result=$(( $result * 10 + $remainder))
		q=$(($q/10))
	done

	case $n in
		$result)
			echo "$n is palindrom number" ;;
		*)
			echo "$n is not palindrom number"

		result1="$(funcPrime1 $result)"

		echo $result1 ;;
	esac
}

function funcPrime()
{
	n=$1
	count=1
	for ((a=1; a<=$n; a++))
	do
		mod=$(( $n % $a ))
		if [ $mod == 0 ]
		then
			c=$(( count ++ ))
		fi
	done

	if [ $c == 2 ]
	then
		echo "$n is prime Number."
		check="$(checkPalindrom $n)"
		echo $check
	else
		echo "$n is not prime Number."
		check="$(checkPalindrom $n)"
		echo $check
	fi
}

read -p "enter number : " n

result="$(funcPrime $n)"

echo $result
