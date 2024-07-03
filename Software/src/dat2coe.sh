#!/bin/bash

echo -e "memory_initialization_radix=16;\nmemory_initialization_vector=" > code_and_data.coe

input="./code_and_data.dat"
while IFS= read -r line
do
  echo "$line," >> code_and_data.coe
done < "$input"
