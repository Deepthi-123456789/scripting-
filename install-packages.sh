#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "script name $0"

if [ $ID -ne 0 ]
then    
    echo " $R not a root user $N"
else
    echo " $G root user $N"
fi

echo "all the arguments passed: $@"
