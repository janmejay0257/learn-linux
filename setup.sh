#!/bin/bash

while true
do
    read -p "Enter first number" number1
    read -p "Enter second number" number2
    sum=$((number1 + number2))
    echo "The sum of $number1 and $number2 is: $sum"
read -p "Do you want to continue? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        break
    fi
done