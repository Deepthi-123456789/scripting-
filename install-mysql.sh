#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "not a root user"
    exit 1
else
    echo "root user"
fi
yum install mysql -y
if [ $? -nq 0 ]
then 
    echo "installation is not succesfull"
    exit 1
else
    echo "installing mysql is sucess"
fi