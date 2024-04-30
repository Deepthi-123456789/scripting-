#!/bin/bash

ID=$(id -u)
validate(){
    if [ $? -ne 0 ]
    then 
        echo "installation is not succesfull"
        exit 1
    else
        echo "installing  is sucess"
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
