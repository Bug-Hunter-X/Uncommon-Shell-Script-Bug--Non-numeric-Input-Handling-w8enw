#!/bin/bash

# Improved script to find the largest number in a file, handling non-numeric values and empty files

input_file="numbers.txt"

largest_number=$(awk 'BEGIN {max=-inf} {if ($1+0 == $1 && $1 > max) max = $1} END {print max}' "$input_file")

if [[ -z "$largest_number" ]]; then
  echo "Input file is empty or contains only non-numeric values."
else
  echo "Largest number: $largest_number"
fi