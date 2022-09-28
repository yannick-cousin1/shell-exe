#!/bin/bash

d=$(date +"%e-%m-%Y-%H-%M")
file="number_connection-$d"
last | grep "yann" | wc -l > $file

mkdir -p /home/yann/Scripts/BashHWork/Job8/Backup

tar -cf $file.tar /home/yann/Scripts/BashHWork/Job8/Backup

mv $file $file.tar /home/yann/Scripts/BashHWork/Job8/Backup







