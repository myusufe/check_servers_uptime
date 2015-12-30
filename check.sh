#!/bin/sh
#
# Muhammad Y Efendi
# myusufe@gmail.com
# v 1.0
#

filename="$1"
n=1
while read -r ip 
do
  echo $n". "$ip
  n=$[$n+1]

 command="uptime"

 timeout 5 ssh root@$ip $command < /dev/null

done < "$filename"
