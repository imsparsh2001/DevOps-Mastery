#!/bin/bash 

<<task

Task: Create and Manage Files & Folders Using Shell Script
Requirements:

Take user input for a folder name and create that folder.
Take user input for a file name and create that file inside the folder.
Write some text into the file using shell script.
Display the contents of the file after writing.

task

echo "*********Shell commands **********"
mkdir shellfolder
cd shellfolder
read fileinput
touch $fileinput.txt
echo "This is the file created using bash scripting and I have entered some text using bash only in it." > "$fileinput.txt"
echo "This file is created at $(date)" >> "$fileinput.txt"

echo "File '$fileinput.txt' has been created with the following content:"
cat "$fileinput.txt"
