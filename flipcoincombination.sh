#! /bin/bash

#! /bin/bash


#tails=0
#heads=1
rann=$((RANDOM%2))

if [[ $rann -eq 0 ]]
then
	echo "Tails is the winner"

else
	echo "Heads is the winner"

fi

