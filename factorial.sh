#!/bin/bash

read -p "Enter the Number to check Factorial or Not" n

fact=1

for (( i=1;i<=n;i++ ))
do
	fact=$(($fact*i))
done

echo " Factorial of $n is = $fact "
