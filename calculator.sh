#!/bin/bash
while true
do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read -p "Enter a number: " a
    read -p "Enter another number: " b
    read -p "Enter choice: " choice
    case $choice in
    1)
         sum=$((a+b))
         echo "Addition is: $sum"
         ;;
    2)
         if [ $a -gt $b ]; then
             sub=$((a-b))
             echo "Subtraction is: $sub"
         else
             subb=$((b-a))
             echo "Subtraction is: $subb"
         fi
         ;;
     3)
         mul=$((a*b))
         echo "Multiplication is: $mul"
         ;;
    4)
         div=$((a/b))
         echo "Division is: $div"
         ;;
    *)
         echo "Wrong Try again!"
         break
         ;;
    esac
done

    
