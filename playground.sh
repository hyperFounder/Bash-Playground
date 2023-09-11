#! bin/bash

echo -n "What is your age?"
read age

if [ $age -lt 18 ]; then
    echo "$age"
    echo "You are under 18..."
else
    echo "$age"
    echo "You are old enough to drink!"
fi
