#! /bin/bash
read -p "How many times you want to repeat the die roll" roll
declare -A Dicedictionary
one=0
two=0
three=0
four=0
five=0
six=0
for ((i=1;i<=roll;i++))
do
	dice=$((RANDOM%6+1))
	if (($dice==1))
	then
		((one++))
	elif (($dice==2))
	then
		((two++))
	elif (($dice==3))
	then
		((three++))
	elif (($dice==4))
	then
		((four++))
	elif (($dice==5))
	then
		((five++))
	elif (($dice==6))
	then
		((six++))
	fi
	if [ $one -eq 10 -o $two -eq 10 -o $three -eq 10 -o $four -eq 10 -o $five -eq 10 -o $six -eq 10 ]
	then
		break
	fi
done
Dicedictionary=([1]=$one [2]=$two [3]=$three [4]=$four [5]=$five [6]=$six)
echo ${!Dicedictionary[@]} ${Dicedictionary[@]}
max=0
maxI=0
minI=0
min=0
for val in ${!Dicedictionary[@]}
do
	echo "$val : ${Dicedictionary[$val]}"
	if [ ${Dicedictionary[$val]} -eq 10 -o ${Dicedictionary[$val]} -gt $maxI ]
	then
		maxI=${Dicedictionary[$val]}
		max=$val
	elif [[ ($minI -eq 0) || (${Dicedictionary[$val]} -lt $minI) ]]
	then
		minI=${Dicedictionary[$val]}
		min=$val
	fi
done
echo "Max is $max : ${Dicedictionary[$max]}"
echo "Min is $min : ${Dicedictionary[$min]}"
