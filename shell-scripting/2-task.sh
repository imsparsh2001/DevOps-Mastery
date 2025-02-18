#!/bin/bash


<<Task

🛠 Hands-on Exercises:
✅ List all files in a directory and count them
✅ Change file permissions and ownership using chmod and chown

Task


echo "Listing all files in the current directory:"
ls -A
file_count=$(ls -A | wc -l)
echo "Total number of files: $file_count"

echo "--------------------------------------------"

# Change file permissions and ownership

file_name="myfile.txt"


touch $file_name

echo "Changing permissions for $file_name..."
chmod 744 $file_name

echo "Updated file permissions:"
ls -l $file_name

echo "--------------------------------------------"

