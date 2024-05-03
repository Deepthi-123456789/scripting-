#!/bin/bash

Disk_usage =$(df -hT |grep -vE 'tmp/file')
Disk_threshold=1
message=""

hile IFS= read line
do
    usage =$(echo $line | awk '{prink $6}' |cut -d % -f1)
    partion =$(echo $line | awk '{prink $6}')
    if [ $usage -gt $Disk_threshold ]
    then
        message+="high disk usage"
    fi
done <<< $Disk_usage
