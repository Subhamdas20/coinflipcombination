#! /bin/bash

echo "Number of times you want to flip a coin"
read n;
declare -A flip

#tails=0
#heads=1
j=0;
k=0;
l=0;
m=0;
p=0;
q=0;


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
# singlet
	
doublet(){

for ((i=0;i<n;i++))
	do


		rann=$((RANDOM%2))
		rann2=$((RANDOM%2))

	if [[ $rann -eq 0 ]] && [[ $rann2 -eq 0 ]]
		then
			dig2[i]=$(echo "HH")
			l=$(($l+1))
	elif [[ $rann -eq 1 ]] && [[ $rann2 -eq 1 ]]; 
		then
			dig2[i]=$(echo "TT")
			m=$(($m+1))
	

	elif [[ $rann -eq 0 ]] && [[ $rann2 -eq 1 ]]; 
		then
			dig2[i]=$(echo "TH")
			q=$(($q+1))
	
	elif [[ $rann -eq 1 ]] && [[ $rann2 -eq 0 ]]
		then
		dig2[i]=$(echo "HT")
		p=$(($p+1))
	else
		l=$l;
		m=$m
		q=$q
		p=$p
	fi	
done	
echo "Doublet combinations are " ${dig2[@]}
HHwins=$(($(($l*100))/$n)) 
TTwins=$(($(($m*100))/$n)) 
THwins=$(($(($q*100))/$n)) 
HTwins=$(($(($p*100))/$n)) 

echo "HH win % is ="$HHwins
echo "TT win % is ="$TTwins
echo "TH win % is =" $THwins
echo "HT win % is ="$HTwins


}
# doublet

triplet(){

for ((i=0;i<n;i++))
	do


		rann=$((RANDOM%2))
		rann2=$((RANDOM%2))
		rann3=$((RANDOM%2))

	if [[ $rann -eq 1 ]] && [[ $rann2 -eq 1 ]] && [[ $rann3 -eq 1 ]]
		then
			dig3[i]=$(echo "HHH")
			l=$(($l+1))
	elif [[ $rann -eq 0 ]] && [[ $rann2 -eq 0 ]] && [[ $rann3 -eq 0 ]]; 
		then
			dig3[i]=$(echo "TTT")
			m=$(($m+1))
	

	elif [[ $rann -eq 0 ]] && [[ $rann2 -eq 0 ]] && [[ $rann3 -eq 1 ]]; 
		then
			dig3[i]=$(echo "TTH")
			q=$(($q+1))
	
	elif [[ $rann -eq 0 ]] && [[ $rann2 -eq 1 ]] && [[ $rann3 -eq 1 ]]
		then
		dig3[i]=$(echo "THH")
		p=$(($p+1))
	elif [[ $rann -eq 1 ]] && [[ $rann2 -eq 0 ]] && [[ $rann3 -eq 0 ]]
		then
		dig3[i]=$(echo "HTT")
		r=$(($r+1))
	elif [[ $rann -eq 1 ]] && [[ $rann2 -eq 1 ]] && [[ $rann3 -eq 0 ]]
		then
		dig3[i]=$(echo "HHT")
		s=$(($s+1))
	elif [[ $rann -eq 0 ]] && [[ $rann2 -eq 1 ]] && [[ $rann3 -eq 0 ]]
		then
		dig3[i]=$(echo "THT")
		t=$(($t+1))
	else 
		dig3[i]=$(echo "HTH")
		u=$(($u+1))
	fi
done	
echo "Triplet combinations are " ${dig3[@]}
echo "==========================================="
echo "HHH win % is = $(($(($l*100))/$n)) "
echo "==========================================="
echo "TTT win % is = $(($(($m*100))/$n)) "
echo "==========================================="
echo "TTH win % is = $(($(($q*100))/$n)) " 
echo "==========================================="
echo "THH win % is = $(($(($p*100))/$n)) "
echo "==========================================="
echo "HTT win % is = $(($(($r*100))/$n)) "
echo "==========================================="
echo "HHT win % is = $(($(($s*100))/$n)) "
echo "==========================================="
echo "THT win % is = $(($(($t*100))/$n)) "
echo "==========================================="
echo "HTH win % is = $(($(($u*100))/$n)) "
echo "==========================================="


}
triplet

flip[a]=${dig[@]}
flip[b]=${dig2[@]}
flip[c]=${dig3[@]}

# echo ${flip[@]}