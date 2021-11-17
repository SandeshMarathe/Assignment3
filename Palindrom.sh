#!/bin/bash
function checkPalindrom() 
{
	result=0
	q=$n

	while [ $n -gt 0 ]
	do
		remainder=$(($n%10))
		result=$(($result*10+$remainder))
		n=$(($n/10))
	done

	if [ $q -eq $result ]
	then
		echo " $q is Palindrom Number "
	else
		echo " $q is Not Palindrom Number "
	fi
}

read -p "enter the number : " n

check="$(checkPalindrom)"

echo $check

