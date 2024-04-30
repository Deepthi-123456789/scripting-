#!/bin/bash

id=$(id)
if[ $id -ne 0 ]
then
    echo "not a root user"
else
    echo "root user"
fi