#!/bin/bash

number1=$1
number2=$2
echo "$number1: hi, $number2"
echo "$number2: i am fine $number1"
echo "$number1: How are u $number2"
echo "$number2: fine"

echo "exit status : $?"
echo "name: $0"
echo "no.of all arguments: $@"
echo "how many arg passed: $#"