#!/bin/bash

<< Task

Takes user input and prints a greeting message
Checks if a file exists and prints its contents
Categorizes input as a number, string, or empty

Task

echo "Taking input from the user"
read -p "enter your name: " username
echo "$username welcome to the world of shell scripting"

read -p "Enter the filename you want to search: " filename
if [[ -f "$filename" ]];
then
echo "$filename exists"
else
echo "$filename doesnot exists"
fi
echo "************************************"

read -p "Enter something: " user_input

if [[ -z "$user_input" ]]; then
    echo "You entered an empty input."
elif [[ "$user_input" =~ ^[0-9]+$ ]]; then
    echo "You entered a number."
else
    echo "You entered a string."
fi
