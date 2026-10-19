
#!/bin/bash

# Simple Interest Calculator
# IBM Git and GitHub Final Project

echo "=================================="
echo "     Simple Interest Calculator"
echo "=================================="

# Read user inputs
read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (%): " rate
read -r -p "Enter the time period (years): " time

# Validate inputs
number_pattern='^[0-9]+([.][0-9]+)?$'

if ! [[ $principal =~ $number_pattern &&
        $rate =~ $number_pattern &&
        $time =~ $number_pattern ]]; then
    echo "Error: Please enter valid non-negative numbers."
    exit 1
fi

# Calculate simple interest
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

# Display result
echo "----------------------------------"
echo "Principal Amount: $principal"
echo "Annual Interest Rate: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "----------------------------------"
