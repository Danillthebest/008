#!/bin/bash  
for ips in $@  
do 
echo $ips 
nc -v -z -w 1 $ips 80
nc -v -z -w 1 $ips 443
done