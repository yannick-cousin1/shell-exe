#!/bin/bash

#This was my first try, but it doesn't work . Variables "a$i" get good values but then they are reset to "0", I can't  understand why

sed 1,1d /home/yann/Scripts/BashHWork/BashHWork/Job9/Shell_Userlist.csv | cat | while read line
do
	for (( i=1 ; i<6 ; i++ ))
	do
		((a${i}=$(echo ${line%?} | cut -d "," -f $i )))
		echo "${a5}"
	done

	if [ "$a5" = "User" ]
	then
		useradd -u $a1 "$a2.$a3"
		echo -e "$a4\n$a4\n" | passwd "$a2.$a3"
	elif [ "$a5" = "Admin" ]
	then
		useradd -u $a1 "$a2.$a3"
		echo -e "$a4\n$a4\n" | passwd "$a2.$a3"
		echo "$a2.$a3 ALL=(ALL:ALL) ALL" >> /etc/sudoers
	else
		echo "erreur"
	fi
done
