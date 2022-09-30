#!/bin/bash

a=$(cat /home/yann/Scripts/BashHWork/BashHWork/Job9/md5sum_accessrights | cut -d " " -f 1)  #put the original md5 checksum in "a" (red from a file generated before"
#echo "$a"
b=$(md5sum /home/yann/Scripts/BashHWork/BashHWork/Job9/Shell_Userlist.csv | cut -d " " -f 1)  #put the actual md5 checksum in "b"
#echo "$b"
if [[ "$a" != "$b" ]]  										# If they are not equal
then
	echo "$b" > /home/yann/Scripts/BashHWork/BashHWork/Job9/md5sum_accessrights 		# Write the new checksum in text file
	exit 0											# exit script returning 0 (success)
else
	exit 1											# else exit script returning 1.
fi											#This way, I can run this script in crontab with an
											# "&&" operator before running accesright.sh (and 
											# create new users) If checksum have changed


