#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "script name $0"

if [ $ID -ne 0 ]
then    
    echo -e "$R not a root user $N"
else
    echo -e "$G root user $N"
fi

echo "all the arguments passed: $@"
