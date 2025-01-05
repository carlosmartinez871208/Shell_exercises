#!/bin/bash

# Working with arrays.

# Array definition.
myArray=(data1 data2 data3)

# How to read.
# ${myArray[index]}
echo ${myArray[0]} ${myArray[1]} ${myArray[2]}

# Another methods to display all array elements.
echo ${myArray[*]}
echo ${myArray[@]}

# Display number of array elements.
echo ${#myArray[@]}

#Show all index.
echo ${!myArray[@]}

#Delete one array member.
unset myArray[1]

echo "After deleting"
echo ${myArray[*]}
echo ${#myArray[@]}
echo ${!myArray[@]}