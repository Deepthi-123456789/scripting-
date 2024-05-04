#!/bin/bash

Name=""
Wishes=""

Usage(){
    echo "Usage:: $(basename $0) -n <Name> -w <ishes>"
    echo "options::"
    echo "-n, specify the name"
    echo "-w, specify the wishes.(optinal). default is good morning"
    echo "-h, Display help and exit"
}

while getopts ":n:w:h" opt; do 
    case $opt in
        n)Name="$optarg";;
        w)Wishes="$optarg";;
        ?)echo "invalid options: -"$optarg" >&2; Usage; exit;;
        :)Usage; exit;;
        h)Usage; exit;;
    esac
done

if [ -z "$Name" ] || [ -z "$Wishes" ]; then
    echo "Error: -n is mandarotry optins."
    Usage
    exit 1
fi
echo "Hello $Name. $Wishes. I have been learning shell script." 