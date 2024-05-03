#!/bin/bash

source_dir="/tmp/scripting-logs"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"




if [ ! -d $source_dir ]
then
    echo -e "source dir does not exists"
fi


while IFS=":" read -r username password user-id group-id user-fullname home-dir shell-path
do 
    echo "username =$username"
    echo "password =$password"
    echo "user_id =$user_id"
done < $file
