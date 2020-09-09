#! /bin/bash -x
declare -A birthdic
declare -a arr
j=0
for (( i=1;i<=50;i++ ))
do
	ind="person $i"
	year=$((RANDOM%2+92))
	month=$((RANDOM%12+1))
	dob="$month-$year"
	arr[((j++))]=$dob
	birthdic[$ind]=$dob
done
echo JANUARY MONTH
for ele in ${birthdic[@]}
do
	echo $ele
done | awk -F- '{if($1=="1")print $0}'
echo FEBRUARY MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="2")print $0}'
echo MARCH MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="3")print $0}'
echo APRIL MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="4")print $0}'
echo MAY MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="5")print $0}'
echo JUNE MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="6")print $0}'
echo JULY MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="7")print $0}'
echo AUGUST MONTH
for ele in ${birthdic[@]}
do
        echo $ele
done | awk -F- '{if($1=="8")print $0}'
echo SEPTEMBER MONTH
for ele in ${arr[@]}
do
        echo $ele
done | awk -F- '{if($1=="9")print $0}'
echo OCTOBER MONTH
for ele in ${arr[@]}
do
        echo $ele
done | awk -F- '{if($1=="10")print $0}'
echo NOVEMBER MONTH
for ele in ${arr[@]}
do
        echo $ele
done | awk -F- '{if($1=="11")print $0}'
echo DECEMBER MONTH
for ele in ${arr[@]}
do
        echo $ele
done | awk -F- '{if($1=="12")print $0}'
