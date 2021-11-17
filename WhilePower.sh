#!/bin/bash

read -p "enter your number- " number
i=1
while [ $i -le $number ]
do
        power=$(( 2**$i ))
        (( i++ ))
        echo $power
        if [ $power -ge 256 ]
        then
                break
        fi
done