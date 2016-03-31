#!/bin/bash
for (( ; ;))
do
echo -e "\033[36mPlease enter a munber n (n>0): \c\033[0m"
read n
if [ $n -le 0 ]
then
echo "This is a wrong number"
else
m=$n*2-1
for ((i=1;$i<= $n-1;i++))
do
for ((j=1;$j<=$m;j++))
do
	if [ $j == $((n-$i+1)) ] || [ $j == $((n+$i-1 )) ]
	then
		echo  -e "*\c"
	else
		echo -e " \c"
	fi

done
echo
done
for ((i=1;$i<=$m;i++))
do 
	echo -e "*\c"
done
echo -e "\n"
fi
done
