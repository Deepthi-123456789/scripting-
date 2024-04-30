#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "not a root user"
else
    echo "root user"
fi