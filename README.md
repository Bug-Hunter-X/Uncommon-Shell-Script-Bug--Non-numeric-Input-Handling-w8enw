# Uncommon Shell Script Bug: Non-numeric Input Handling

This repository demonstrates a subtle bug in a shell script designed to find the largest number in a text file.  The script fails when the input file contains non-numeric values or is empty. This is a common issue when dealing with user input or external data sources. The solution focuses on robust error handling and input validation to prevent unexpected behavior.

## Bug Description
The provided `bug.sh` script correctly identifies the largest number when the input file contains only positive integers. However, it fails in cases where:

1. The input file contains non-numeric values.
2. The input file is empty.
3. The input file contains negative numbers (it doesn't correctly handle negative numbers as the largest number)

## Solution
The `bugSolution.sh` script addresses these issues by adding error checking and input validation.  It explicitly checks if the input is a number and handles non-numeric inputs gracefully. Additionally it uses a more robust initial value for `largest_number` to handle negative numbers and an empty file.

## How to reproduce the bug
1. Create a file named `numbers.txt` with the contents:
   ```
   10
   20
   abc
   30
   ```
2. Run `bug.sh`.

You will see unexpected behavior.  Run `bugSolution.sh` to see the corrected behavior.