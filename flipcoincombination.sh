#! /bin/bash

echo "Number of times you want to flip a coin"
read n;
declare -A flip

#tails=0
#heads=1
j=0;
k=0;

singlet(){
for ((i=0;i<n;i++))
do


rann=$((RANDOM%2))

if [[ $rann -eq 0 ]]
then
	# echo "Tails is the winner"
 dig[i]=$(echo "H")
 j=$(($j+1))                                    #Number of occurance of tails
 
  
else
	# echo "Heads is the winner"
dig[i]=$(echo "T")
k=$(($k+1))
                                    #Number of occurance of heads
fi

done

echo "Occurance of head and tail  in a flip is in following order - "${dig[@]}
Hwins=$(($(($j*100))/$n)) 
Twins=$(($(($k*100))/$n))

echo "Number of times head occured" $j
echo "...................................."
echo "Number of times head occured" $k  
echo ".........................................."
echo "Percentage of head wins" $Hwins
echo "........................................"
echo "Percentage of Tail wins" $Twins
}
singlet