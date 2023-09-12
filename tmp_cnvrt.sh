#!/bin/bash

#Write a script that converts temperatures between Celsius and Fahrenheit.
#Prompt the user for the temperature value and the desired conversion.

function celsius_to_fah(){
  echo -n "Celsius (C) temperature: "
  read -r celsius_temp
  celsius_to_fah=$(((celsius_temp * 9/5) +32))
  echo "Fahrenheit (F): ${celsius_to_fah}"
}
function fah_to_celsi(){
  echo -n "Fahrenheit (F) temperature: "
  read -r fahrenheit_temp
  fah_to_celsi=$(( (fahrenheit_temp - 32) * 5/9 ))
  echo "Celsius (C): ${fah_to_celsi}"
}
function main() {
    echo "Welcome to Temperature Conversion!"
    echo "Press 1) Celsius to Fahrenheit"
    echo "Press 2) Fahrenheit to Celsius"
    read -r userinput
    if [ "$userinput" -eq 1 ]; then
        celsius_to_fah
    elif [ "$userinput" -eq 2 ]; then
        fah_to_celsi
    else
      echo "Please input a number between 1 and 2"
    fi
}
main
