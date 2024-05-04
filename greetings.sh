#!/bin/bash

Name=""
Wishes=""

Usage(){
    echo "Usage:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo "-n, specify the name"
    echo "-w, specify the wishes.(optinal). default is good morning"
    echo "-h, Display help and exit"
}

while getops "n:w:h" opt; do 
    case $opt in
        n)Name="$optarg";;
        w)Wishes="$optarg";;
        :)Usage; exit;;
    esac
done

if [ -z "$Name" ]; then
    echo "Error:  -n is mandarotry optins."
    Usage
    exit 1
fi

echp "Hello $Name. $Wishes. I have been learning shell script" 