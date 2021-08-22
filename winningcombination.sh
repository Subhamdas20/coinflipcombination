#! /bin/bash
sin=0;
dob=0;
tri=0;


read -p "Please enter the range - " abc;

# percentage(){

# 	echo "% of singlet = $(($(($sin*100))/$abc))"
# 	echo "% of doublet = $(($(($dob*100))/$abc))"
# 	echo "% of triplet = $(($(($tri*100))/$abc))"

# }


sort(){
	for (( i = 0; i < abc; i++ ));
	 do
		random=$((RANDOM%14))
		if [[ $random == 0 ]];
		 then
			arr[$i]=H;
			one[$sin]=H;
			sin=$(($sin + 1));
			# j=$(($j+1))

		elif [[ $random == 1 ]];
		 then
			arr[$i]=T;
			one[$sin]=T;
			sin=$(($sin + 1));
			# k=$(($K+1))
		elif [[ $random == 2 ]];
		 then
			arr[$i]=HH;
			two[$dob]=HH;
			dob=$(($dob + 1));
			l=$(($l+1))
		elif [[ $random == 3 ]];
		 then
			arr[$i]=HT;
			two[$dob]=HT;
			dob=$(($dob + 1));
			# m=$(($m=1))
		elif [[ $random == 4 ]];
		 then
			arr[$i]=TH;
			two[$dob]=TH;
			dob=$(($dob + 1));
			# n=$(($n+1))
		elif [[ $random == 5 ]];
		 then
			arr[$i]=TT;
			two[$dob]=TT;
			dob=$(($dob + 1));
			# p=$(($p+1))
		elif [[ $random == 6 ]];
		 then
			arr[$i]=TTT;
			thr[$tri]=TTT;
			tri=$(($tri + 1));

		elif [[ $random == 7 ]];
		 then
			arr[$i]=TTH;
			thr[$tri]=TTH;
			tri=$(($tri + 1));
		elif [[ $random == 8 ]];
		 then
			arr[$i]=THH;
			thr[$tri]=THH;
			tri=$(($tri + 1));
		elif [[ $random == 9 ]];
		 then
			arr[$i]=HHH;
			thr[$tri]=HHH;
			tri=$(($tri + 1));
		elif [[ $random == 10 ]];
		 then
			arr[$i]=THT;
			thr[$tri]=THT;
			tri=$(($tri + 1));
		elif [[ $random == 11 ]];
		 then
			arr[$i]=HTH;
			thr[$tri]=HTH;
			tri=$(($tri + 1));

		elif [[ $random == 12 ]];
		 then
			arr[$i]=HTT;
			thr[$tri]=HTT;
			tri=$(($tri + 1));
		else  
			arr[$i]=HHT;
			thr[$tri]=HHT;
			tri=$(($tri + 1));


		fi
		done	


	echo ${arr[@]}
	echo "================================================================="
	echo ${one[@]}
	echo "================================================================="
	echo ${two[@]}
	echo "================================================================="
	echo ${thr[@]}
	echo "================================================================="
# 	echo "singlet values = $sin; doublet values = $dob; triplet values = $tri;"
# 	echo "================================================================="
# 	percentage
}
sort

if [[ ${#one[@]} -gt ${#two[@]} ]] && [[ ${#one[@]} -gt ${#thr[@]} ]]
	then
		echo "winning combination is = " ${one[@]}
elif  [[ ${#two[@]} -gt ${#one[@]} ]] && [[ ${#two[@]} -gt ${#thr[@]} ]]
	then
		echo "winning combination is = " ${one[@]}
else
	echo "winning combination is = " ${thr[@]}
fi
