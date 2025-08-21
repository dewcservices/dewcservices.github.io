#!/bin/bash

# Read all input from stdin
input=$(cat)

# Define invisible characters
ZWSP=$(printf '\u200B')   # for 0
ZWNJ=$(printf '\u200C')   # for 1

# Define output var
output=""

# Loop through the user input, one char at a time
for (( i=0; i<${#input}; i++ )); do
  char="${input:$i:1}"

  # Convert invisible characters to binary digits
  if [[ "$char" == $ZWSP ]]; then
    output+="0"
  elif [[ "$char" == $ZWNJ ]]; then
    output+="1"
  fi
done

# Print final output
echo "$output"
