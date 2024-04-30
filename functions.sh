#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
echo "script name $0"

validate(){
    if [ $? -ne 0 ]
    then 
        echo -e " $R $1 is not succesfull"
        exit 1
    else
        echo -e" $g $1  is sucess"
    fi
}

if [ $ID -ne 0 ]
then
    echo "not a root user"
    exit 1
else
    echo "root user"
fi

yum install mysql -y
validate "mysql installation"
yum install git -y
validate "git installation"
