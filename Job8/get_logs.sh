#!/bin/bash

d=$(date +"%e-%m-%Y-%H-%M")     # Set correct date format
file="number_connection-$d"     # Set correct file name with date format
last | grep "yann" | wc -l > $file    # Write number of log (by user yann) in file

mkdir -p /home/yann/Scripts/BashHWork/BashHWork/Job8/Backup  #check if "Backup" dir exists and create it if it doesn't

tar -cf  /home/yann/Scripts/BashHWork/BashHWork/Job8/$file.tar $file    # Archive file

mv /home/yann/Scripts/BashHWork/BashHWork/Job8/$file.tar /home/yann/Scripts/BashHWork/BashHWork/Job8/Backup  #move archive to backup

rm $file  # remove original file






