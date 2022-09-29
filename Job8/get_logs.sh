#!/bin/bash

d=$(date +"%e-%m-%Y-%H-%M")
file="number_connection-$d"
last | grep "yann" | wc -l > $file

mkdir -p /home/yann/Scripts/BashHWork/BashHWork/Job8/Backup

tar -cf  /home/yann/Scripts/BashHWork/BashHWork/Job8/$file.tar $file

mv /home/yann/Scripts/BashHWork/BashHWork/Job8/$file.tar /home/yann/Scripts/BashHWork/BashHWork/Job8/Backup

rm $file






