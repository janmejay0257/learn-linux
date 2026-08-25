#!/bin/bash
while true
do    read -p "Need to select option [1:6] for operation: " option
    echo "1. Addition(+): "
    echo "2. Subtraction(-): "
    echo "3. Multiplication(*): "
    echo "4. Division(/): "
    echo "5. Modulus(%): "
    echo "6. Exponentiation(**): "
    read -p "Enter first number: " number1
    read -p "Enter second number: " number2
    case $option in
        1)
            result=$((number1 + number2))
            echo "The sum of $number1 and $number2 is: $result"
            ;;
        2)
            result=$((number1 - number2))
            echo "The difference of $number1 and $number2 is: $result"
            ;;
        3)
            result=$((number1 * number2))
            echo "The product of $number1 and $number2 is: $result"
            ;;
        4)
            if [ "$number2" -ne 0 ]; then
                result=$((number1 / number2))
                echo "The quotient of $number1 and $number2 is: $result"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        5)
            if [ "$number2" -ne 0 ]; then
                result=$((number1 % number2))
                echo "The modulus of $number1 and $number2 is: $result"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        6)
            result=$((number1 ** number2))
            echo "The exponentiation of $number1 to the power of $number2 is: $result"
            ;;
        *)
            echo "Invalid operation. Please enter a valid operation."
            ;;
    esac
    read -p "Do you want to continue? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        break
    fi
done
echo "Thank you for using the calculator!"
