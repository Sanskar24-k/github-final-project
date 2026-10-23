#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Additional Authors: Sanskar24-k

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r/100

printf 'Enter the principal: '
read -r p
printf 'Enter rate of interest per year: '
read -r r
printf 'Enter time period in years: '
read -r t

s=$(awk -v principal="$p" -v rate="$r" -v time="$t" \
    'BEGIN { printf "%.2f", principal * rate * time / 100 }')
printf 'The simple interest is: %s\n' "$s"
