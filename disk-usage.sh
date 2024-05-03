#!/bin/bash

Disk_usage=$(df -hT |grep -vE 'tmp|file')
Disk_threshold=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{prink $6}' |cut -d % -f1)
    partion=$(echo $line | awk '{prink $6}')
    if [ $usage -ge $Disk_threshold ]
    then
        message+="high disk usage on $partion : $usage\n"
    fi
done <<< $Disk_usage
echo -e "message: $meaasage"
