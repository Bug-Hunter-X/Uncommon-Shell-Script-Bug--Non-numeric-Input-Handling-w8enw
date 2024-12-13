#!/bin/bash

# This script attempts to find the largest number in a file, but it contains a subtle bug.

input_file="numbers.txt"

largest_number=0

while IFS= read -r number; do
  if (( number > largest_number )); then
    largest_number=$number
  fi
echo "Current largest: $largest_number"
done < "$input_file"

echo "Largest number: $largest_number"