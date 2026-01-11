#!/bin/bash
read -p "Enter a number: " a
read -p "Enter another number: " b
add() {
    sum=$((a+b))
    echo "Addition is: $sum"
}
sub() {
    if [ "$a" -ge "$b" ]; then
        diff=$((a-b))
        echo "Subtraction is: $diff"
    else
        diff=$((b-a))
        echo "Subtraction is: $diff"
    fi
}
mul() {
    mul=$((a*b))
    echo "Multiplication is: $mul"
}
div() {
    if [ "$b" -eq 0 ]; then
        echo "Division by zero not possible"
    fi
    div=$((a/b))
    echo "Division is: $div"
}
while true
do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read - "Enter your choice: " choice
    case $choice in
    1)
        add
        ;;
    2)
        sub
        ;;
    3)
        mul
        ;;
    4)
        div
        ;;
    5)
        echo "Bye"
        break
        ;;
    *)
        echo "Invalid option"
        ;;
    esac
done

