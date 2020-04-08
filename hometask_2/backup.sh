#!/bin/bash
file_new=`find $1 -mtime -1`
date_new=`date +%Y-%m-%d`
if [ ! -d $2/${date_new} ] 
then 
  mkdir $2/${date_new} 
  chmod 777 $2/${date_new} 
fi
for file in ${file_new}
do 
 cp -r $file ${date_new}
done
