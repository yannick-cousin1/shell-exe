#!/bin/bash



if [ $2 = "+" ]
then
	r=$(($1+$3))
	echo $r
elif [ $2 = "-" ]
then
	r=$(($1-$3))
	echo $r
elif [ $2 = "x" ] 
then
	r=$(($1*$3))
	echo $r
elif [ $2 = "/" ]
then
	r=$(($1/$3))
	echo $r
else
	echo "wrong operator, try again"
fi
