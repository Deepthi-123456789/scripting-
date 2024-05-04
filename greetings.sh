#!/bin/bash

Name=""
Wishes=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo "-n, specify the name"
    echo "-w, specify the wishes.(optinal). default is good morning"
    echo "-h, Display help and exit"
}

while getopts ":n:w:h" opt; do 
    case $opt in
        n)Name="$optarg";;
        w)Wishes="$optarg";;
        ?)echo "invalid options: -"$optarg"" >&2; USAGE; exit;;
        :)USAGE; exit;;
        h)USAGE; exit;;
    esac
done

if [ -z "$Name" ]; then
    echo "Error: -n is mandarotry optins."
    USAGE
    exit 1
fi

echo "Hello $Name. $Wishes. I have been learning shell script." 