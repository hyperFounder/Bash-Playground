#!/bin/bash

# Returns the sum of 2 numbers
function add_numbers(){
     # $1 refers to the first argument, $2 to the second, and so on.
    local num1=$1
    local num2=$2
    local sum=$((num1+num2))
    echo "The sum of $num1 and $num2 is: $sum"

}

# echo the numbers from 1 to 10
function forloop(){
    for((i=0; i<10; i++));do
    echo "$i"
    done
}

# Write a script that uses a while loop to count down from 10 to 1 and then prints "Blast off!"
function whileloop(){
    local num=10
    while [ $num -ge 0 ]
    do 
        echo "$num"
        if [[ $num -eq 0 ]]; then
            echo "Blast Off!"
        fi
        num=$((num-1))
    done
}

# Write a script that defines a function to calculate the square of a number.
function square(){
    echo "Please input the base"
    read base
    echo "Please input the power"
    read power
    result=$((base**power))
    echo "$result"
}

# Calculate factorial of a given number (while loop)
function calculate_factorial() {
    local num=$1
    local counter=$num
    local factorial=1

    if [[ $num -eq 0 || $num -eq 1 ]]; then
        echo "Factorial of $num: 1"
    else
        while [ $counter -gt 0 ]; do
            factorial=$((factorial * counter))
            counter=$((counter - 1))
        done
        echo "Factorial of $num: $factorial"
    fi
}

echo "Please input a number"
read user_input
calculate_factorial $user_input
