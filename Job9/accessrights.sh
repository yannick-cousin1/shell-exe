#!/bin/bash

sed 1,1d /home/yann/Scripts/BashHWork/BashHWork/Job9/Shell_Userlist.csv | cat | while read line

do

	a1=$(echo "$line" | cut -d "," -f 1)
	a2=$(echo "$line" | cut -d "," -f 2)
	a3=$(echo "$line" | cut -d "," -f 3)
	a4=$(echo "$line" | cut -d "," -f 4)
	a5=$(echo "$line" | cut -d "," -f 5)
#	echo $a5

	if [ "${a5%?}" = "User" ]
	then
		useradd -u "$a1" -m "${a2// /}${a3// /}"
		echo "${a2// /}${a3// /}:${a4// /}" | chpasswd

	elif [ "${a5%?}" = "Admin" ] 
	then
		useradd -u "$a1" -m "${a2// /}${a3// /}"
		echo "${a2// /}${a3// /}:${a4// /}" | chpasswd
		adduser "${a2// /}${a3// /}" sudo
	else
		echo "incorrect line"
	fi
done

