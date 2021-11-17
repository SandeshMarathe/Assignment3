#! /bin/bash

echo "select the option for conversion of temp"

echo "1 for fahrenheit to celsius :"

echo "2 for celsius to fahrenheit :"

read -p "select otion 1 or 2 : " option

function cenToFar()
{
	degC=$1
	a=9
	b=5
	#result1=$(($degC*(9/5))+32)
	#echo $result1

	fact1=$(echo $a $b| awk '{print $1/$2}')

	x=$(echo $fact1 $degC | awk '{print $1*$2}')
	echo degF=$(( $x + 32 ))
}

function farToCen()
{
	degF=$1
	a=9
	b=5

	fact2=$(echo $a $b | awk '{print $2/$1}')

	y=$(( $degF - 32 ))
	echo degC=$(echo $y $fact2 | awk '{print $1*$2}')
}

case $option in
		1)
			read -p " please enter the value : " degC

			result="$( farToCen $degC )"
			echo $result ;;
		2)

			read -p " please enter the value between :" degF

			result="$( cenToFar $degF )"
			echo $result ;;
		*)
			echo "Value must 1 or 2" ;;
esac
