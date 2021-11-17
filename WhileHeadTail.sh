#! /bin/bash 

countH=1
countT=1
Head=0
Tail=1
win=11

while [ $countH -le $win ] && [ $countT -le $win ]
do
	toss=$((RANDOM%2))
	
	case $toss in
		$Head)
			countH=$(( $countH + 1 )) ;;
		$Tail)
			countT=$(( $countT + 1 )) ;;
	esac
	
	if [ $countH -eq 11 ]
	then
		echo "Head is win"
		break
	elif [ $countT -eq 11 ]
	then
		echo "Tail is win"
		break
	fi
done
