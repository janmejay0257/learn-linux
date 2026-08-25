#!/bin/bash

read -p "Enter file name: " file
read -p "Enter destination folder: " folder

if [ -f "$file" ] && [ -d "$folder" ]; then
    mv "$file" "$folder"
    echo "File moved successfully"
else
    echo "File or folder does not exist"
fi

